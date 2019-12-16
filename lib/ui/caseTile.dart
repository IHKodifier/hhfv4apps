import 'package:health_financer/packageLib.dart';
class CaseTile extends StatefulWidget {
  @override
  _CaseTileState createState() => _CaseTileState();


}

class _CaseTileState extends State<CaseTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4.0),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Hello!'),
      ),
    );
  }
}
