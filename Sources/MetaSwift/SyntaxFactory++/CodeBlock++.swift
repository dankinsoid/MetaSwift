//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

extension SyntaxFactory {
	public static func makeCodeBlock(@SyntaxBuilder body: () -> CodeBlockItemListSyntax) -> CodeBlockSyntax {
		makeCodeBlock(
				leftBrace: makeToken(.leftBrace, presence: .present, leadingTrivia: [.spaces(1)], trailingTrivia: [.newlines(1)]),
				statements: body(),
				rightBrace: makeToken(.rightBrace, presence: .present, trailingTrivia: [.newlines(1)])
		)
	}
}

extension SyntaxProtocol {

	public func callAsFunction(@SyntaxBuilder body: () -> CodeBlockItemListSyntax) -> CodeBlockItemListSyntax {
		self + SyntaxFactory.makeCodeBlock(
				leftBrace: SyntaxFactory.makeToken(.leftBrace, presence: .present, leadingTrivia: [.spaces(1)], trailingTrivia: [.newlines(1)]),
				statements: body(),
				rightBrace: SyntaxFactory.makeToken(.rightBrace, presence: .present, trailingTrivia: [.newlines(1)])
		)
	}
}