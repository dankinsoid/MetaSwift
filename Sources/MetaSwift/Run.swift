//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax
import SwiftSemantics

public struct CodeGenerator {
	public var sources: URL?
	public var output: URL
	public var monitor: URL?
	public var generators: [FileGenerator]

	public init(sources: URL? = nil, output: URL, monitor: URL?) {
		self.sources = sources
		self.monitor = monitor
		self.output = output
		self.generators = []
	}

	public init(sources: URL? = nil, output: URL, monitorFolder: String? = nil, file: String = #file) {
		self.init(
				sources: sources,
				output: output,
				monitor: monitorFolder.map {
					URL(
							fileURLWithPath: (file.components(separatedBy: "/").dropLast() + [$0])
									.joined(separator: "/")
					)
				}
		)
	}

	public mutating func add(output: URL, @SyntaxBuilder generator: @escaping (DeclarationCollector) -> Syntax) {
		generators.append(FileGenerator(url: output, generator: generator))
	}

	public mutating func add(output: URL, @SyntaxBuilder generator: @escaping () -> Syntax) {
		add(output: output) { _ in generator() }
	}

	public mutating func add(name: String, @SyntaxBuilder generator: @escaping (DeclarationCollector) -> Syntax) {
		add(output: output.appendingPathComponent(name + ".swift"), generator: generator)
	}

	public mutating func add(name: String, @SyntaxBuilder generator: @escaping () -> Syntax) {
		add(name: name) { _ in generator() }
	}

	public func generate() throws {
		let collector = DeclarationCollector()
		if let sources = sources {
			for url in try allSwiftFiles(at: sources) {
				do {
					let syntax = try SyntaxParser.parse(url)
					collector.walk(syntax)
				} catch {
					print("Parsing error for \(url): \(error)")
				}
			}
		}
		for generator in generators {
			let code = generator.generator(collector)
			var text = ""
			code.write(to: &text)
			if FileManager.default.fileExists(atPath: generator.url.path) {
				try FileManager.default.removeItem(at: generator.url)
			} else {
				try FileManager.default.createDirectory(at: generator.url.deletingLastPathComponent(), withIntermediateDirectories: true)
			}
			guard FileManager.default.createFile(atPath: generator.url.path, contents: Data(text.utf8)) else {
				throw Failure.cannotWriteFile
			}
		}
	}

	public func monitor() async throws {
		guard let monitor = monitor else {
			throw Failure.noURLForMonitoring
		}
		var monitors: [FileMonitor] = []
		for url in try allSwiftFiles(at: monitor) {
			let fileMonitor = try FileMonitor(url: url)
			monitors.append(fileMonitor)
			fileMonitor.monitor { _ in
				try? self.generate()
			}
		}
		while true {
			guard !Task.isCancelled else {
				break
			}
		}
	}

	private func allSwiftFiles(at url: URL) throws -> [URL] {
		guard let enumerator = FileManager.default.enumerator(at: url, includingPropertiesForKeys: [.isRegularFileKey], options: [.skipsHiddenFiles, .skipsPackageDescendants]) else {
			throw Failure.cannotCreateEnumerator
		}
		var files = [URL]()
		for case let fileURL as URL in enumerator {
			let fileAttributes = try fileURL.resourceValues(forKeys: [.isRegularFileKey])
			if fileAttributes.isRegularFile == true, fileURL.pathExtension == "swift" {
				files.append(fileURL)
			}
		}
		return files
	}

	public struct FileGenerator {
		public var url: URL
		public var generator: (DeclarationCollector) -> Syntax
	}

	public enum Failure: String, LocalizedError {
		case cannotCreateEnumerator
		case noURLForMonitoring
		case cannotWriteFile
	}
}