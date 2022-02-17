//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

extension Syntax {

	public var asItems: [CodeBlockItemSyntax] {
		self.as(CodeBlockItemSyntax.self).map { [$0] } ??
				self.as(CodeBlockItemListSyntax.self).map { Array($0) } ??
				self.as(SourceFileSyntax.self).map { Array($0.statements) } ??
				[
					SyntaxFactory.makeCodeBlockItem(item: self, semicolon: nil, errorTokens: nil)
				]
	}
}

public func +<S: SyntaxProtocol, R: SyntaxProtocol>(_ lhs: S, _ rhs: R) -> CodeBlockItemListSyntax {
	SyntaxFactory.makeCodeBlockItemList(Syntax(lhs).asItems + Syntax(rhs).asItems)
}