// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `BoundGenericEnumType`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.BoundGenericTypeImpl::Impl as BoundGenericTypeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `BoundGenericEnumType` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::BoundGenericEnumType` class directly.
   * Use the subclass `BoundGenericEnumType`, where the following predicates are available.
   */
  class BoundGenericEnumType extends Synth::TBoundGenericEnumType,
    BoundGenericTypeImpl::BoundGenericType
  {
    override string getAPrimaryQlClass() { result = "BoundGenericEnumType" }
  }
}
