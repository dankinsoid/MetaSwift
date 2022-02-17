//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

@resultBuilder
public enum SyntaxBuilder {

	public static func buildBlock(_ components: Syntax...) -> Syntax {
		buildArray(components)
	}

	public static func buildExpression<S: SyntaxProtocol>(_ expression: S) -> Syntax {
		Syntax(expression)
	}

	public static func buildExpression(_ expression: String) -> Syntax {
		Syntax(code: expression)
	}

	public static func buildEither(first component: Syntax) -> Syntax {
		component
	}

	public static func buildEither(second component: Syntax) -> Syntax {
		component
	}

	public static func buildOptional(_ component: Syntax?) -> Syntax {
		component ?? Syntax(SyntaxFactory.makeCodeBlockItemList([]))
	}

	public static func buildArray(_ components: [Syntax]) -> Syntax {
		if components.count == 1 {
			return components[0]
		} else {
			return Syntax(
					SyntaxFactory.makeCodeBlockItemList(components.flatMap({ $0.asItems }))
			)
		}
	}

	public static func buildLimitedAvailability(_ component: Syntax) -> Syntax {
		component
	}
}
