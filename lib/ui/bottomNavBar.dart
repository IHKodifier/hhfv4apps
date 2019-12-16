import 'package:health_financer/packageLib.dart';



class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
   Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5.0,
      color: Colors.purple,
      shape: const CircularNotchedRectangle(),
      notchMargin: 4.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: _buildBottomNavigationBar(),
    ); 
    
   }

   Widget _buildBottomNavigationBar(){
     //TODO:  ROLEBASED  initializations here and 
    //  return appropriate buttons in Bottom Navigation Bar
    return BottomNavigationBar(
      // backgroundColor: Colors.pink,
      fixedColor: Theme.of(context).primaryColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Icon(
              Icons.notifications_active,
              size: 30.0,
              color: Colors.black,
            ),
          ),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.phone_android,
            size: 30.0,
            color: Colors.black,
          ),
          title: Text(
            'Phone',
            style: Theme.of(context)
                .textTheme
                .subtitle
                .copyWith(color: Colors.black, fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}

