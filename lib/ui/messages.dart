// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_financer/packageLib.dart';

class AppMessage extends StatefulWidget {
  @override
  _AppMessageState createState() => _AppMessageState();
}

class _AppMessageState extends State<AppMessage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0,left: 32.0),
                    child: Container(
                        color: Colors.white,
                        
                        child: Icon(
                        FontAwesomeIcons.headset,
                       
                        size: 45.0,
                        // color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0,right: 32.0),
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.message,
                        size: 45.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: 20.0,),
          ],
        ),
        Center(
          child: Text('Messages'),
        ),
      ],
    ));
  }
}
