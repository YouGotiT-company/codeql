// generated by codegen/codegen.py, do not edit
/**
 * This module provides the public class `AvailabilitySpec`.
 */

private import AvailabilitySpecImpl
import codeql.swift.elements.AstNode

/**
 * An availability spec, that is, part of an `AvailabilityInfo` condition. For example `iOS 12` and `*` in:
 * ```
 * if #available(iOS 12, *)
 * ```
 */
final class AvailabilitySpec = Impl::AvailabilitySpec;
