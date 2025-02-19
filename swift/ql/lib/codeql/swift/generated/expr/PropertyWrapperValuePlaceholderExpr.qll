// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `PropertyWrapperValuePlaceholderExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.expr.ExprImpl::Impl as ExprImpl
import codeql.swift.elements.expr.OpaqueValueExpr

/**
 * INTERNAL: This module contains the fully generated definition of `PropertyWrapperValuePlaceholderExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A placeholder substituting property initializations with `=` when the property has a property
   * wrapper with an initializer.
   * INTERNAL: Do not reference the `Generated::PropertyWrapperValuePlaceholderExpr` class directly.
   * Use the subclass `PropertyWrapperValuePlaceholderExpr`, where the following predicates are available.
   */
  class PropertyWrapperValuePlaceholderExpr extends Synth::TPropertyWrapperValuePlaceholderExpr,
    ExprImpl::Expr
  {
    override string getAPrimaryQlClass() { result = "PropertyWrapperValuePlaceholderExpr" }

    /**
     * Gets the wrapped value of this property wrapper value placeholder expression, if it exists.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateWrappedValue() {
      result =
        Synth::convertExprFromRaw(Synth::convertPropertyWrapperValuePlaceholderExprToRaw(this)
              .(Raw::PropertyWrapperValuePlaceholderExpr)
              .getWrappedValue())
    }

    /**
     * Gets the wrapped value of this property wrapper value placeholder expression, if it exists.
     */
    final Expr getWrappedValue() {
      exists(Expr immediate |
        immediate = this.getImmediateWrappedValue() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Holds if `getWrappedValue()` exists.
     */
    final predicate hasWrappedValue() { exists(this.getWrappedValue()) }

    /**
     * Gets the placeholder of this property wrapper value placeholder expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    OpaqueValueExpr getImmediatePlaceholder() {
      result =
        Synth::convertOpaqueValueExprFromRaw(Synth::convertPropertyWrapperValuePlaceholderExprToRaw(this)
              .(Raw::PropertyWrapperValuePlaceholderExpr)
              .getPlaceholder())
    }

    /**
     * Gets the placeholder of this property wrapper value placeholder expression.
     */
    final OpaqueValueExpr getPlaceholder() {
      exists(OpaqueValueExpr immediate |
        immediate = this.getImmediatePlaceholder() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
