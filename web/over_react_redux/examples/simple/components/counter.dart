import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_redux.dart';
import 'package:over_react/src/over_react_redux/over_react_flux.dart';
import '../store.dart';

part 'counter.over_react.g.dart';

/// Connected Redux Component
///
/// As shown in the example below, the same component can be connected to Redux in
/// such a way that it behaves differently.
UiFactory<CounterProps> ConnectedCounter = connectFlux<CounterStore, CounterProps>(
  mapStateToProps: (state) => (Counter()
    ..currentCount = state.smallCount
    ..increment = state.actions.smallIncrement
    ..decrement = state.actions.smallDecrement
    ..items = state.items
  ),
//  areStatePropsEqual: (_, __) => false,
//  areMergedPropsEqual: (_, __) => false,
//  pure: false,
)(Counter);

UiFactory<CounterProps> ConnectedBigCounter = connectFlux<CounterStore, CounterProps>(
  mapStateToProps: (state) => (Counter()
    ..currentCount = state.bigCount
    ..increment = state.actions.bigIncrement
    ..decrement = state.actions.bigDecrement
    ..items = state.items
  ),
//  areStatePropsEqual: (_, __) => false,
//  areMergedPropsEqual: (_, __) => false,
//  pure: false,
)(Counter);

@Factory()
UiFactory<CounterProps> Counter = _$Counter;

@Props()
class _$CounterProps extends UiProps {
  int currentCount;

  Map<String, dynamic> wrapperStyles;

  void Function() increment;

  void Function() decrement;

  List items;
}

@Component2()
class CounterComponent extends UiComponent2<CounterProps> {
  @override
  render() {
    return (Dom.div()..style = props.wrapperStyles)(
        Dom.div()('Count: ${props.currentCount}'),
        (Dom.button()..onClick = (_) {
          props.increment();
        })('+'),
        (Dom.button()..onClick = (_) {
          props.decrement();
        })('-'),
        props.children,
        'Items:',
        _mapIndexed(props.items, (item, index) => (Dom.li()..key = index)(item)),
    );
  }
}

Iterable<T> _mapIndexed<T, E>(Iterable<E> iterable, T Function(E item, int index) mapper) {
  var index = 0;
  return iterable.map((item) => mapper(item, index++));
}