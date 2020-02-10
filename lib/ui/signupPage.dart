import 'package:health_financer/packageLib.dart';
import 'package:health_financer/services/userManagement.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:health_financer/widgets/TahafuzLogo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up ',
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TahafuzLogo(),
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter a valid email to set as username',
                    labelText: 'Email',
                    labelStyle: localTheme.textTheme.title.copyWith(
                      color: localTheme.primaryColor,
                      fontSize: 16.0,
                    ),
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
                    border: localTheme.inputDecorationTheme.border,
                    hintText: 'Choose a password',
                    hintStyle: localTheme.textTheme.subhead.copyWith(
                      fontSize: 16.0,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                    labelText: 'Password',
                    labelStyle: localTheme.textTheme.title.copyWith(
                      color: localTheme.primaryColor,
                      fontSize: 16.0,
                    ),
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    _password = value;
                  },
                ),
                // ),
                SizedBox(height: 30.0),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.0,
                  ),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Sign up ',
                      style: localTheme.textTheme.button
                          .copyWith(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _email, password: _password)
                          .then((signedInUser) {
                            UserManagement().createNewUser(signedInUser, context);
                          })
                          .catchError((e) {});

                      Navigator.of(context).pushNamed('/login');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 28.0,
                    top: 16.0,
                    right: 16.0,
                  ),
                  child: Text(
                    'By clicking Sign up button, you agree to the terms and Conditions set by TAHAFUZ program',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
