import 'package:analyzer/dart/ast/ast.dart';
import 'package:over_react/src/builder/util.dart';
import 'package:over_react/src/component_declaration/annotations.dart' as annotations;
import 'package:transformer_utils/transformer_utils.dart';

import '../parsing.dart';
import 'names.dart';
import 'util.dart';

class ComponentFactoryGenerator extends Generator {
  final ComponentNames componentNames;
  final String factoryName;

  final BoilerplateComponent component;
  final bool isComponent2;

  ComponentFactoryGenerator.legacy(LegacyClassComponentDeclaration declaration)
      : factoryName = declaration.factory.name.name,
        componentNames = ComponentNames(declaration.component.name.name),
        component = declaration.component,
        isComponent2 = declaration.isComponent2;

  ComponentFactoryGenerator(ClassComponentDeclaration declaration)
      : factoryName = declaration.factory.name.name,
        componentNames = ComponentNames(declaration.component.name.name),
        component = declaration.component,
        isComponent2 = true;

  @override
  void generate() {
    _generateClassComponentFactory();
  }

  void _generateClassComponentFactory() {
    String parentTypeParam = 'null';
    String parentTypeParamComment = '';

    Identifier parentType = component.configSubtypeOf;
    if (parentType != null) {
      parentTypeParamComment = ' /* from `subtypeOf: ${getSpan(sourceFile, parentType).text}` */';

      final parentNames = ComponentNames(parentType.name);
      parentTypeParam = parentNames.componentFactoryName;
    }

    if (parentTypeParam == componentNames.componentFactoryName) {
      /// It doesn't make sense to have a component subtype itself, and also an error occurs
      /// if a component's factory variable tries to reference itself during its initialization.
      /// Therefore, this is not allowed.
      // todo move to validation
      logger.severe(messageWithSpan('A component cannot be a subtype of itself.',
          span: getSpan(sourceFile, parentType)));
    }

    if (isComponent2) {
      outputContentsBuffer
        ..writeln('// React component factory implementation.')
        ..writeln('//')
        ..writeln('// Registers component implementation and links type meta to builder factory.')
        ..writeln('final ${componentNames.componentFactoryName}'
            ' = registerComponent2(() => ${componentNames.implName}(),')
        ..writeln('    builderFactory: $factoryName,')
        ..writeln('    componentClass: ${componentNames.componentName},')
        ..writeln('    isWrapper: ${component.meta.isWrapper},')
        ..writeln('    parentType: $parentTypeParam,$parentTypeParamComment')
        ..writeln('    displayName: ${stringLiteral(factoryName)},');

      if ((component.meta as annotations.Component2).isErrorBoundary) {
        // Override `skipMethods` as an empty list so that
        // the `componentDidCatch` and `getDerivedStateFromError`
        // lifecycle methods are included in the component's JS bindings.
        outputContentsBuffer.writeln('    skipMethods: const [],');
      }

      outputContentsBuffer..writeln(');')..writeln();
    } else {
      outputContentsBuffer
        ..writeln('// React component factory implementation.')
        ..writeln('//')
        ..writeln('// Registers component implementation and links type meta to builder factory.')
        ..writeln(
            'final ${componentNames.componentFactoryName} = registerComponent(() => ${componentNames.implName}(),')
        ..writeln('    builderFactory: $factoryName,')
        ..writeln('    componentClass: ${componentNames.componentName},')
        ..writeln('    isWrapper: ${component.meta.isWrapper},')
        ..writeln('    parentType: $parentTypeParam,$parentTypeParamComment')
        ..writeln('    displayName: ${stringLiteral(factoryName)}')
        ..writeln(');')
        ..writeln();
    }
  }
}