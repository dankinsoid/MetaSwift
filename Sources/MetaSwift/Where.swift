//
// Created by Данил Войдилов on 13.02.2022.
//

import Foundation

public struct Where: ExpressibleByStringLiteral {
	public var value: String

	public init(_ value: String) { self.value = value }

	public init(stringLiteral value: String) {
		self.init(value)
	}
}