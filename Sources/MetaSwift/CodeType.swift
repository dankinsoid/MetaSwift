//
// Created by Данил Войдилов on 13.02.2022.
//

import Foundation

@dynamicMemberLookup
public struct CodeType: ExpressibleByStringInterpolation {
	public var type: String

	public init(_ type: String) {
		self.type = type
	}

	public init(stringLiteral value: String) {
		self.init(value)
	}

	public init(_ type: CodeType) {
		self = type
	}

	public init<T>(_ type: T.Type) {
		self = "\(type)"
	}

	public init(stringInterpolation: StringInterpolation) {
		self.type = stringInterpolation.type
	}

	public subscript(dynamicMember value: String) -> CodeType {
		CodeType(type + "." + value)
	}

	public struct StringInterpolation: StringInterpolationProtocol {
		public var type: String

		public init(literalCapacity: Int, interpolationCount: Int) {
			type = ""
		}

		public mutating func appendLiteral(_ literal: String) {
			type += literal
		}

		public mutating func appendInterpolation<T>(_ type: T.Type) {
			self.type += "\(type)"
		}
	}

	public static var Int: CodeType { "Int" }
	public static var String: CodeType { "String" }
	public static var Void: CodeType { "Void" }
}