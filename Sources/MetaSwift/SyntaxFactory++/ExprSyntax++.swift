//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension ExprSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		if let expr = ExprSyntax(Syntax(code: value)) {
			self = expr
		} else {
			self = ExprSyntax(SyntaxFactory.makeBlankUnknownExpr())
		}
	}
}

extension ExprSyntax: ExpressibleByBooleanLiteral {
	public init(booleanLiteral value: Bool) {
		self = ExprSyntax(SyntaxFactory.makeBooleanLiteralExpr(booleanLiteral: value ? .true : .false))
	}
}

extension ExprSyntax: ExpressibleByNilLiteral {
	public init(nilLiteral: ()) {
		self = ExprSyntax(SyntaxFactory.makeNilLiteralExpr(nilKeyword: .nil))
	}
}

extension ExprSyntax: ExpressibleByIntegerLiteral {
	public init(integerLiteral value: Int) {
		self = ExprSyntax(SyntaxFactory.makeIntegerLiteralExpr(digits: SyntaxFactory.makeToken(.integerLiteral("\(value)"), presence: .present)))
	}
}

extension ExprSyntax: ExpressibleByFloatLiteral {

	public init(floatLiteral value: Float) {
		self = ExprSyntax(SyntaxFactory.makeFloatLiteralExpr(floatingDigits: SyntaxFactory.makeToken(.floatingLiteral("\(value)"), presence: .present)))
	}
}

extension ExprSyntax: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: ExprSyntax...) {
		self = ExprSyntax(
				SyntaxFactory.makeArrayExpr(
						leftSquare: .leftSquareBracket,
						elements: SyntaxFactory.makeArrayElementList(
								elements.enumerated().map {
									SyntaxFactory.makeArrayElement(
											expression: $0.element,
											trailingComma: $0.offset >= elements.count - 1 ? nil : SyntaxFactory.makeToken(.comma, presence: .present, trailingTrivia: [.spaces(1)])
									)
								}
						),
						rightSquare: .rightSquareBracket
				)
		)
	}
}

extension ExprSyntax: ExpressibleByDictionaryLiteral {

	public init(dictionaryLiteral elements: (ExprSyntax, ExprSyntax)...) {
		self = ExprSyntax(
				SyntaxFactory.makeDictionaryExpr(
						leftSquare: .leftSquareBracket,
						content: Syntax(
								SyntaxFactory.makeDictionaryElementList(
										elements.enumerated().map {
											SyntaxFactory.makeDictionaryElement(
													keyExpression: $0.element.0,
													colon: .colon,
													valueExpression: $0.element.1,
													trailingComma:  $0.offset >= elements.count - 1 ? nil : SyntaxFactory.makeToken(.comma, presence: .present, trailingTrivia: [.spaces(1)])
											)
										}
								)
						),
						rightSquare: .rightSquareBracket
				)
		)
	}
}