import 'package:health_financer/packageLib.dart';
import 'package:health_financer/ui/myFelexibleAppBar.dart';
// import 'package:health_financer/ui/newcase.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;
  final List<Widget> _myTabList = <Widget>[
    DashBoard(),
    CaseLog(),
    NotificationsPage(),
    AppMessage(),
  ];
  // int _selectedTab = 0;
  // TabController _tabController =TabController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScrollable(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 5.0,
        color: Colors.blueGrey.shade100,
        shape: const CircularNotchedRectangle(),
        notchMargin: 2.0,
        clipBehavior: Clip.antiAlias,
        child: _buildBottomNavBar(),
      ),
    );
  }

  Widget _buildBottomNavBar() {
    //TODO: do rolebased initializations here
    

    return BottomNavigationBar(
      //TODO: find tabs authorized to this user's roles
      // TODO:and switch selection to generate a list of BottomNabigationBarItems

      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).accentColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            // size: 35.0,
          ),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_active,
            // size: 35.0,
          ),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            // size: 35.0,
          ),
          title: Text('Messages'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.phone_android,
            // size: 35.0,
          ),
          title: Text('Phone'),
        ),
      ],
    );
  }

  Widget _buildScrollable() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: CustomAppBar(),
          pinned: true,
          floating: true,
          expandedHeight: 320.0,
          flexibleSpace: MyFlexibleAppBar(),
        ),
        myList(),
      ],
    );
  }

  Widget myList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        if (index > 20)
          return null;
        else {
          return ListTile(
            title: Text('item $index'),
          );
        }
      }),
    );
  }
}
