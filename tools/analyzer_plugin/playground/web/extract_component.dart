import 'package:over_react/over_react.dart';

part 'extract_component.over_react.g.dart';

ReactElement renderTheFoo() {
  return component()(
    Dom.div()(
      'oh hai',
      Dom.span()('again'),
      Dom.em()(' wow this is a lot we should extract it into a component!'),
    ),
  );
}
