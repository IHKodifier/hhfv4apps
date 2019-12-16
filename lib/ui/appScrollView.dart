import 'package:health_financer/packageLib.dart';


class AppScrollView extends StatefulWidget {
  final String appBarTitle;  //sets the title for appbar showed by this object
  final Widget body;         //sets the wisget assigned to currently selected tab as if this widget 
                            //were a scafoold
  
  AppScrollView({this.appBarTitle});

  @override
  _AppScrollViewState createState() => _AppScrollViewState(); 
}

class _AppScrollViewState extends State<AppScrollView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}