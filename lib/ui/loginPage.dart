import 'package:health_financer/packageLib.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return Scaffold(
      // appBar: AppBar(
      // //   // actionsIconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
      // //   // backgroundColor: hhfScaffoldBackgroundLight,
      //   title: Text(
      //     'Health Financer',
      //     style: Theme.of(context)
      //         .textTheme
      //         .title
      //         .copyWith(color: Theme.of(context).primaryColor),
      //   ),
      //   centerTitle: true,
      // ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text('Tahafuz',
                  style: GoogleFonts.nanumBrushScript(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 84.0,
                  ) ,),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'UserName',
                    hintStyle: localTheme.textTheme.subhead.copyWith(
                      fontSize: 16.0,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onChanged: (value) {
                    _email = value;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: localTheme.textTheme.subhead.copyWith(
                      fontSize: 16.0,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    _password = value;
                  },
                ),
                SizedBox(height: 30.0),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: RaisedButton(
                    child: Text('Login'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text('Don\'t have an account?',
                    style: localTheme.textTheme.display1
                        .copyWith(fontSize: 26.0)),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text('Sign up here'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
