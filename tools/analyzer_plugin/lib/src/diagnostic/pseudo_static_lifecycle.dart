import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:over_react_analyzer_plugin/src/diagnostic/visitors/non_static_reference_visitor.dart';
import 'package:over_react_analyzer_plugin/src/diagnostic_contributor.dart';

const staticMethodNames = ['getDefaultProps', 'defaultProps', 'getDerivedStateFromProps'];
const instanceMemberWhitelist = [
  'newProps',
  'newState',
  'typedPropsFactory',
  'typedPropsFactoryJs',
  'typedStateFactory',
  'typedStateFactoryJs',
];

class PseudoStaticLifecycleDiagnostic extends DiagnosticContributor {
  static final code = DiagnosticCode(
      'over_react_pseudo_static_lifecycle',
      '\'{0}\' must be treated as a static method; only super-calls '
          'and props/state utility methods (like \'newProps\' and \'typedPropsFactory\') are allowed.',
      AnalysisErrorSeverity.ERROR,
      AnalysisErrorType.STATIC_WARNING);

  @override
  computeErrors(result, collector) async {
    // This is the return type even if it's not explicitly declared.
    final visitor = LifecycleMethodVisitor();
    result.unit.accept(visitor);

    for (final reference in visitor.nonStaticReferences) {
      if (reference is SimpleIdentifier && instanceMemberWhitelist.contains(reference.name)) {
        continue;
      }

      int offset;
      int end;

      final enclosingMethodName = reference.thisOrAncestorOfType<MethodDeclaration>().name;
      if (reference is SuperExpression || reference is ThisExpression) {
        final parent = reference.parent;
        if (parent is MethodInvocation) {
          if (parent.methodName.name == enclosingMethodName.name) {
            // Ignore super-calls to same method
            continue;
          } else {
            // Include the `super.`/`this.` in the error region
            offset = parent.offset;
            end = parent.methodName.end;
          }
        } else if (parent is PropertyAccess) {
          if (parent.propertyName.name == enclosingMethodName.name) {
            // Ignore super-calls to same getter
            continue;
          } else {
            // Include the `super.`/`this.` in the error region
            offset = parent.offset;
            end = parent.end;
          }
        }
      }

      offset ??= reference.offset;
      end ??= reference.end;

      collector.addError(
        code,
        result.location(offset: offset, end: end),
        errorMessageArgs: [enclosingMethodName.name],
      );
    }
  }
}

class LifecycleMethodVisitor extends GeneralizingAstVisitor<void> {
  List<Expression> nonStaticReferences = [];

  @override
  void visitCompilationUnit(CompilationUnit node) {
    node.visitChildren(this);
  }

  @override
  void visitMixinDeclaration(MixinDeclaration node) {
    visitClassOrMixinDeclaration(node);
  }

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    visitClassOrMixinDeclaration(node);
  }

  void visitClassOrMixinDeclaration(ClassOrMixinDeclaration node) {
    for (final member in node.members) {
      if (member is MethodDeclaration && staticMethodNames.contains(member.name.name)) {
        final visitor = ReferenceVisitor();
        member.body?.accept(visitor);
        nonStaticReferences.addAll(visitor.nonStaticReferences);
      }
    }
  }
}