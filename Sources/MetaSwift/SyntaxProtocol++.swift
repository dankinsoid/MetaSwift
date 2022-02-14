//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

extension SyntaxProtocol {

	public var asItems: [CodeBlockItemSyntax] {
		(self as? CodeBlockItemSyntax).map { [$0] } ??
				(self as? CodeBlockItemListSyntax).map { Array($0) } ??
				[
					SyntaxFactory.makeCodeBlockItem(item: Syntax(self), semicolon: nil, errorTokens: nil)
				]
	}
}

public func +<S: SyntaxProtocol, R: SyntaxProtocol>(_ lhs: S, _ rhs: R) -> CodeBlockItemListSyntax {
	SyntaxFactory.makeCodeBlockItemList(lhs.asItems + rhs.asItems)
}