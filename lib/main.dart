import 'package:health_financer/packageLib.dart';

void main() {
  runApp(MaterialApp(
      title: 'Health Financer',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: buildThemeData()));
}

ThemeData buildThemeData() {
  final baseTheme = ThemeData(fontFamily: 'Montserrat');

  return baseTheme.copyWith(
  
// set colors
      primaryColor: hhfPrimaryColor,
      primaryColorDark: hhfPrimaryDark,
      primaryColorLight: hhfPrimaryLight,
      scaffoldBackgroundColor: hhfScaffoldBackgroundLight,
      cardColor: hhfCardBackgroundLight,
      //set swatch
      
      textTheme: baseTheme.textTheme.copyWith(
        title: baseTheme.textTheme.title
            .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
        subtitle: baseTheme.textTheme.subtitle.copyWith(
            fontSize: 16.0, color: Colors.black54, fontStyle: FontStyle.italic),
        headline: baseTheme.textTheme.headline.copyWith(),
        subhead: baseTheme.textTheme.subhead.copyWith(),
        body1: baseTheme.textTheme.body1.copyWith(),
        body2: baseTheme.textTheme.body2.copyWith(),
        caption: baseTheme.textTheme.caption.copyWith(),
        button: baseTheme.textTheme.button.copyWith(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
            letterSpacing: 2.8,
            
            color: Colors.white),
        display1: baseTheme.textTheme.display1.copyWith(),
        display2: baseTheme.textTheme.display2.copyWith(),
        display3: baseTheme.textTheme.display3.copyWith(),
        display4: baseTheme.textTheme.display4.copyWith(),
      ),
      textSelectionColor: baseTheme.primaryColor,
      textSelectionHandleColor: baseTheme.primaryColor,
      focusColor: baseTheme.primaryColor);
}
