// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `ExprPattern`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.pattern.PatternImpl::Impl as PatternImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ExprPattern` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::ExprPattern` class directly.
   * Use the subclass `ExprPattern`, where the following predicates are available.
   */
  class ExprPattern extends Synth::TExprPattern, PatternImpl::Pattern {
    override string getAPrimaryQlClass() { result = "ExprPattern" }

    /**
     * Gets the sub expression of this expression pattern.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertExprPatternToRaw(this)
              .(Raw::ExprPattern)
              .getSubExpr())
    }

    /**
     * Gets the sub expression of this expression pattern.
     */
    final Expr getSubExpr() {
      exists(Expr immediate |
        immediate = this.getImmediateSubExpr() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
