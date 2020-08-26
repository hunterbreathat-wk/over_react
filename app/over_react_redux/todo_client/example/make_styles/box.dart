import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:react_material_ui/react_material_ui.dart';

part 'box.over_react.g.dart'; // ignore: uri_has_not_been_generated

const standardHeightAndWidth = {
  'height': 100,
  'width': 100,
};

Map<String, dynamic> getBoxColored(String boxColor) {
  return {
    'backgroundColor': boxColor,
    ...standardHeightAndWidth,
  };
}

final useStyles = makeStyles<BoxWrapperProps>(
  MuiStyleMap<BoxWrapperProps>()
    ..addFunctionRule('arbitrary', (props) {
      return getBoxColored(props.color);
    })
    ..addRule('arbitrary-2', getBoxColored('blue'))
    ..addRule('noProps', getBoxColored('red')),
  propsBuilder:
      $BoxWrapperConfig.propsFactory, // ignore: invalid_use_of_protected_member
);

mixin BoxWrapperProps on UiProps {
  String color;
}

UiFactory<BoxWrapperProps> BoxWrapper = uiFunction(
  (props) {
    final styles = useStyles(props);

    return (Box()..className = styles['arbitrary'])(props.children);
  },
  $BoxWrapperConfig, // ignore: undefined_identifier
);

mixin NoPropsBoxWrapperProps on UiProps {}

UiFactory<NoPropsBoxWrapperProps> NoPropsBoxWrapper = uiFunction(
  (props) {
    final styles = useStyles();

    return (Box()..className = styles['noProps'])(props.children);
  },
  $NoPropsBoxWrapperConfig, // ignore: undefined_identifier
);

final useFunctionStyles = makeThemedStyles<FunctionStylesBoxWrapperProps>(
  (theme) {
    return MuiStyleMap<FunctionStylesBoxWrapperProps>()
      ..addFunctionRule('root', (props) {
        return {
          'backgroundColor': theme.palette.primary.dark,
          'height': props.height,
          'width': props.width,
        };
      })
      ..addRule('noProps', {
        'backgroundColor': theme.palette.primary.light,
        ...standardHeightAndWidth,
      });
  },
  propsBuilder: $FunctionStylesBoxWrapperConfig
      .propsFactory, // ignore: invalid_use_of_protected_member
);

mixin FunctionStylesBoxWrapperProps on UiProps {
  int height;
  int width;
}

UiFactory<FunctionStylesBoxWrapperProps> FunctionStylesBoxWrapper = uiFunction(
  (props) {
    final styles = useFunctionStyles(props);
    return (Box()..className = styles['root'])(props.children);
  },
  $FunctionStylesBoxWrapperConfig, // ignore: undefined_identifier
);

UiFactory<FunctionStylesBoxWrapperProps> FunctionStylesNoPropsBoxWrapper =
    uiFunction(
  (props) {
    final styles = useFunctionStyles();
    return (Box()..className = styles['noProps'])(props.children);
  },
  $FunctionStylesNoPropsBoxWrapperConfig, // ignore: undefined_identifier
);

final backupTheme = MuiTheme()
  ..palette = MuiPalette({
    'primary': {
      'light': '#008000',
      'main': '#FFA500',
      'dark': '#0000FF',
    }
  });

// When inspecting the DOM, this `<style>` tag should be last because
// of the index.
final useStylesWithOptions = makeThemedStyles(
    (theme) => MuiStyleMap({
          'root': {
            'backgroundColor': theme.palette.primary.light,
            'height': 100,
            'width': 100,
          },
        }),
    options: (MuiStyleOptions()
      ..name = 'this-is-a-custom-name'
      ..defaultTheme = backupTheme
      ..meta = 'the_last_tag_because_of_index'
      ..index = 1));

mixin OptionsBoxWrapperProps on UiProps {}

UiFactory<NoPropsBoxWrapperProps> OptionsBoxWrapper = uiFunction(
  (props) {
    final styles = useStylesWithOptions();

    return (Box()..className = styles['root'])();
  },
  $OptionsBoxWrapperConfig, // ignore: undefined_identifier
);

final stylesWithElementOption = makeStyles({
  'root': {
    'backgroundColor': 'orange',
    'color': 'white',
    ...standardHeightAndWidth,
  }
},
    options: MuiStyleOptions()
      ..element = (StyleElement()..id = 'a_custom_style_tag'));

UiFactory<NoPropsBoxWrapperProps> BoxWithElement = uiFunction(
  (props) {
    final styles = stylesWithElementOption();

    return (Box()..className = styles['root'])(props.children);
  },
  $BoxWithMediaConfig, // ignore: undefined_identifier
);

final stylesWithMediaOption = makeStyles({
  'root': {
    ...standardHeightAndWidth,
  }
}, options: MuiStyleOptions()..media = 'print');

UiFactory<NoPropsBoxWrapperProps> BoxWithMedia = uiFunction(
  (props) {
    final styles = stylesWithMediaOption();

    return (Box()..className = styles['root'])(props.children);
  },
  $BoxWithMediaConfig, // ignore: undefined_identifier
);

final nestedUseStylesParent = makeStyles({
  'the_parent_class': {
    'backgroundColor': 'red',
    'color': '#FFF',
    ...standardHeightAndWidth,
  },
  'the_parent_class_with_background_override': {
    'backgroundColor': 'orange !important',
    'color': '#FFF',
    ...standardHeightAndWidth,
  },
});

final nestedUseStylesChild = makeThemedStyles(
  (theme) => {
    'the_child_class': {
      'backgroundColor': 'blue',
      ...standardHeightAndWidth,
    },
  },
  propsBuilder: $NestedBoxWrapperConfig
      .propsFactory, // ignore: invalid_use_of_protected_member
);

class NestedBoxWrapperProps = UiProps with MuiClassesMixin;

UiFactory<NestedBoxWrapperProps> NestedBoxWrapper = uiFunction(
  (props) {
    final classes = nestedUseStylesChild(props);

    return (Box()..className = classes['the_child_class'])(props.children);
  },
  $NestedBoxWrapperConfig, // ignore: undefined_identifier
);

mixin ParentBoxWrapperProps on UiProps {
  Map<String, String> classes;
}

UiFactory<ParentBoxWrapperProps> ParentBoxWrapper = uiFunction(
  (props) {
    final classes = nestedUseStylesParent();

    return Fragment()(
      (Box()..className = classes['the_parent_class'])(),
      (NestedBoxWrapper()
        ..muiClasses = {
          'the_child_class': classes['the_parent_class']
        }
      )('A nested box'),
      (NestedBoxWrapper()
        ..muiClasses = {
          'the_child_class':
              classes['the_parent_class_with_background_override']
        }
      )('A nested box'),
    );
  },
  $ParentBoxWrapperConfig, // ignore: undefined_identifier
);
