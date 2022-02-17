//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension Syntax: ExpressibleByStringInterpolation {

	public init(code: String) {
		do {
			let parsed = try SyntaxParser.parse(source: code)
			self = Syntax(parsed)
		} catch {
			self = Syntax(SyntaxFactory.makeUnknown(code))
		}
	}

	public init(stringLiteral value: String) {
		self = Syntax(code: value)
	}
}

extension Syntax: ExpressibleByBooleanLiteral {
	public init(booleanLiteral value: Bool) {
		self = Syntax(SyntaxFactory.makeBooleanLiteralExpr(booleanLiteral: value ? .true : .false))
	}
}

extension Syntax: ExpressibleByNilLiteral {
	public init(nilLiteral: ()) {
		self = Syntax(SyntaxFactory.makeNilKeyword())
	}
}

extension Syntax: ExpressibleByIntegerLiteral {
	public init(integerLiteral value: Int) {
		self = Syntax(SyntaxFactory.makeIntegerLiteral("\(value)"))
	}
}

extension Syntax: ExpressibleByFloatLiteral {

	public init(floatLiteral value: Float) {
		self = Syntax(SyntaxFactory.makeFloatingLiteral("\(value)"))
	}
}

extension Syntax: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: ExprSyntax...) {
		self = Syntax(
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

extension Syntax: ExpressibleByDictionaryLiteral {

	public init(dictionaryLiteral elements: (ExprSyntax, ExprSyntax)...) {
		self = Syntax(
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