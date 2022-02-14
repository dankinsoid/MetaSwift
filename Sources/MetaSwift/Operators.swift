//
// Created by Данил Войдилов on 13.02.2022.
//

import Foundation

infix operator |=
infix operator |==
infix operator |

public extension Code {

	static func |=(_ lhs: Code, _ rhs: Code) -> Code {
		Code(lhs.code + " = " + rhs.code)
	}

	static func |==(_ lhs: Code, _ rhs: Code) -> Code {
		Code(lhs.code + " == " + rhs.code)
	}

	static func |(_ lhs: Code, _ rhs: Code) -> Code {
		Code(lhs.code + ": " + rhs.code)
	}
}

public func |==(_ lhs: CodeType, _ rhs: CodeType) -> Where {
	Where(lhs.type + "==" + rhs.type)
}

public func |(_ lhs: CodeType, _ rhs: CodeType) -> Where {
	Where(lhs.type + ": " + rhs.type)
}

public enum FuncType: String, CaseIterable {
	case `async`, `throws`, `rethrows`
}

public func |(_ lhs: CodeType, _ rhs: CodeType) -> Code {
	Code(lhs.type + ": " + rhs.type)
}
