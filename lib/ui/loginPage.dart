<<<<<<< HEAD
=======
import 'package:firebase_auth/firebase_auth.dart';
import 'package:health_financer/packageLib.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_financer/widgets/TahafuzLogo.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  bool retryLogin=false;

  LoginPage({this.retryLogin});
  @override
  _LoginPageState createState() => _LoginPageState(retryLogin:this.retryLogin );
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState({this.retryLogin});
  bool retryLogin;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    ThemeData localTheme = Theme.of(context);
    return Scaffold(
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
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the email used to create the account',
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
                    _email = value.toString().trim();
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    border: localTheme.inputDecorationTheme.border,
                    hintText: ' aLWayS CASE sENsItivE!!',
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
                    _password = value.toString().trim();
                  },
                ),
                SizedBox(height: 30.0),
                (retryLogin)? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Account not verified\n Please try again',style: Theme.of(context).textTheme.caption.copyWith(color: Colors.red),),
                ): Text(''),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: RaisedButton(
                      child: Text(
                        'Login',
                        style: localTheme.textTheme.button
                            .copyWith(color: Colors.white, fontSize: 20.0),
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _email, password: _password)
                            .then((user) {
                          Navigator.of(context).popAndPushNamed('/appHome');
                        }).catchError((onError) {
                          Navigator.of(context).pushReplacementNamed('/retryLogin');
                        });
                      }),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text('Don\'t have an account?',
                    style:
                        localTheme.textTheme.display1.copyWith(fontSize: 26.0)),
                SizedBox(
                  height: 20.0,
                ),
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
>>>>>>> ce928186f141b0464c41e76f250d83c6b34508f2
