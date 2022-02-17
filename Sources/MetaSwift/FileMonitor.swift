//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation

final class FileMonitor {

	let url: URL
	let fileHandle: FileHandle
	private var sources: [DispatchSourceFileSystemObject] = []

	init(url: URL) throws {
		self.url = url
		fileHandle = try FileHandle(forReadingFrom: url)
	}

	func monitor(_ handler: @escaping (String) -> Void) {
		let source = DispatchSource.makeFileSystemObjectSource(
				fileDescriptor: fileHandle.fileDescriptor,
				eventMask: [.extend, .write]
		)
		source.setEventHandler {[weak self] in
			guard let self = self else { return }
			let newData = self.fileHandle.readDataToEndOfFile()
			let string = String(data: newData, encoding: .utf8) ?? ""
			handler(string)
		}
		sources.append(source)
	}

	deinit {
		if #available(macOS 10.15, *) {
			try? fileHandle.close()
		}
	}
}