import 'package:health_financer/packageLib.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final double barHeight =66.0;
  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {

return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              FontAwesomeIcons.bars, color: Colors.white,),
          ),),

          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'My Digital Currency',
              style: TextStyle(
                color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20.0
              ),
            ),

          ),),

          Container(child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              FontAwesomeIcons.userCircle, color: Colors.white,),
          ),),

        ],
      ),
    );

































    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('title goes here'),
            pinned: true,
            expandedHeight: 210,
            flexibleSpace: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
