// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `YieldExpr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.internal.generated.YieldExpr

/**
 * INTERNAL: This module contains the customizable definition of `YieldExpr` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A `yield` expression. For example:
   * ```
   * let one = #[coroutine]
   *     || {
   *         yield 1;
   *     };
   * ```
   */
  class YieldExpr extends Generated::YieldExpr { }
}
