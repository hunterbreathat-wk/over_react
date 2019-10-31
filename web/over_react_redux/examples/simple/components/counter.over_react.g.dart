// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// OverReactBuilder (package:over_react/src/builder.dart)
// **************************************************************************

// React component factory implementation.
//
// Registers component implementation and links type meta to builder factory.
final $CounterComponentFactory = registerComponent2(
  () => new _$CounterComponent(),
  builderFactory: Counter,
  componentClass: CounterComponent,
  isWrapper: false,
  parentType: null,
  displayName: 'Counter',
);

abstract class _$CounterPropsAccessorsMixin implements _$CounterProps {
  @override
  Map get props;

  /// <!-- Generated from [_$CounterProps.currentCount] -->
  @override
  int get currentCount =>
      props[_$key__currentCount___$CounterProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// <!-- Generated from [_$CounterProps.currentCount] -->
  @override
  set currentCount(int value) =>
      props[_$key__currentCount___$CounterProps] = value;

  /// <!-- Generated from [_$CounterProps.wrapperStyles] -->
  @override
  Map<String, dynamic> get wrapperStyles =>
      props[_$key__wrapperStyles___$CounterProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// <!-- Generated from [_$CounterProps.wrapperStyles] -->
  @override
  set wrapperStyles(Map<String, dynamic> value) =>
      props[_$key__wrapperStyles___$CounterProps] = value;

  /// <!-- Generated from [_$CounterProps.increment] -->
  @override
  void Function() get increment =>
      props[_$key__increment___$CounterProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// <!-- Generated from [_$CounterProps.increment] -->
  @override
  set increment(void Function() value) =>
      props[_$key__increment___$CounterProps] = value;

  /// <!-- Generated from [_$CounterProps.decrement] -->
  @override
  void Function() get decrement =>
      props[_$key__decrement___$CounterProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// <!-- Generated from [_$CounterProps.decrement] -->
  @override
  set decrement(void Function() value) =>
      props[_$key__decrement___$CounterProps] = value;

  /// <!-- Generated from [_$CounterProps.items] -->
  @override
  List get items =>
      props[_$key__items___$CounterProps] ??
      null; // Add ` ?? null` to workaround DDC bug: <https://github.com/dart-lang/sdk/issues/36052>;
  /// <!-- Generated from [_$CounterProps.items] -->
  @override
  set items(List value) => props[_$key__items___$CounterProps] = value;
  /* GENERATED CONSTANTS */
  static const PropDescriptor _$prop__currentCount___$CounterProps =
      const PropDescriptor(_$key__currentCount___$CounterProps);
  static const PropDescriptor _$prop__wrapperStyles___$CounterProps =
      const PropDescriptor(_$key__wrapperStyles___$CounterProps);
  static const PropDescriptor _$prop__increment___$CounterProps =
      const PropDescriptor(_$key__increment___$CounterProps);
  static const PropDescriptor _$prop__decrement___$CounterProps =
      const PropDescriptor(_$key__decrement___$CounterProps);
  static const PropDescriptor _$prop__items___$CounterProps =
      const PropDescriptor(_$key__items___$CounterProps);
  static const String _$key__currentCount___$CounterProps =
      'CounterProps.currentCount';
  static const String _$key__wrapperStyles___$CounterProps =
      'CounterProps.wrapperStyles';
  static const String _$key__increment___$CounterProps =
      'CounterProps.increment';
  static const String _$key__decrement___$CounterProps =
      'CounterProps.decrement';
  static const String _$key__items___$CounterProps = 'CounterProps.items';

  static const List<PropDescriptor> $props = const [
    _$prop__currentCount___$CounterProps,
    _$prop__wrapperStyles___$CounterProps,
    _$prop__increment___$CounterProps,
    _$prop__decrement___$CounterProps,
    _$prop__items___$CounterProps
  ];
  static const List<String> $propKeys = const [
    _$key__currentCount___$CounterProps,
    _$key__wrapperStyles___$CounterProps,
    _$key__increment___$CounterProps,
    _$key__decrement___$CounterProps,
    _$key__items___$CounterProps
  ];
}

const PropsMeta _$metaForCounterProps = const PropsMeta(
  fields: _$CounterPropsAccessorsMixin.$props,
  keys: _$CounterPropsAccessorsMixin.$propKeys,
);

class CounterProps extends _$CounterProps with _$CounterPropsAccessorsMixin {
  static const PropsMeta meta = _$metaForCounterProps;
}

_$$CounterProps _$Counter([Map backingProps]) => backingProps == null
    ? new _$$CounterProps$JsMap(new JsBackedMap())
    : new _$$CounterProps(backingProps);

// Concrete props implementation.
//
// Implements constructor and backing map, and links up to generated component factory.
abstract class _$$CounterProps extends _$CounterProps
    with _$CounterPropsAccessorsMixin
    implements CounterProps {
  _$$CounterProps._();

  factory _$$CounterProps(Map backingMap) {
    if (backingMap == null || backingMap is JsBackedMap) {
      return new _$$CounterProps$JsMap(backingMap);
    } else {
      return new _$$CounterProps$PlainMap(backingMap);
    }
  }

  /// Let [UiProps] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The [ReactComponentFactory] associated with the component built by this class.
  @override
  ReactComponentFactoryProxy get componentFactory =>
      super.componentFactory ?? $CounterComponentFactory;

  /// The default namespace for the prop getters/setters generated for this class.
  @override
  String get propKeyNamespace => 'CounterProps.';
}

// Concrete props implementation that can be backed by any [Map].
class _$$CounterProps$PlainMap extends _$$CounterProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$CounterProps$PlainMap(Map backingMap)
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
class _$$CounterProps$JsMap extends _$$CounterProps {
  // This initializer of `_props` to an empty map, as well as the reassignment
  // of `_props` in the constructor body is necessary to work around a DDC bug: https://github.com/dart-lang/sdk/issues/36217
  _$$CounterProps$JsMap(JsBackedMap backingMap)
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
class _$CounterComponent extends CounterComponent {
  _$$CounterProps$JsMap _cachedTypedProps;

  @override
  _$$CounterProps$JsMap get props => _cachedTypedProps;

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
  _$$CounterProps$JsMap typedPropsFactoryJs(JsBackedMap backingMap) =>
      new _$$CounterProps$JsMap(backingMap);

  @override
  _$$CounterProps typedPropsFactory(Map backingMap) =>
      new _$$CounterProps(backingMap);

  /// Let [UiComponent] internals know that this class has been generated.
  @override
  bool get $isClassGenerated => true;

  /// The default consumed props, taken from _$CounterProps.
  /// Used in [UiProps.consumedProps] if [consumedProps] is not overridden.
  @override
  final List<ConsumedProps> $defaultConsumedProps = const [
    _$metaForCounterProps
  ];
}