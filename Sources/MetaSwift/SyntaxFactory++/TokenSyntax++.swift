//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

extension TokenSyntax: ExpressibleByStringInterpolation {

	public init(stringLiteral value: String) {
		if let expr = TokenSyntax(Syntax(code: value)) {
			self = expr
		} else {
			self = SyntaxFactory.makeUnknown(value)
		}
	}
}

extension TokenSyntax {
	public static var eof: TokenSyntax { SyntaxFactory.makeToken(.eof, presence: .present) }
	public static var `associatedtype`: TokenSyntax { SyntaxFactory.makeToken(.associatedtypeKeyword, presence: .present) }
	public static var associatedtype_: TokenSyntax { SyntaxFactory.makeToken(.associatedtypeKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `class`: TokenSyntax { SyntaxFactory.makeToken(.classKeyword, presence: .present) }
	public static var class_: TokenSyntax { SyntaxFactory.makeToken(.classKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `deinit`: TokenSyntax { SyntaxFactory.makeToken(.deinitKeyword, presence: .present) }
	public static var `enum`: TokenSyntax { SyntaxFactory.makeToken(.enumKeyword, presence: .present) }
	public static var enum_: TokenSyntax { SyntaxFactory.makeToken(.enumKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `extension`: TokenSyntax { SyntaxFactory.makeToken(.extensionKeyword, presence: .present) }
	public static var extension_: TokenSyntax { SyntaxFactory.makeToken(.extensionKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `func`: TokenSyntax { SyntaxFactory.makeToken(.funcKeyword, presence: .present) }
	public static var func_: TokenSyntax { SyntaxFactory.makeToken(.funcKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `import`: TokenSyntax { SyntaxFactory.makeToken(.importKeyword, presence: .present) }
	public static var import_: TokenSyntax { SyntaxFactory.makeToken(.importKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var initKeyword: TokenSyntax { SyntaxFactory.makeToken(.initKeyword, presence: .present) }
	public static var `inout`: TokenSyntax { SyntaxFactory.makeToken(.inoutKeyword, presence: .present) }
	public static var inout_: TokenSyntax { SyntaxFactory.makeToken(.inoutKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `let`: TokenSyntax { SyntaxFactory.makeToken(.letKeyword, presence: .present) }
	public static var let_: TokenSyntax { SyntaxFactory.makeToken(.letKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `operator`: TokenSyntax { SyntaxFactory.makeToken(.operatorKeyword, presence: .present) }
	public static var operator_: TokenSyntax { SyntaxFactory.makeToken(.operatorKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `precedencegroup`: TokenSyntax { SyntaxFactory.makeToken(.precedencegroupKeyword, presence: .present) }
	public static var precedencegroup_: TokenSyntax { SyntaxFactory.makeToken(.precedencegroupKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `protocol`: TokenSyntax { SyntaxFactory.makeToken(.protocolKeyword, presence: .present) }
	public static var protocol_: TokenSyntax { SyntaxFactory.makeToken(.protocolKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `struct`: TokenSyntax { SyntaxFactory.makeToken(.structKeyword, presence: .present) }
	public static var struct_: TokenSyntax { SyntaxFactory.makeToken(.structKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `subscript`: TokenSyntax { SyntaxFactory.makeToken(.subscriptKeyword, presence: .present) }
	public static var subscript_: TokenSyntax { SyntaxFactory.makeToken(.subscriptKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `typealias`: TokenSyntax { SyntaxFactory.makeToken(.typealiasKeyword, presence: .present) }
	public static var typealias_: TokenSyntax { SyntaxFactory.makeToken(.typealiasKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `var`: TokenSyntax { SyntaxFactory.makeToken(.varKeyword, presence: .present) }
	public static var var_: TokenSyntax { SyntaxFactory.makeToken(.varKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `fileprivate`: TokenSyntax { SyntaxFactory.makeToken(.fileprivateKeyword, presence: .present) }
	public static var fileprivate_: TokenSyntax { SyntaxFactory.makeToken(.fileprivateKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `internal`: TokenSyntax { SyntaxFactory.makeToken(.internalKeyword, presence: .present) }
	public static var internal_: TokenSyntax { SyntaxFactory.makeToken(.internalKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `private`: TokenSyntax { SyntaxFactory.makeToken(.privateKeyword, presence: .present) }
	public static var private_: TokenSyntax { SyntaxFactory.makeToken(.privateKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `public`: TokenSyntax { SyntaxFactory.makeToken(.publicKeyword, presence: .present) }
	public static var public_: TokenSyntax { SyntaxFactory.makeToken(.publicKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `static`: TokenSyntax { SyntaxFactory.makeToken(.staticKeyword, presence: .present) }
	public static var static_: TokenSyntax { SyntaxFactory.makeToken(.staticKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `defer`: TokenSyntax { SyntaxFactory.makeToken(.deferKeyword, presence: .present) }
	public static var defer_: TokenSyntax { SyntaxFactory.makeToken(.deferKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `if`: TokenSyntax { SyntaxFactory.makeToken(.ifKeyword, presence: .present) }
	public static var if_: TokenSyntax { SyntaxFactory.makeToken(.ifKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `guard`: TokenSyntax { SyntaxFactory.makeToken(.guardKeyword, presence: .present) }
	public static var guard_: TokenSyntax { SyntaxFactory.makeToken(.guardKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `do`: TokenSyntax { SyntaxFactory.makeToken(.doKeyword, presence: .present) }
	public static var do_: TokenSyntax { SyntaxFactory.makeToken(.doKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `repeat`: TokenSyntax { SyntaxFactory.makeToken(.repeatKeyword, presence: .present) }
	public static var repeat_: TokenSyntax { SyntaxFactory.makeToken(.repeatKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `else`: TokenSyntax { SyntaxFactory.makeToken(.elseKeyword, presence: .present) }
	public static var else_: TokenSyntax { SyntaxFactory.makeToken(.elseKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `for`: TokenSyntax { SyntaxFactory.makeToken(.forKeyword, presence: .present) }
	public static var for_: TokenSyntax { SyntaxFactory.makeToken(.forKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `in`: TokenSyntax { SyntaxFactory.makeToken(.inKeyword, presence: .present) }
	public static var in_: TokenSyntax { SyntaxFactory.makeToken(.inKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `while`: TokenSyntax { SyntaxFactory.makeToken(.whileKeyword, presence: .present) }
	public static var while_: TokenSyntax { SyntaxFactory.makeToken(.whileKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `return`: TokenSyntax { SyntaxFactory.makeToken(.returnKeyword, presence: .present) }
	public static var return_: TokenSyntax { SyntaxFactory.makeToken(.returnKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `break`: TokenSyntax { SyntaxFactory.makeToken(.breakKeyword, presence: .present) }
	public static var `continue`: TokenSyntax { SyntaxFactory.makeToken(.continueKeyword, presence: .present) }
	public static var `fallthrough`: TokenSyntax { SyntaxFactory.makeToken(.fallthroughKeyword, presence: .present) }
	public static var `switch`: TokenSyntax { SyntaxFactory.makeToken(.switchKeyword, presence: .present) }
	public static var switch_: TokenSyntax { SyntaxFactory.makeToken(.switchKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `case`: TokenSyntax { SyntaxFactory.makeToken(.caseKeyword, presence: .present) }
	public static var case_: TokenSyntax { SyntaxFactory.makeToken(.caseKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `default`: TokenSyntax { SyntaxFactory.makeToken(.defaultKeyword, presence: .present) }
	public static var `where`: TokenSyntax { SyntaxFactory.makeToken(.whereKeyword, presence: .present) }
	public static var where_: TokenSyntax { SyntaxFactory.makeToken(.whereKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `catch`: TokenSyntax { SyntaxFactory.makeToken(.catchKeyword, presence: .present) }
	public static var `throw`: TokenSyntax { SyntaxFactory.makeToken(.throwKeyword, presence: .present) }
	public static var throw_: TokenSyntax { SyntaxFactory.makeToken(.throwKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `as`: TokenSyntax { SyntaxFactory.makeToken(.asKeyword, presence: .present) }
	public static var as_: TokenSyntax { SyntaxFactory.makeToken(.asKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `any`: TokenSyntax { SyntaxFactory.makeToken(.anyKeyword, presence: .present) }
	public static var `false`: TokenSyntax { SyntaxFactory.makeToken(.falseKeyword, presence: .present) }
	public static var `is`: TokenSyntax { SyntaxFactory.makeToken(.isKeyword, presence: .present) }
	public static var is_: TokenSyntax { SyntaxFactory.makeToken(.isKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `nil`: TokenSyntax { SyntaxFactory.makeToken(.nilKeyword, presence: .present) }
	public static var nil_: TokenSyntax { SyntaxFactory.makeToken(.nilKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `rethrows`: TokenSyntax { SyntaxFactory.makeToken(.rethrowsKeyword, presence: .present) }
	public static var rethrows_: TokenSyntax { SyntaxFactory.makeToken(.rethrowsKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `super`: TokenSyntax { SyntaxFactory.makeToken(.superKeyword, presence: .present) }
	public static var super_: TokenSyntax { SyntaxFactory.makeToken(.superKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var selfKeyword: TokenSyntax { SyntaxFactory.makeToken(.selfKeyword, presence: .present) }
	public static var capitalSelf: TokenSyntax { SyntaxFactory.makeToken(.capitalSelfKeyword, presence: .present) }
	public static var `true`: TokenSyntax { SyntaxFactory.makeToken(.trueKeyword, presence: .present) }
	public static var `try`: TokenSyntax { SyntaxFactory.makeToken(.tryKeyword, presence: .present) }
	public static var try_: TokenSyntax { SyntaxFactory.makeToken(.tryKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `throws`: TokenSyntax { SyntaxFactory.makeToken(.throwsKeyword, presence: .present) }
	public static var throws_: TokenSyntax { SyntaxFactory.makeToken(.throwsKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var __file__: TokenSyntax { SyntaxFactory.makeToken(.__file__Keyword, presence: .present) }
	public static var __line__: TokenSyntax { SyntaxFactory.makeToken(.__line__Keyword, presence: .present) }
	public static var __column__: TokenSyntax { SyntaxFactory.makeToken(.__column__Keyword, presence: .present) }
	public static var __function__: TokenSyntax { SyntaxFactory.makeToken(.__function__Keyword, presence: .present) }
	public static var __dso_handle__: TokenSyntax { SyntaxFactory.makeToken(.__dso_handle__Keyword, presence: .present) }
	public static var wildcard: TokenSyntax { SyntaxFactory.makeToken(.wildcardKeyword, presence: .present) }
	public static var leftParen: TokenSyntax { SyntaxFactory.makeToken(.leftParen, presence: .present) }
	public static var rightParen: TokenSyntax { SyntaxFactory.makeToken(.rightParen, presence: .present) }
	public static var leftBrace: TokenSyntax { SyntaxFactory.makeToken(.leftBrace, presence: .present) }
	public static var rightBrace: TokenSyntax { SyntaxFactory.makeToken(.rightBrace, presence: .present) }
	public static var leftSquareBracket: TokenSyntax { SyntaxFactory.makeToken(.leftSquareBracket, presence: .present) }
	public static var rightSquareBracket: TokenSyntax { SyntaxFactory.makeToken(.rightSquareBracket, presence: .present) }
	public static var leftAngle: TokenSyntax { SyntaxFactory.makeToken(.leftAngle, presence: .present) }
	public static var rightAngle: TokenSyntax { SyntaxFactory.makeToken(.rightAngle, presence: .present) }
	public static var period: TokenSyntax { SyntaxFactory.makeToken(.period, presence: .present) }
	public static var prefixPeriod: TokenSyntax { SyntaxFactory.makeToken(.prefixPeriod, presence: .present) }
	public static var comma: TokenSyntax { SyntaxFactory.makeToken(.comma, presence: .present) }
	public static var ellipsis: TokenSyntax { SyntaxFactory.makeToken(.ellipsis, presence: .present) }
	public static var colon: TokenSyntax { SyntaxFactory.makeToken(.colon, presence: .present) }
	public static var semicolon: TokenSyntax { SyntaxFactory.makeToken(.semicolon, presence: .present) }
	public static var equal: TokenSyntax { SyntaxFactory.makeToken(.equal, presence: .present) }
	public static var atSign: TokenSyntax { SyntaxFactory.makeToken(.atSign, presence: .present) }
	public static var pound: TokenSyntax { SyntaxFactory.makeToken(.pound, presence: .present) }
	public static var prefixAmpersand: TokenSyntax { SyntaxFactory.makeToken(.prefixAmpersand, presence: .present) }
	public static var arrow: TokenSyntax { SyntaxFactory.makeToken(.arrow, presence: .present) }
	public static var backtick: TokenSyntax { SyntaxFactory.makeToken(.backtick, presence: .present) }
	public static var backslash: TokenSyntax { SyntaxFactory.makeToken(.backslash, presence: .present) }
	public static var exclamationMark: TokenSyntax { SyntaxFactory.makeToken(.exclamationMark, presence: .present) }
	public static var postfixQuestionMark: TokenSyntax { SyntaxFactory.makeToken(.postfixQuestionMark, presence: .present) }
	public static var infixQuestionMark: TokenSyntax { SyntaxFactory.makeToken(.infixQuestionMark, presence: .present) }
	public static var stringQuote: TokenSyntax { SyntaxFactory.makeToken(.stringQuote, presence: .present) }
	public static var singleQuote: TokenSyntax { SyntaxFactory.makeToken(.singleQuote, presence: .present) }
	public static var multilineStringQuote: TokenSyntax { SyntaxFactory.makeToken(.multilineStringQuote, presence: .present) }
	public static var poundKeyPath: TokenSyntax { SyntaxFactory.makeToken(.poundKeyPathKeyword, presence: .present) }
	public static var poundLine: TokenSyntax { SyntaxFactory.makeToken(.poundLineKeyword, presence: .present) }
	public static var poundSelector: TokenSyntax { SyntaxFactory.makeToken(.poundSelectorKeyword, presence: .present) }
	public static var poundFile: TokenSyntax { SyntaxFactory.makeToken(.poundFileKeyword, presence: .present) }
	public static var poundFileID: TokenSyntax { SyntaxFactory.makeToken(.poundFileIDKeyword, presence: .present) }
	public static var poundFilePath: TokenSyntax { SyntaxFactory.makeToken(.poundFilePathKeyword, presence: .present) }
	public static var poundColumn: TokenSyntax { SyntaxFactory.makeToken(.poundColumnKeyword, presence: .present) }
	public static var poundFunction: TokenSyntax { SyntaxFactory.makeToken(.poundFunctionKeyword, presence: .present) }
	public static var poundDsohandle: TokenSyntax { SyntaxFactory.makeToken(.poundDsohandleKeyword, presence: .present) }
	public static var poundAssert: TokenSyntax { SyntaxFactory.makeToken(.poundAssertKeyword, presence: .present) }
	public static var poundSourceLocation: TokenSyntax { SyntaxFactory.makeToken(.poundSourceLocationKeyword, presence: .present) }
	public static var poundWarning: TokenSyntax { SyntaxFactory.makeToken(.poundWarningKeyword, presence: .present) }
	public static var poundError: TokenSyntax { SyntaxFactory.makeToken(.poundErrorKeyword, presence: .present) }
	public static var poundIf: TokenSyntax { SyntaxFactory.makeToken(.poundIfKeyword, presence: .present) }
	public static var poundElse: TokenSyntax { SyntaxFactory.makeToken(.poundElseKeyword, presence: .present) }
	public static var poundElseif: TokenSyntax { SyntaxFactory.makeToken(.poundElseifKeyword, presence: .present) }
	public static var poundEndif: TokenSyntax { SyntaxFactory.makeToken(.poundEndifKeyword, presence: .present) }
	public static var poundAvailable: TokenSyntax { SyntaxFactory.makeToken(.poundAvailableKeyword, presence: .present) }
	public static var poundFileLiteral: TokenSyntax { SyntaxFactory.makeToken(.poundFileLiteralKeyword, presence: .present) }
	public static var poundImageLiteral: TokenSyntax { SyntaxFactory.makeToken(.poundImageLiteralKeyword, presence: .present) }
	public static var poundColorLiteral: TokenSyntax { SyntaxFactory.makeToken(.poundColorLiteralKeyword, presence: .present) }
	public static func integerLiteral(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.integerLiteral(value), presence: .present) }
	public static func floatingLiteral(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.floatingLiteral(value), presence: .present) }
	public static func stringLiteral(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.stringLiteral(value), presence: .present) }
	public static func unknown(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.unknown(value), presence: .present) }
	public static func identifier(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.identifier(value), presence: .present) }
	public static func unspacedBinaryOperator(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.unspacedBinaryOperator(value), presence: .present) }
	public static func spacedBinaryOperator(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.spacedBinaryOperator(value), presence: .present) }
	public static func postfixOperator(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.postfixOperator(value), presence: .present) }
	public static func prefixOperator(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.prefixOperator(value), presence: .present) }
	public static func dollarIdentifier(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.dollarIdentifier(value), presence: .present) }
	public static func contextual(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.contextualKeyword(value), presence: .present) }
	public static func rawStringDelimiter(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.rawStringDelimiter(value), presence: .present) }
	public static func stringSegment(_ value: String) -> TokenSyntax { SyntaxFactory.makeToken(.stringSegment(value), presence: .present) }
	public static var stringInterpolationAnchor: TokenSyntax { SyntaxFactory.makeToken(.stringInterpolationAnchor, presence: .present) }
	public static var `yield`: TokenSyntax { SyntaxFactory.makeToken(.yield, presence: .present) }
	public static var yield_: TokenSyntax { SyntaxFactory.makeToken(.yield, presence: .present, trailingTrivia: [.spaces(1)]) }
}

extension TokenSyntax {
	public static func +(_ lhs: Trivia, _ rhs: TokenSyntax) -> TokenSyntax {
		rhs.withLeadingTrivia(lhs)
	}
	public static func +(_ lhs: TokenSyntax, _ rhs: Trivia) -> TokenSyntax {
		lhs.withTrailingTrivia(rhs)
	}
}