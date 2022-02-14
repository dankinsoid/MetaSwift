//
// Created by Данил Войдилов on 14.02.2022.
//

import Foundation
import SwiftSyntax

extension SyntaxFactory {
	public static var eof: TokenSyntax { makeToken(.eof, presence: .present) }
	public static var `associatedtype`: TokenSyntax { makeToken(.associatedtypeKeyword, presence: .present) }
	public static var associatedtype_: TokenSyntax { makeToken(.associatedtypeKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `class`: TokenSyntax { makeToken(.classKeyword, presence: .present) }
	public static var class_: TokenSyntax { makeToken(.classKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `deinit`: TokenSyntax { makeToken(.deinitKeyword, presence: .present) }
	public static var `enum`: TokenSyntax { makeToken(.enumKeyword, presence: .present) }
	public static var enum_: TokenSyntax { makeToken(.enumKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `extension`: TokenSyntax { makeToken(.extensionKeyword, presence: .present) }
	public static var extension_: TokenSyntax { makeToken(.extensionKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `func`: TokenSyntax { makeToken(.funcKeyword, presence: .present) }
	public static var func_: TokenSyntax { makeToken(.funcKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `import`: TokenSyntax { makeToken(.importKeyword, presence: .present) }
	public static var import_: TokenSyntax { makeToken(.importKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var initKeyword: TokenSyntax { makeToken(.initKeyword, presence: .present) }
	public static var `inout`: TokenSyntax { makeToken(.inoutKeyword, presence: .present) }
	public static var inout_: TokenSyntax { makeToken(.inoutKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `let`: TokenSyntax { makeToken(.letKeyword, presence: .present) }
	public static var let_: TokenSyntax { makeToken(.letKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `operator`: TokenSyntax { makeToken(.operatorKeyword, presence: .present) }
	public static var operator_: TokenSyntax { makeToken(.operatorKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `precedencegroup`: TokenSyntax { makeToken(.precedencegroupKeyword, presence: .present) }
	public static var precedencegroup_: TokenSyntax { makeToken(.precedencegroupKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `protocol`: TokenSyntax { makeToken(.protocolKeyword, presence: .present) }
	public static var protocol_: TokenSyntax { makeToken(.protocolKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `struct`: TokenSyntax { makeToken(.structKeyword, presence: .present) }
	public static var struct_: TokenSyntax { makeToken(.structKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `subscript`: TokenSyntax { makeToken(.subscriptKeyword, presence: .present) }
	public static var subscript_: TokenSyntax { makeToken(.subscriptKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `typealias`: TokenSyntax { makeToken(.typealiasKeyword, presence: .present) }
	public static var typealias_: TokenSyntax { makeToken(.typealiasKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `var`: TokenSyntax { makeToken(.varKeyword, presence: .present) }
	public static var var_: TokenSyntax { makeToken(.varKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `fileprivate`: TokenSyntax { makeToken(.fileprivateKeyword, presence: .present) }
	public static var fileprivate_: TokenSyntax { makeToken(.fileprivateKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `internal`: TokenSyntax { makeToken(.internalKeyword, presence: .present) }
	public static var internal_: TokenSyntax { makeToken(.internalKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `private`: TokenSyntax { makeToken(.privateKeyword, presence: .present) }
	public static var private_: TokenSyntax { makeToken(.privateKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `public`: TokenSyntax { makeToken(.publicKeyword, presence: .present) }
	public static var public_: TokenSyntax { makeToken(.publicKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `static`: TokenSyntax { makeToken(.staticKeyword, presence: .present) }
	public static var static_: TokenSyntax { makeToken(.staticKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `defer`: TokenSyntax { makeToken(.deferKeyword, presence: .present) }
	public static var defer_: TokenSyntax { makeToken(.deferKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `if`: TokenSyntax { makeToken(.ifKeyword, presence: .present) }
	public static var if_: TokenSyntax { makeToken(.ifKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `guard`: TokenSyntax { makeToken(.guardKeyword, presence: .present) }
	public static var guard_: TokenSyntax { makeToken(.guardKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `do`: TokenSyntax { makeToken(.doKeyword, presence: .present) }
	public static var do_: TokenSyntax { makeToken(.doKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `repeat`: TokenSyntax { makeToken(.repeatKeyword, presence: .present) }
	public static var repeat_: TokenSyntax { makeToken(.repeatKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `else`: TokenSyntax { makeToken(.elseKeyword, presence: .present) }
	public static var else_: TokenSyntax { makeToken(.elseKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `for`: TokenSyntax { makeToken(.forKeyword, presence: .present) }
	public static var for_: TokenSyntax { makeToken(.forKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `in`: TokenSyntax { makeToken(.inKeyword, presence: .present) }
	public static var in_: TokenSyntax { makeToken(.inKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `while`: TokenSyntax { makeToken(.whileKeyword, presence: .present) }
	public static var while_: TokenSyntax { makeToken(.whileKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `return`: TokenSyntax { makeToken(.returnKeyword, presence: .present) }
	public static var return_: TokenSyntax { makeToken(.returnKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `break`: TokenSyntax { makeToken(.breakKeyword, presence: .present) }
	public static var `continue`: TokenSyntax { makeToken(.continueKeyword, presence: .present) }
	public static var `fallthrough`: TokenSyntax { makeToken(.fallthroughKeyword, presence: .present) }
	public static var `switch`: TokenSyntax { makeToken(.switchKeyword, presence: .present) }
	public static var switch_: TokenSyntax { makeToken(.switchKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `case`: TokenSyntax { makeToken(.caseKeyword, presence: .present) }
	public static var case_: TokenSyntax { makeToken(.caseKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `default`: TokenSyntax { makeToken(.defaultKeyword, presence: .present) }
	public static var `where`: TokenSyntax { makeToken(.whereKeyword, presence: .present) }
	public static var where_: TokenSyntax { makeToken(.whereKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `catch`: TokenSyntax { makeToken(.catchKeyword, presence: .present) }
	public static var `throw`: TokenSyntax { makeToken(.throwKeyword, presence: .present) }
	public static var throw_: TokenSyntax { makeToken(.throwKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `as`: TokenSyntax { makeToken(.asKeyword, presence: .present) }
	public static var as_: TokenSyntax { makeToken(.asKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `any`: TokenSyntax { makeToken(.anyKeyword, presence: .present) }
	public static var `false`: TokenSyntax { makeToken(.falseKeyword, presence: .present) }
	public static var `is`: TokenSyntax { makeToken(.isKeyword, presence: .present) }
	public static var is_: TokenSyntax { makeToken(.isKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `nil`: TokenSyntax { makeToken(.nilKeyword, presence: .present) }
	public static var nil_: TokenSyntax { makeToken(.nilKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `rethrows`: TokenSyntax { makeToken(.rethrowsKeyword, presence: .present) }
	public static var rethrows_: TokenSyntax { makeToken(.rethrowsKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `super`: TokenSyntax { makeToken(.superKeyword, presence: .present) }
	public static var super_: TokenSyntax { makeToken(.superKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var selfKeyword: TokenSyntax { makeToken(.selfKeyword, presence: .present) }
	public static var capitalSelf: TokenSyntax { makeToken(.capitalSelfKeyword, presence: .present) }
	public static var `true`: TokenSyntax { makeToken(.trueKeyword, presence: .present) }
	public static var `try`: TokenSyntax { makeToken(.tryKeyword, presence: .present) }
	public static var try_: TokenSyntax { makeToken(.tryKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var `throws`: TokenSyntax { makeToken(.throwsKeyword, presence: .present) }
	public static var throws_: TokenSyntax { makeToken(.throwsKeyword, presence: .present, trailingTrivia: [.spaces(1)]) }
	public static var __file__: TokenSyntax { makeToken(.__file__Keyword, presence: .present) }
	public static var __line__: TokenSyntax { makeToken(.__line__Keyword, presence: .present) }
	public static var __column__: TokenSyntax { makeToken(.__column__Keyword, presence: .present) }
	public static var __function__: TokenSyntax { makeToken(.__function__Keyword, presence: .present) }
	public static var __dso_handle__: TokenSyntax { makeToken(.__dso_handle__Keyword, presence: .present) }
	public static var wildcard: TokenSyntax { makeToken(.wildcardKeyword, presence: .present) }
	public static var leftParen: TokenSyntax { makeToken(.leftParen, presence: .present) }
	public static var rightParen: TokenSyntax { makeToken(.rightParen, presence: .present) }
	public static var leftBrace: TokenSyntax { makeToken(.leftBrace, presence: .present) }
	public static var rightBrace: TokenSyntax { makeToken(.rightBrace, presence: .present) }
	public static var leftSquareBracket: TokenSyntax { makeToken(.leftSquareBracket, presence: .present) }
	public static var rightSquareBracket: TokenSyntax { makeToken(.rightSquareBracket, presence: .present) }
	public static var leftAngle: TokenSyntax { makeToken(.leftAngle, presence: .present) }
	public static var rightAngle: TokenSyntax { makeToken(.rightAngle, presence: .present) }
	public static var period: TokenSyntax { makeToken(.period, presence: .present) }
	public static var prefixPeriod: TokenSyntax { makeToken(.prefixPeriod, presence: .present) }
	public static var comma: TokenSyntax { makeToken(.comma, presence: .present) }
	public static var ellipsis: TokenSyntax { makeToken(.ellipsis, presence: .present) }
	public static var colon: TokenSyntax { makeToken(.colon, presence: .present) }
	public static var semicolon: TokenSyntax { makeToken(.semicolon, presence: .present) }
	public static var equal: TokenSyntax { makeToken(.equal, presence: .present) }
	public static var atSign: TokenSyntax { makeToken(.atSign, presence: .present) }
	public static var pound: TokenSyntax { makeToken(.pound, presence: .present) }
	public static var prefixAmpersand: TokenSyntax { makeToken(.prefixAmpersand, presence: .present) }
	public static var arrow: TokenSyntax { makeToken(.arrow, presence: .present) }
	public static var backtick: TokenSyntax { makeToken(.backtick, presence: .present) }
	public static var backslash: TokenSyntax { makeToken(.backslash, presence: .present) }
	public static var exclamationMark: TokenSyntax { makeToken(.exclamationMark, presence: .present) }
	public static var postfixQuestionMark: TokenSyntax { makeToken(.postfixQuestionMark, presence: .present) }
	public static var infixQuestionMark: TokenSyntax { makeToken(.infixQuestionMark, presence: .present) }
	public static var stringQuote: TokenSyntax { makeToken(.stringQuote, presence: .present) }
	public static var singleQuote: TokenSyntax { makeToken(.singleQuote, presence: .present) }
	public static var multilineStringQuote: TokenSyntax { makeToken(.multilineStringQuote, presence: .present) }
	public static var poundKeyPath: TokenSyntax { makeToken(.poundKeyPathKeyword, presence: .present) }
	public static var poundLine: TokenSyntax { makeToken(.poundLineKeyword, presence: .present) }
	public static var poundSelector: TokenSyntax { makeToken(.poundSelectorKeyword, presence: .present) }
	public static var poundFile: TokenSyntax { makeToken(.poundFileKeyword, presence: .present) }
	public static var poundFileID: TokenSyntax { makeToken(.poundFileIDKeyword, presence: .present) }
	public static var poundFilePath: TokenSyntax { makeToken(.poundFilePathKeyword, presence: .present) }
	public static var poundColumn: TokenSyntax { makeToken(.poundColumnKeyword, presence: .present) }
	public static var poundFunction: TokenSyntax { makeToken(.poundFunctionKeyword, presence: .present) }
	public static var poundDsohandle: TokenSyntax { makeToken(.poundDsohandleKeyword, presence: .present) }
	public static var poundAssert: TokenSyntax { makeToken(.poundAssertKeyword, presence: .present) }
	public static var poundSourceLocation: TokenSyntax { makeToken(.poundSourceLocationKeyword, presence: .present) }
	public static var poundWarning: TokenSyntax { makeToken(.poundWarningKeyword, presence: .present) }
	public static var poundError: TokenSyntax { makeToken(.poundErrorKeyword, presence: .present) }
	public static var poundIf: TokenSyntax { makeToken(.poundIfKeyword, presence: .present) }
	public static var poundElse: TokenSyntax { makeToken(.poundElseKeyword, presence: .present) }
	public static var poundElseif: TokenSyntax { makeToken(.poundElseifKeyword, presence: .present) }
	public static var poundEndif: TokenSyntax { makeToken(.poundEndifKeyword, presence: .present) }
	public static var poundAvailable: TokenSyntax { makeToken(.poundAvailableKeyword, presence: .present) }
	public static var poundFileLiteral: TokenSyntax { makeToken(.poundFileLiteralKeyword, presence: .present) }
	public static var poundImageLiteral: TokenSyntax { makeToken(.poundImageLiteralKeyword, presence: .present) }
	public static var poundColorLiteral: TokenSyntax { makeToken(.poundColorLiteralKeyword, presence: .present) }
	public static func integerLiteral(_ value: String) -> TokenSyntax { makeToken(.integerLiteral(value), presence: .present) }
	public static func floatingLiteral(_ value: String) -> TokenSyntax { makeToken(.floatingLiteral(value), presence: .present) }
	public static func stringLiteral(_ value: String) -> TokenSyntax { makeToken(.stringLiteral(value), presence: .present) }
	public static func unknown(_ value: String) -> TokenSyntax { makeToken(.unknown(value), presence: .present) }
	public static func identifier(_ value: String) -> TokenSyntax { makeToken(.identifier(value), presence: .present) }
	public static func unspacedBinaryOperator(_ value: String) -> TokenSyntax { makeToken(.unspacedBinaryOperator(value), presence: .present) }
	public static func spacedBinaryOperator(_ value: String) -> TokenSyntax { makeToken(.spacedBinaryOperator(value), presence: .present) }
	public static func postfixOperator(_ value: String) -> TokenSyntax { makeToken(.postfixOperator(value), presence: .present) }
	public static func prefixOperator(_ value: String) -> TokenSyntax { makeToken(.prefixOperator(value), presence: .present) }
	public static func dollarIdentifier(_ value: String) -> TokenSyntax { makeToken(.dollarIdentifier(value), presence: .present) }
	public static func contextual(_ value: String) -> TokenSyntax { makeToken(.contextualKeyword(value), presence: .present) }
	public static func rawStringDelimiter(_ value: String) -> TokenSyntax { makeToken(.rawStringDelimiter(value), presence: .present) }
	public static func stringSegment(_ value: String) -> TokenSyntax { makeToken(.stringSegment(value), presence: .present) }
	public static var stringInterpolationAnchor: TokenSyntax { makeToken(.stringInterpolationAnchor, presence: .present) }
	public static var `yield`: TokenSyntax { makeToken(.yield, presence: .present) }
	public static var yield_: TokenSyntax { makeToken(.yield, presence: .present, trailingTrivia: [.spaces(1)]) }
}

extension TokenSyntax {
	public static func +(_ lhs: Trivia, _ rhs: TokenSyntax) -> TokenSyntax {
		rhs.withLeadingTrivia(lhs)
	}
	public static func +(_ lhs: TokenSyntax, _ rhs: Trivia) -> TokenSyntax {
		lhs.withTrailingTrivia(rhs)
	}
}