import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:react_material_ui/react_material_ui.dart';

part 'options_examples.over_react.g.dart'; // ignore: uri_has_not_been_generated

final backupTheme = MuiTheme()
  ..palette = MuiPalette({
    'primary': {
      'light': '#008000',
      'main': '#FFA500',
      'dark': '#0000FF',
    }
  });

Map<String, dynamic> themedStyles(MuiTheme theme) => {
      'root': {
        'backgroundColor': theme.palette.primary.dark,
      },
      'light': {
        'backgroundColor': theme.palette.primary.light,
      },
    };

class CustomThemedButtonProps = UiProps with MuiClassesMixin;

UiFactory<CustomThemedButtonProps> CustomThemedButton = uiFunction(
  (props) {
    return ((Button()..className = props.muiClasses['root'])(
      'Themed Button',
    ));
  },
  $CustomThemedButtonConfig, // ignore: undefined_identifier
);

UiFactory<CustomThemedButtonProps> CustomThemedButtonWithStyles =
    withStyles<CustomThemedButtonProps>(themedStyles,
        options: MuiStyleOptions()
          ..defaultTheme = backupTheme)(CustomThemedButton);

class CustomStyleElementProps = UiProps with MuiClassesMixin;

UiFactory<CustomStyleElementProps> CustomStyleElement = uiFunction(
  (props) {
    return ((Button()..className = props.muiClasses['light'])(
      'With a Custom Style Tag',
    ));
  },
  $CustomStyleElementConfig, // ignore: undefined_identifier
);

UiFactory<CustomStyleElementProps> CustomStyleElementWithStyles =
    withStyles<CustomStyleElementProps>(themedStyles,
        options: MuiStyleOptions()
          ..element =
              (StyleElement()..id = 'custom-style-tag'))(CustomStyleElement);

class MediaOptionButtonProps = UiProps with MuiClassesMixin;

UiFactory<MediaOptionButtonProps> MediaOptionButton = uiFunction(
  (props) {
    return ((Button()..className = props.muiClasses['light'])(
      'With the Print Media Option',
    ));
  },
  $MediaOptionButtonConfig, // ignore: undefined_identifier
);

UiFactory<MediaOptionButtonProps> MediaOptionButtonWithStyles =
    withStyles<MediaOptionButtonProps>(themedStyles,
        options: MuiStyleOptions()..media = 'print')(MediaOptionButton);

class SpecifiedIndexButtonProps = UiProps with MuiClassesMixin;

UiFactory<SpecifiedIndexButtonProps> SpecifiedIndexButton = uiFunction(
  (props) {
    return ((Button()..className = props.muiClasses['light'])(
      'With specified index',
    ));
  },
  $SpecifiedIndexButtonConfig, // ignore: undefined_identifier
);

UiFactory<SpecifiedIndexButtonProps> SpecifiedIndexButtonWithStyles =
    withStyles<SpecifiedIndexButtonProps>(themedStyles,
            options: MuiStyleOptions()
              ..index = 1
              ..meta = 'This should be the last style tag in the header')(
        SpecifiedIndexButton);

class MiscOptionsProps = UiProps with MuiClassesMixin;

UiFactory<MiscOptionsProps> MiscOptions = uiFunction(
  (props) {
    return ((Button()..className = props.muiClasses['light'])(
      'Button With Misc Options',
    ));
  },
  $MiscOptionsConfig, // ignore: undefined_identifier
);

UiFactory<MiscOptionsProps> MiscOptionsWithStyles =
    withStyles<MiscOptionsProps>(themedStyles,
        options: MuiStyleOptions()
          ..name = 'this-is-a-custom-name'
          ..meta = 'this meta is set manually')(MiscOptions);
