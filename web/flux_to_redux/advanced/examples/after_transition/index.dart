import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:over_react/over_react_flux.dart';
import 'package:react/react_client.dart';
import 'package:react/react_dom.dart' as react_dom;
import 'package:over_react/over_react_redux.dart';

import './components/should_not_update.dart';
import './components/random_color_redux.dart';
import '../../components/stores.dart';

main() {
  setClientConfiguration();

  react_dom.render(
      ErrorBoundary()(
          (ReduxProvider()..store = afterTransitionStore)(
            ConnectedRandomColorRedux()(),
            ConnectedRandomColorRedux()(),
            ConnectedRandomColorRedux()(),
            ConnectedShouldNotUpdate()(),
          )
      ), querySelector('#content')
  );
}
