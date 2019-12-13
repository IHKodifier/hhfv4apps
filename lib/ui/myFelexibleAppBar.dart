import 'package:health_financer/packageLib.dart';

class MyFlexibleAppBar extends StatefulWidget {
  @override
  _MyFlexibleAppBarState createState() => _MyFlexibleAppBarState();
}

class _MyFlexibleAppBarState extends State<MyFlexibleAppBar> {
  final double appBarHeight = 66.0;

  // const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Container(
        // height: statusBarHeight + appBarHeight,
        color: Colors.red.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              
              color: Colors.transparent,
              width:MediaQuery.of(context).size.width/10.0* 4.5 ,
              child: DashBoard(),
            )
          ],
        ),
      ),
    );
  }
}
