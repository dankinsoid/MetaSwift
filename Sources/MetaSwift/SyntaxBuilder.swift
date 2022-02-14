//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

@resultBuilder
public enum SyntaxBuilder {

	public static func buildBlock(_ components: [CodeBlockItemSyntax]...) -> [CodeBlockItemSyntax] {
		components.flatMap { $0 }
	}

	public static func buildExpression<S: SyntaxProtocol>(_ expression: S) -> [CodeBlockItemSyntax] {
		[
			SyntaxFactory.makeCodeBlockItem(item: Syntax(expression), semicolon: nil, errorTokens: nil)
		]
	}

	public static func buildExpression(_ expression: CodeBlockItemSyntax) -> [CodeBlockItemSyntax] {
		[expression]
	}

	public static func buildExpression(_ expression: Syntax) -> [CodeBlockItemSyntax] {
		[
			SyntaxFactory.makeCodeBlockItem(item: expression, semicolon: nil, errorTokens: nil)
		]
	}

	public static func buildExpression(_ expression: SourceFileSyntax) -> [CodeBlockItemSyntax] {
		Array(expression.statements)
	}

	public static func buildExpression(_ expression: CodeBlockItemListSyntax) -> [CodeBlockItemSyntax] {
		Array(expression)
	}

	public static func buildExpression(_ expression: String) -> [CodeBlockItemSyntax] {
		do {
			let parsed = try SyntaxParser.parse(source: expression)
			return Array(parsed.statements)
		} catch {
			return buildExpression(SyntaxFactory.makeUnknown(expression))
		}
	}

	public static func buildEither(first component: [CodeBlockItemSyntax]) -> [CodeBlockItemSyntax] {
		component
	}

	public static func buildEither(second component: [CodeBlockItemSyntax]) -> [CodeBlockItemSyntax] {
		component
	}

	public static func buildOptional(_ component: [CodeBlockItemSyntax]?) -> [CodeBlockItemSyntax] {
		component ?? []
	}

	public static func buildArray(_ components: [[CodeBlockItemSyntax]]) -> [CodeBlockItemSyntax] {
		components.flatMap { $0 }
	}

	public static func buildLimitedAvailability(_ component: [CodeBlockItemSyntax]) -> [CodeBlockItemSyntax] {
		component
	}

	public static func buildFinalResult(_ component: [CodeBlockItemSyntax]) -> CodeBlockItemListSyntax {
		SyntaxFactory.makeCodeBlockItemList(component)
	}
}
