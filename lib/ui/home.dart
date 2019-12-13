import 'package:health_financer/packageLib.dart';
import 'package:health_financer/ui/bottomNavBar.dart';
import 'package:health_financer/ui/caseTile.dart';
import 'package:health_financer/ui/myFelexibleAppBar.dart';
// import 'package:health_financer/ui/newcase.dart'

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
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      elevation: 5.0,
      color: Colors.purple,
      shape: const CircularNotchedRectangle(),
      notchMargin: 4.0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: BottomNavBar(),
    );
  }

  Widget _buildScrollable() {
    return CustomScrollView(
      // scrollDirection: Axis.horizontal,
      slivers: <Widget>[
        SliverAppBar(
          title: CustomAppBar(),
          pinned: true,
          floating: true,
          expandedHeight: 320.0,
          flexibleSpace: MyFlexibleAppBar(),
        ),
        // HorizontalListView(title: 'title',description: 'desc',),
      ],
    );
  }
}
