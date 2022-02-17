//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension StmtSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		if let expr = StmtSyntax(Syntax(code: value)) {
			self = expr
		} else {
			self = StmtSyntax(SyntaxFactory.makeBlankUnknownStmt())
		}
	}
}
