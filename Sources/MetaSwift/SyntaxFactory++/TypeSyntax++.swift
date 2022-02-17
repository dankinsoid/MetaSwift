//
// Created by Данил Войдилов on 17.02.2022.
//

import Foundation
import SwiftSyntax

extension TypeSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		self = SyntaxFactory.makeTypeIdentifier(value)
	}
}