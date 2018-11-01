import 'package:over_react/over_react.dart';
import 'package:react/react_client.dart';

//part 'generic_inheritance_super.g.dart';
part 'generic_inheritance_super.overReact.g.dart';

@Factory()
UiFactory<GenericSuperProps> GenericSuper = $GenericSuper;

// ignore: mixin_of_non_class,undefined_class
class GenericSuperProps extends UiProps with _$GenericSuperPropsAccessorsMixin implements _$GenericSuperProps {}

@Props()
class _$GenericSuperProps extends UiProps {
  static const PropsMeta meta = $metaForGenericSuperProps;

  String otherSuperProp;
  String superProp;
  String superProp1;
}

@Component()
class GenericSuperComponent<T extends GenericSuperProps> extends UiComponent<T> {
  getDefaultProps() => newProps()..id = 'generic_super';

  @override
  render() {
    return Dom.div()('GenericSuper', {
      'props.superProp': props.superProp,
//      'props': props.toString(),
    }.toString());
  }
}