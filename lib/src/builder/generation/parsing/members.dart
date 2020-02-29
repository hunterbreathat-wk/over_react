import 'package:analyzer/dart/ast/ast.dart';
import 'package:meta/meta.dart';
import 'package:over_react/src/component_declaration/annotations.dart' as annotations;
import 'package:over_react/src/util/pretty_print.dart';
import 'package:over_react/src/util/string_util.dart';
import 'package:transformer_utils/transformer_utils.dart';

import '../../util.dart';
import 'ast_util.dart';
import 'member_detection.dart';
import 'util.dart';
import 'validation.dart';
import 'version.dart';

part 'members/component.dart';
part 'members/factory.dart';
part 'members/props_and_state.dart';

abstract class BoilerplateMember {
  final int declarationConfidence;

  BoilerplateMember(this.declarationConfidence);

  CompilationUnitMember get node;

  /// The confidence that, assuming that [node] has been correctly identified as this type of boilerplate member,
  /// it belongs to a boilerplate declaration of a given version.
  Map<BoilerplateVersion, int> get versionConfidence;

  void validate(BoilerplateVersion version, ValidationErrorCollector errorCollector);

  SimpleIdentifier get name;

  @override
  String toString() => '${super.toString()} (${name.name}) ${prettyPrintMap(versionConfidence)}';

  String get debugString {
    final confidence = versionConfidence;
    final sortedKeys = BoilerplateVersion.values.where(confidence.containsKey);
    final shorthandConfidence = {
      for (var key in sortedKeys) '${key.toString().split('.').last}': confidence[key],
    };

    return '${runtimeType.toString()}; confidence:$shorthandConfidence';
  }
}

class BoilerplateMembers {
  final factories = <BoilerplateFactory>[];
  final props = <BoilerplateProps>[];
  final propsMixins = <BoilerplatePropsMixin>[];
  final components = <BoilerplateComponent>[];
  final states = <BoilerplateState>[];
  final stateMixins = <BoilerplateStateMixin>[];

  Iterable<BoilerplateMember> get allMembers => allMembersLists.expand((i) => i);
  List<List<BoilerplateMember>> get allMembersLists => [
    factories,
    props,
    propsMixins,
    components,
    states,
    stateMixins,
  ];

  bool get isEmpty => allMembersLists.every((list) => list.isEmpty);
  bool get isNotEmpty => !isEmpty;

  BoilerplateMembers.detect(CompilationUnit unit) {
    BoilerplateMemberDetector()
      ..members = this
      ..detect(unit);
  }

  toString() => 'BoilerplateMembers:${prettyPrintMap({
    'factories': factories,
    'props': props,
    'propsMixins': propsMixins,
    'components': components,
    'states': states,
    'stateMixins': stateMixins,
  }..removeWhere((_, value) => value.isEmpty))}';
}
