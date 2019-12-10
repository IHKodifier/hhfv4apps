import 'package:health_financer/packageLib.dart';

class MyFlexibleAppBar extends StatefulWidget {
  @override
  _MyFlexibleAppBarState createState() => _MyFlexibleAppBarState();
}

class _MyFlexibleAppBarState extends State<MyFlexibleAppBar> {
  final double appBarHeight= 66.0;

  // const MyFlexiableAppBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight= MediaQuery.of(context).padding.top;
    
    return SafeArea(
          child: Container(
        padding: EdgeInsets.only(top: statusBarHeight),
        height: statusBarHeight+appBarHeight+10.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Financing quota available',style: Theme.of(context).textTheme.subtitle, ),
              Text('PKR 98,000 ',style: Theme.of(context).textTheme.title,)
            ],

          ),
        ),
        
      ),
    );
  }
}