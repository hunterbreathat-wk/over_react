// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators
part of 'with_legacy_props_mixin.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
final $BasicComponentFactory = registerComponent2(
  () => _$BasicComponent(),
  builderFactory: _$Basic,
  componentClass: BasicComponent,
  isWrapper: false,
  parentType: null,
  displayName: 'Basic',
);

_$$BasicProps _$Basic([Map backingProps]) => backingProps == null
    ? _$$BasicProps(JsBackedMap())
    : _$$BasicProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$BasicProps extends UiProps
    with
        BasicPropsMixin,
        $BasicPropsMixin, // If this generated mixin is undefined, it's likely because BasicPropsMixin is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of BasicPropsMixin.
        TransitionPropsMixin,
        $TransitionPropsMixin // If this generated mixin is undefined, it's likely because TransitionPropsMixin is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of TransitionPropsMixin.
    implements
        BasicProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$BasicProps(Map backingMap) : this._props = {} {
    this._props = backingMap ?? {};
  }

  /// The backing props map proxied by this class.
  @override
  Map get props => _props;
  Map _props;

  /// Let `UiProps` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The `ReactComponentFactory` associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $BasicComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => '';
}

// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$BasicComponent extends BasicComponent {
  _$$BasicProps _cachedTypedProps;

  @override
  _$$BasicProps get props => _cachedTypedProps;

  @override
  set props(Map value) {
    assert(
        getBackingMap(value) is JsBackedMap,
        'Component2.props should never be set directly in '
        'production. If this is required for testing, the '
        'component should be rendered within the test. If '
        'that does not have the necessary result, the last '
        'resort is to use typedPropsFactoryJs.');
    super.props = value;
    _cachedTypedProps = typedPropsFactoryJs(getBackingMap(value));
  }

  @override
  _$$BasicProps typedPropsFactoryJs(JsBackedMap backingMap) =>
      _$$BasicProps(backingMap);

  @override
  _$$BasicProps typedPropsFactory(Map backingMap) => _$$BasicProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, comprising all props mixins used by BasicProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because BasicPropsMixin is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of BasicPropsMixin.
        BasicPropsMixin: $BasicPropsMixin.meta,
        // If this generated mixin is undefined, it's likely because TransitionPropsMixin is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of TransitionPropsMixin.
        TransitionPropsMixin: $TransitionPropsMixin.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $BasicPropsMixin on BasicPropsMixin {
  static const PropsMeta meta = _$metaForBasicPropsMixin;
  @override
  String get basicProp =>
      props[_$key__basicProp__BasicPropsMixin] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  @override
  set basicProp(String value) =>
      props[_$key__basicProp__BasicPropsMixin] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__basicProp__BasicPropsMixin =
      PropDescriptor(_$key__basicProp__BasicPropsMixin);
  static const String _$key__basicProp__BasicPropsMixin =
      'BasicPropsMixin.basicProp';

  static const List<PropDescriptor> $props = [
    _$prop__basicProp__BasicPropsMixin
  ];
  static const List<String> $propKeys = [_$key__basicProp__BasicPropsMixin];
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForBasicPropsMixin = PropsMeta(
  fields: $BasicPropsMixin.$props,
  keys: $BasicPropsMixin.$propKeys,
);
