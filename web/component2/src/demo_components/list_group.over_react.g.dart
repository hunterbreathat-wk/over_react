// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package, unnecessary_null_in_if_null_operators, prefer_null_aware_operators
part of 'list_group.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
final $ListGroupComponentFactory = registerComponent2(
  () => _$ListGroupComponent(),
  builderFactory: _$ListGroup,
  componentClass: ListGroupComponent,
  isWrapper: false,
  parentType: null,
  displayName: 'ListGroup',
);

_$$ListGroupProps _$ListGroup([Map backingProps]) => backingProps == null
    ? _$$ListGroupProps(JsBackedMap())
    : _$$ListGroupProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
class _$$ListGroupProps extends UiProps
    with
        ListGroupProps,
        $ListGroupProps // If this generated mixin is undefined, it's likely because ListGroupProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of ListGroupProps.
{
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$ListGroupProps(Map backingMap) : this._props = {} {
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
      super.componentFactory ?? $ListGroupComponentFactory;

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
class _$ListGroupComponent extends ListGroupComponent {
  _$$ListGroupProps _cachedTypedProps;

  @override
  _$$ListGroupProps get props => _cachedTypedProps;

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
  _$$ListGroupProps typedPropsFactoryJs(JsBackedMap backingMap) =>
      _$$ListGroupProps(backingMap);

  @override
  _$$ListGroupProps typedPropsFactory(Map backingMap) =>
      _$$ListGroupProps(backingMap);

  /// Let `UiComponent` internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, comprising all props mixins used by ListGroupProps.
  /// Used in `*ConsumedProps` methods if [consumedProps] is not overridden.
  @override
  get $defaultConsumedProps => propsMeta.all;

  @override
  PropsMetaCollection get propsMeta => const PropsMetaCollection({
        // If this generated mixin is undefined, it's likely because ListGroupProps is not a valid `mixin`-based props mixin, or because it is but the generated mixin was not exported. Check the declaration of ListGroupProps.
        ListGroupProps: $ListGroupProps.meta,
      });
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.'
    ' EXCEPTION: this may be used in legacy boilerplate until'
    ' it is transitioned to the new mixin-based boilerplate.')
mixin $ListGroupProps on ListGroupProps {
  static const PropsMeta meta = _$metaForListGroupProps;
  @override
  ListGroupElementType get elementType =>
      props[_$key__elementType__ListGroupProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  @override
  set elementType(ListGroupElementType value) =>
      props[_$key__elementType__ListGroupProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__elementType__ListGroupProps =
      PropDescriptor(_$key__elementType__ListGroupProps);
  static const String _$key__elementType__ListGroupProps =
      'ListGroupProps.elementType';

  static const List<PropDescriptor> $props = [
    _$prop__elementType__ListGroupProps
  ];
  static const List<String> $propKeys = [_$key__elementType__ListGroupProps];
}

@Deprecated('This API is for use only within generated code.'
    ' Do not reference it in your code, as it may change at any time.')
const PropsMeta _$metaForListGroupProps = PropsMeta(
  fields: $ListGroupProps.$props,
  keys: $ListGroupProps.$propKeys,
);
