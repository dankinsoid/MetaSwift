//
// Created by Данил Войдилов on 15.02.2022.
//

import Foundation
import SwiftSyntax

extension CodeBlockItemListSyntax: ExpressibleByArrayLiteral {
	public init(arrayLiteral elements: CodeBlockItemSyntax...) {
		self = SyntaxFactory.makeCodeBlockItemList(elements)
	}
}