// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `ForceValueExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.expr.ExprImpl::Impl as ExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ForceValueExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::ForceValueExpr` class directly.
   * Use the subclass `ForceValueExpr`, where the following predicates are available.
   */
  class ForceValueExpr extends Synth::TForceValueExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "ForceValueExpr" }

    /**
     * Gets the sub expression of this force value expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertForceValueExprToRaw(this)
              .(Raw::ForceValueExpr)
              .getSubExpr())
    }

    /**
     * Gets the sub expression of this force value expression.
     */
    final Expr getSubExpr() {
      exists(Expr immediate |
        immediate = this.getImmediateSubExpr() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
