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
        // Text('you there'),
        SliverList(
          delegate: SliverChildListDelegate(
            [
             Material( 
               elevation: 5.0,
               child: Text('elevation',),
             child),),
              Container(color: Colors.green.shade100,
              height: 50.0,),
               Container(color: Colors.green,
              height: 50.0,),
              Container(color: Colors.green.shade400,
              height: 50.0,),
              Container(color: Colors.green.shade100,
              height: 50.0,), Container(color: Colors.green,
              height: 50.0,),
              Container(color: Colors.green.shade800,
              height: 50.0,),
              Container(color: Colors.green.shade100,
              height: 50.0,), Container(color: Colors.green,
              height: 50.0,),
              Container(color: Colors.green.shade800,
              height: 50.0,),
              Container(color: Colors.green.shade100,
              height: 50.0,),
            ]
            ),
          
        ),
        // HorizontalListView(title: 'title',description: 'desc',),
      ],
    );
  }
}
