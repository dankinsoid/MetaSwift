//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension DeclSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		if let expr = DeclSyntax(Syntax(code: value)) {
			self = expr
		} else {
			self = DeclSyntax(SyntaxFactory.makeBlankUnknownDecl())
		}
	}
}
