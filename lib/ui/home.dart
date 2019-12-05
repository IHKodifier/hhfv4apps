import 'package:health_financer/packageLib.dart';
// import 'package:health_financer/ui/newcase.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Widget> _myTabContent = <Widget>[
    DashBoard(),
    CaseLog(),
    NotificationsPage(),
    AppMessage(),
  ];
  int _selectedTab = 0;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _myTabContent.length);
    _selectedTab = _tabController.index;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabContent.length,
      child: Scaffold(
        floatingActionButton: _selectedTab != 1 ? null : _buildFAB(),
        appBar: AppBar(
          title: Text('Health Financer'),
          bottom: TabBar(
            indicatorWeight: 6.0,
            indicatorColor: Colors.white,
            onTap: (int index) {
              setState(() {
                _selectedTab = index;
              });
            },
            tabs: <Tab>[
              Tab(
                  // text: 'Home',
                  icon: Icon(
                Icons.home,
                size: 30.0,
              )),
              Tab(
                  // text: 'Case Log',
                  icon: Icon(
                Icons.clear_all,
                size: 30.0,
              )),
              Tab(
                  // text: 'Notifications',
                  icon: Icon(
                Icons.notifications,
                size: 30.0,
              )),
              Tab(
                  // text: 'Messages',
                  icon: Icon(
                Icons.chat,
                size: 30.0,
              )),
            ],
          ),
        ),
        body: TabBarView(children: _myTabContent),
      ),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      elevation: 15.0,
      backgroundColor: Theme.of(context).primaryColor,
      splashColor: Theme.of(context).accentColor,
      child: Icon(
        Icons.add,
        size: 35.0,
      ),
      onPressed: () {
        // try {
        //   Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => NewCase()));
        // } catch (e) { debugPrint(e.toString());
        // }
        
      },
    );
  }
}
