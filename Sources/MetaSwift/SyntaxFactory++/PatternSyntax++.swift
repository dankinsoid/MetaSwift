//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension PatternSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		if let expr = PatternSyntax(Syntax(code: value)) {
			self = expr
		} else {
			self = PatternSyntax(SyntaxFactory.makeBlankUnknownPattern())
		}
	}
}