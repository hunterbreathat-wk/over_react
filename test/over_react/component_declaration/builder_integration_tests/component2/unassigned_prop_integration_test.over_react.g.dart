// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unassigned_prop_integration_test.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
final $FooComponentFactory = registerComponent2(
  () => new _$FooComponent(),
  builderFactory: Foo,
  componentClass: FooComponent,
  isWrapper: false,
  parentType: null,
  displayName: 'Foo',
);

abstract class _$FooPropsAccessorsMixin implements _$FooProps {
  @override
  Map get props;

  /// <!-- Generated from [_$FooProps.stringProp] -->
  @override
  String get stringProp => props[_$key__stringProp___$FooProps];

  /// <!-- Generated from [_$FooProps.stringProp] -->
  @override
  set stringProp(String value) => props[_$key__stringProp___$FooProps] = value;

  /// <!-- Generated from [_$FooProps.unassignedProp] -->
  @override
  String get unassignedProp => props[_$key__unassignedProp___$FooProps];

  /// <!-- Generated from [_$FooProps.unassignedProp] -->
  @override
  set unassignedProp(String value) =>
      props[_$key__unassignedProp___$FooProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__stringProp___$FooProps =
      const PropDescriptor(_$key__stringProp___$FooProps);
  static const PropDescriptor _$prop__unassignedProp___$FooProps =
      const PropDescriptor(_$key__unassignedProp___$FooProps);
  static const String _$key__stringProp___$FooProps = 'FooProps.stringProp';
  static const String _$key__unassignedProp___$FooProps =
      'FooProps.unassignedProp';

  static const List<PropDescriptor> $props = const [
    _$prop__stringProp___$FooProps,
    _$prop__unassignedProp___$FooProps
  ];
  static const List<String> $propKeys = const [
    _$key__stringProp___$FooProps,
    _$key__unassignedProp___$FooProps
  ];
}

const PropsMeta _$metaForFooProps = const PropsMeta(
  fields: _$FooPropsAccessorsMixin.$props,
  keys: _$FooPropsAccessorsMixin.$propKeys,
);

class FooProps extends _$FooProps with _$FooPropsAccessorsMixin {
  static const PropsMeta meta = _$metaForFooProps;
}

_$$FooProps _$Foo([Map backingProps]) => backingProps == null
    ? new _$$FooProps$JsMap(new JsBackedMap())
    : new _$$FooProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
abstract class _$$FooProps extends _$FooProps
    with _$FooPropsAccessorsMixin
    implements FooProps {
  _$$FooProps._();

  factory _$$FooProps(Map backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return new _$$FooProps$JsMap(backingMap);
    } else {
      return new _$$FooProps$PlainMap(backingMap);
    }
  }

  /// Let [UiProps] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The [ReactComponentFactory] associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $FooComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => 'FooProps.';
}

// Concrete props implementation that can be backed by any [Map].
class _$$FooProps$PlainMap extends _$$FooProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$FooProps$PlainMap(Map backingMap)
      : this._props = {},
        super._() {
    this._props = backingMap ?? {};
  }

  /// The backing props map proxied by this class.
  @override
  Map get props => _props;
  Map _props;
}

// Concrete props implementation that can only be backed by [JsMap],
// allowing dart2js to compile more optimal code for key-value pair reads/writes.
class _$$FooProps$JsMap extends _$$FooProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$FooProps$JsMap(JsBackedMap backingMap)
      : this._props = new JsBackedMap(),
        super._() {
    this._props = backingMap ?? new JsBackedMap();
  }

  /// The backing props map proxied by this class.
  @override
  JsBackedMap get props => _props;
  JsBackedMap _props;
}

// Concrete component implementation mixin.
//
// Implements typed props/state factories, defaults `consumedPropKeys` to the keys
// generated for the associated props class.
class _$FooComponent extends FooComponent {
  _$$FooProps$JsMap _cachedTypedProps;

  @override
  _$$FooProps$JsMap get props => _cachedTypedProps;

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
  _$$FooProps$JsMap typedPropsFactoryJs(JsBackedMap backingMap) =>
      new _$$FooProps$JsMap(backingMap);

  @override
  _$$FooProps typedPropsFactory(Map backingMap) => new _$$FooProps(backingMap);

  /// Let [UiComponent] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, taken from _$FooProps.
  /// Used in [UiProps.consumedProps] if [consumedProps] is not overridden.
  @override
  final List<ConsumedProps> $defaultConsumedProps = const [_$metaForFooProps];
}
