//
// Created by Данил Войдилов on 13.02.2022.
//

import Foundation

@dynamicMemberLookup
public struct Code: ExpressibleByStringLiteral {
	public var code: String

	public init(_ code: String) {
		self.code = code
	}

	public init() {
		self.init("")
	}

	public init(stringLiteral value: String) {
		self.init(value)
	}

	public subscript(dynamicMember value: String) -> Code {
		Code(code + value)
	}

	public subscript(_ value: Code) -> Code {
		Code(code + "[" + value.code + "]")
	}

	public func callAsFunction(_ code: Code) -> Code {
		Code(self.code + Code.wrap(code).code)
	}

	public func callAsFunction(@CodeBuilder body: () -> Code) -> Code {
		curly(body)
	}

	public static func `let`(_ name: String) -> Code {
		Code("let " + name)
	}

	public static func `let`(_ name: String, of type: CodeType) -> Code {
		Code("let " + name + ": " + type.type)
	}

	public static func `var`(_ name: String) -> Code {
		Code("var " + name)
	}

	public static func `var`(_ name: String, of type: CodeType) -> Code {
		Code("var " + name + ": " + type.type)
	}

	public static func `if`(_ code: Code, @CodeBuilder _ then: () -> Code) -> Code {
		Code("if " + code.code + " {" + then().code + "}")
	}

	public static func `if`(_ code: Code, @CodeBuilder _ then: () -> Code, @CodeBuilder else elseCode: () -> Code) -> Code {
		Code("if " + code.code + " {" + then().code + "} else {" + elseCode().code + "}")
	}

	public func `else`(@CodeBuilder _ elseCode: () -> Code) -> Code {
		Code(" else {" + elseCode().code + "}")
	}

	public func `else`(if ifCode: Code, @CodeBuilder _ elseCode: () -> Code) -> Code {
		Code(" else if " + ifCode.code + " {" + elseCode().code + "}")
	}

	public func `else`(if ifCode: Code, @CodeBuilder _ elseIfCode: () -> Code, @CodeBuilder else elseCode: () -> Code) -> Code {
		Code(" else if " + ifCode.code + " {" + elseIfCode().code + "} else {" + elseCode().code + "}")
	}

	public static func `func`(_ name: String, _ params: [String: CodeType] = [:], _ types: FuncType..., of type: CodeType? = nil, where: Where..., @CodeBuilder body: () -> Code) -> Code {
		var result = name

		return Code(result)
	}

	public static func `_init`(_ params: [String: CodeType] = [:], _ types: FuncType..., of type: CodeType? = nil, where: Where..., @CodeBuilder body: () -> Code) -> Code {
		var result = ""

		return Code(result)
	}

	public static func `struct`(_ name: String, of type: CodeType..., where: Where..., @CodeBuilder body: () -> Code) -> Code {
		var result = name

		return Code(result)
	}

	public static func `extension`(_ type: CodeType, of protocol: CodeType..., where: Where..., @CodeBuilder body: () -> Code) -> Code {
		var result = "extension"

		return Code(result)
	}

	public static func wrap(_ rhs: Code) -> Code {
		Code("(" + rhs.code + ")")
	}

	public static func +(_ lhs: Code, _ rhs: Code) -> Code {
		Code(lhs.code + rhs.code)
	}

	public func curly(@CodeBuilder _ body: () -> Code) -> Code {
		Code(code + " {" + body().code + "}")
	}
}

extension Code: ExpressibleByStringInterpolation {

	public init(stringInterpolation: StringInterpolation) {
		self = stringInterpolation.code
	}

	public struct StringInterpolation: StringInterpolationProtocol {
		public var code: Code

		public init(literalCapacity: Int, interpolationCount: Int) {
			code = Code()
		}

		public mutating func appendLiteral(_ literal: String) {
			code.code += literal
		}

		public mutating func appendInterpolation(_ code: Code) {
			self.code.code += code.code
		}

		public mutating func appendInterpolation(where conditions: Where...) {
			self.code.code += conditions.map { $0.value }.joined(separator: ", ")
		}
	}
}