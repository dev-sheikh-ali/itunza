import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Signup.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Center(
                child: Container(
                    width: 150,
                    height: 150,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('asset/images/logo.png'),
              
            )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid email or number '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)
                    ),
                    labelText: 'Password',
                    hintText: 'Enter password'
                    ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password ?',
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 100,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account ?',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                color: Colors.green, fontSize: 22),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SignupForm()),
                            )
                          },
                          )
                        ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
