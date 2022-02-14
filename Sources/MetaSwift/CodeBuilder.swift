//
// Created by Данил Войдилов on 13.02.2022.
//

import Foundation

@resultBuilder
public enum CodeBuilder {

	public static func buildBlock(_ components: Code...) -> Code {
		buildArray(components)
	}

	public static func buildExpression(_ expression: String) -> Code {
		Code(expression)
	}

	public static func buildExpression(_ expression: Code) -> Code {
		expression
	}

	public static func buildEither(first component: Code) -> Code {
		component
	}

	public static func buildEither(second component: Code) -> Code {
		component
	}

	public static func buildOptional(_ component: Code?) -> Code {
		component ?? Code()
	}

	public static func buildLimitedAvailability(_ component: Code) -> Code {
		component
	}

	public static func buildArray(_ components: [Code]) -> Code {
		Code(components.map { $0.code }.joined(separator: ""))
	}
}