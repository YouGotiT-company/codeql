// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `UnresolvedType`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.ErrorElementImpl::Impl as ErrorElementImpl
import codeql.swift.elements.type.TypeImpl::Impl as TypeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `UnresolvedType` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::UnresolvedType` class directly.
   * Use the subclass `UnresolvedType`, where the following predicates are available.
   */
  class UnresolvedType extends Synth::TUnresolvedType, TypeImpl::Type,
    ErrorElementImpl::ErrorElement
  {
    override string getAPrimaryQlClass() { result = "UnresolvedType" }
  }
}
