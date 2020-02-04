import 'package:health_financer/packageLib.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Signup for',style: localTheme.textTheme.caption.copyWith(color:Colors.black,
              fontSize: 28.0)),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Tahafuz',
                  style: GoogleFonts.nanumBrushScript(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 84.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
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
              // TextField(
              //  , decoration: InputDecoration(
              //     hintText: 'Password',
              //     hintStyle: localTheme.textTheme.subhead.copyWith(
              //       fontSize: 16.0,
              //       color: Colors.black54,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ),
              //   obscureText: true,
              //   onChanged: (value) {
              //     _password = value;
              //   },
              // ),
              SizedBox(height: 30.0),

            ],
          ),
        ),
      ),
    );
  }
}
