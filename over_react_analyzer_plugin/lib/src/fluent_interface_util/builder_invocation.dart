import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer_plugin/protocol/protocol_common.dart';
import 'package:analyzer_plugin/utilities/change_builder/change_builder_dart.dart';
import 'package:analyzer_plugin/utilities/fixes/fixes.dart';

const missingBuilderMessageSuffix = ' Are you missing the builder invocation?';
const missingBuilderFixMessage = 'Add builder invocation.';

const addBuilderInvocationFix = FixKind(
    'over_react_add_builder_invocation', 200, missingBuilderFixMessage);

bool couldBeMissingBuilderInvocation(Expression expression) {
  // TODO actually check against UiProps, or at the very least against Map
  return expression.staticType.name?.endsWith('Props') ?? false;
}

/// Use [buildMissingInvocationEdits] instead.
@deprecated
List<SourceEdit> getMissingInvocationBuilderEdits(Expression expression) {
  if (expression.unParenthesized != expression) {
    // Expression is already parenthesized
    return [
      new SourceEdit(expression.end, 0, '()'),
    ];
  } else if (expression.parent is ParenthesizedExpression) {
    // Expression is the child of a parenthesized expression
    return [
      new SourceEdit(expression.parent.end, 0, '()'),
    ];
  } else {
    if (expression is CascadeExpression) {
      // Expression is unparenthesized cascade
      return [
        new SourceEdit(expression.offset, 0, '('),
        new SourceEdit(expression.end + '('.length, 0, ')()'),
      ];
    } else {
      // Expression is unparenthesized without cascade
      return [
        new SourceEdit(expression.end, 0, '()'),
      ];
    }
  }
}

void buildMissingInvocationEdits(Expression expression, DartFileEditBuilder builder) {
  if (expression.unParenthesized != expression) {
    // Expression is already parenthesized
    builder.addSimpleInsertion(expression.end, '()');
  } else if (expression.parent is ParenthesizedExpression) {
    // Expression is the child of a parenthesized expression
    builder.addSimpleInsertion(expression.parent.end, '()');
  } else {
    if (expression is CascadeExpression) {
      // Expression is unparenthesized cascade
      builder.addSimpleInsertion(expression.offset, '(');
      builder.addSimpleInsertion(expression.end, ')()');
    } else {
      builder.addSimpleInsertion(expression.end, '()');
    }
  }
}
