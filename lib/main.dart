import 'package:health_financer/packageLib.dart';
import 'package:health_financer/ui/apphomePage.dart';
import 'package:health_financer/ui/signupPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Health Financer',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/appHome': (BuildContext context) => MyApp(),
          '/signup':(BuildContext context)=> SignUpPage(),
        },
        theme: _buildThemeData());
  }

  ThemeData _buildThemeData() {
    final baseTheme = ThemeData(
      primarySwatch: hhfPrimarySwatch,
    );

    return baseTheme.copyWith(
// set colors
      // primaryColor: hhfPrimaryColor,
      // primaryColorDark: hhfPrimaryDark,
      // primaryColorLight: hhfPrimaryLight,
      // scaffoldBackgroundColor: hhfScaffoldBackgroundLight,
      // cardColor: hhfCardBackgroundLight,

      // buttonColor: hhfPrimaryColor,
      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        iconTheme: baseTheme.iconTheme.copyWith(color: hhfPrimaryColor),
      ),
      // bottomAppBarTheme:
      // baseTheme.bottomAppBarTheme.copyWith(color: hhfPrimaryColor),
      // textTheme: baseTheme.textTheme.copyWith(
      //   title: baseTheme.textTheme.title
      //       .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
      //   subtitle: baseTheme.textTheme.subtitle.copyWith(
      //       fontSize: 16.0, color: Colors.black54, fontStyle: FontStyle.italic),
      //   headline: baseTheme.textTheme.headline.copyWith(),
      //   subhead: baseTheme.textTheme.subhead.copyWith(),
      //   body1: baseTheme.textTheme.body1.copyWith(),
      //   body2: baseTheme.textTheme.body2.copyWith(),
      //   caption: baseTheme.textTheme.caption.copyWith(),
      //   button: baseTheme.textTheme.button.copyWith(
      //       fontSize: 16.0,
      //       fontWeight: FontWeight.w700,
      //       fontFamily: 'Montserrat',
      //       letterSpacing: 2.8,
      //       color: Colors.white),
      //   display1: baseTheme.textTheme.display1.copyWith(),
      //   display2: baseTheme.textTheme.display2.copyWith(),
      //   display3: baseTheme.textTheme.display3.copyWith(),
      //   display4: baseTheme.textTheme.display4.copyWith(),
      // ),
      // textSelectionColor: baseTheme.primaryColor,
      // textSelectionHandleColor: baseTheme.primaryColor,
      // focusColor: baseTheme.primaryColor
    );
  }
}
