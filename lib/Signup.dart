import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'RadioGroup.dart';
import 'Signin.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupForm(),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
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
                    labelText: 'Name',
                    hintText: 'Enter name '),
              ),
            ),
            Padding(
             padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 2),
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
                  left: 15.0, right: 15.0, top: 15, bottom: 2),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: 'Password',
                    hintText: 'Enter password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    labelText: 'Confirm Password',
                    hintText: 'confirm password'),
              ),
            ),
            Container(
              child: RadioGroup(),
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
                      context, MaterialPageRoute(builder: (_) => LoginForm()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Container(
                height: 100,
                padding: EdgeInsets.all(30),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: 'Already have an account ? ',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'login',
                              style: TextStyle(
                                  color: Colors.green, fontSize: 22),
                              recognizer: TapGestureRecognizer()
                                 ..onTap = () => {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>  LoginForm()),
                            )
                          },)
                        ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
