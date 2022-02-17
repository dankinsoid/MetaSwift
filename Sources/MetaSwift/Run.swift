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

		}
		for generator in generators {

		}
	}

	public func monitor() async throws {
		guard let monitor = monitor else {
			return
		}
		let fileMonitor = try FileMonitor(url: monitor)

		while true {
			if Task.isCancelled {
				return
			}
		}
	}

	public struct FileGenerator {
		public var url: URL
		public var generator: (DeclarationCollector) -> Syntax
	}
}