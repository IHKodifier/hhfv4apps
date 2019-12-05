import 'package:health_financer/packageLib.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.red[50],
        child: Center(
            child: Text('Dashboard',
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontSize: 48.0))));
  }
}
