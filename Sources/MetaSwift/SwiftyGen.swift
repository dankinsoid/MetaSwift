import Foundation
import SwiftSyntax

public class SwiftyGen: SyntaxVisitor {

  public func test() throws {
    let text =  """
                public func requests() -> Code {
                  let i = ""
                """
    let syntax = try SyntaxParser.parse(source: text)
    inspect(Syntax(syntax))
    let function = SyntaxFactory.makeSourceFile(
        statements: SyntaxFactory.makeCodeBlockItemList([
          SyntaxFactory.makeCodeBlockItem(
              item: Syntax(
                  SyntaxFactory.makeFunctionDecl(
                      attributes: nil,
                      modifiers: SyntaxFactory.makeModifierList([
                        SyntaxFactory.makeDeclModifier(
                            name: SyntaxFactory.makeToken(.publicKeyword, presence: .present, trailingTrivia: [.spaces(1)]),
                            detailLeftParen: nil,
                            detail: nil,
                            detailRightParen: nil
                        )
                      ]),
                      funcKeyword: SyntaxFactory.makeToken(.funcKeyword, presence: .present, trailingTrivia: [.spaces(1)]),
                      identifier: SyntaxFactory.makeToken(.identifier("requests"), presence: .present),
                      genericParameterClause: nil,
                      signature: SyntaxFactory.makeFunctionSignature(
                          input: SyntaxFactory.makeParameterClause(
                              leftParen: SyntaxFactory.makeToken(.leftParen, presence: .present),
                              parameterList: SyntaxFactory.makeBlankFunctionParameterList(),
                              rightParen: SyntaxFactory.makeToken(.rightParen, presence: .present)
                          ),
                          asyncOrReasyncKeyword: nil,
                          throwsOrRethrowsKeyword: nil,
                          output: SyntaxFactory.makeReturnClause(
                              arrow: SyntaxFactory.makeToken(.arrow, presence: .present, leadingTrivia: [.spaces(1)], trailingTrivia: [.spaces(1)]),
                              returnType: SyntaxFactory.makeTypeIdentifier("Code")
                          )
                      ),
                      genericWhereClause: nil,
                      body: SyntaxFactory.makeCodeBlock(
                          leftBrace: SyntaxFactory.makeToken(.leftBrace, presence: .present, leadingTrivia: [.spaces(1)], trailingTrivia: [.newlines(1)]),
                          statements: SyntaxFactory.makeCodeBlockItemList([
                            SyntaxFactory.makeCodeBlockItem(
                                item: Syntax(
                                    SyntaxFactory.makeVariableDecl(
                                        attributes: nil,
                                        modifiers: nil,
                                        letOrVarKeyword: SyntaxFactory.makeToken(.letKeyword, presence: .present, leadingTrivia: [.tabs(1)], trailingTrivia: [.spaces(1)]),
                                        bindings: SyntaxFactory.makePatternBindingList([
                                          SyntaxFactory.makePatternBinding(
                                              pattern: PatternSyntax(
                                                  SyntaxFactory.makeIdentifierPattern(
                                                      identifier: SyntaxFactory.makeToken(.identifier("value"), presence: .present)
                                                  )
                                              ),
                                              typeAnnotation: nil,
                                              initializer: nil,
                                              accessor: nil,
                                              trailingComma: nil
                                          )
                                        ])
                                    )
                                ),
                                semicolon: nil,
                                errorTokens: nil
                            ),
                            SyntaxFactory.makeCodeBlockItem(
                                item: Syntax(
                                    SyntaxFactory.makeVariableDecl(
                                        attributes: nil,
                                        modifiers: nil,
                                        letOrVarKeyword: SyntaxFactory.makeToken(.letKeyword, presence: .present, leadingTrivia: [.tabs(1)], trailingTrivia: [.spaces(1)]),
                                        bindings: SyntaxFactory.makePatternBindingList([
                                          SyntaxFactory.makePatternBinding(
                                              pattern: PatternSyntax(
                                                  SyntaxFactory.makeIdentifierPattern(
                                                      identifier: SyntaxFactory.makeToken(.identifier("value"), presence: .present)
                                                  )
                                              ),
                                              typeAnnotation: nil,
                                              initializer: nil,
                                              accessor: nil,
                                              trailingComma: nil
                                          )
                                        ])
                                    )
                                ),
                                semicolon: nil,
                                errorTokens: nil
                            )
                          ]),
                          rightBrace: SyntaxFactory.makeToken(.rightBrace, presence: .present, leadingTrivia: [.newlines(1)])
                      )
                  )
              ),
              semicolon: nil,
              errorTokens: nil
          )
        ]),
        eofToken: SyntaxFactory.makeToken(.eof, presence: .present)
    )

    var string = ""
    print(function, to: &string)
    print(function)
  }

  func inspect(_ node: Syntax) {
    print(node.syntaxNodeType)
    print(node)
    for child in node.children {
      inspect(child)
    }
  }

  public func code() -> Code {
        .if(.let("name") |= "name") {
          Code.if(.let("name") |= "name") {

          }.else(if: "") {

          } else: {

          }
          Code.var("to", of: .Int) |= "44"
          Code.func("plus", ["_ lhs": .Int, "_ rhs": .String], .async, .throws, of: .Int, where: .Int |== .String, .Int.Ss | "SomeProtocol") {

          }
          "to" |= "55"

          Code.struct("T", of: .Int, "Codable") {
            Code.var("to", of: .Int) |= "44"

          }

          Code.extension(.Int) {

          }
        }
    }

  @CodeBuilder
  func code2() -> Code {
    """
    func requests() -> Code {
      let i = ""
    """
    """
    }
    """
  }
}

@SyntaxBuilder
func someSyntax() -> CodeBlockItemListSyntax {
  SyntaxFactory.makeToken(.publicKeyword, presence: .present)
  if 5 == 5 {
    SyntaxFactory.makeToken(.publicKeyword, presence: .present)
  }
  for _ in 0...10 {
    SyntaxFactory.makeToken(.publicKeyword, presence: .present)
  }
}