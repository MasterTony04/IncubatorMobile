import 'package:flutter/material.dart';
import 'package:incubator_iot/modules/main/landingPage.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:toast/toast.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('assets/afri_tech.png')),
                ),
              ),
            ),
            Center(
              child: Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Color(0xff6aa84f), fontSize: 15),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color(0xff6aa84f),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text('New User? Create Account'))
          ],
        ),
      ),
    );
  }

  void login() async {
    String username = usernameController.text;
    String password = usernameController.text;

    ParseResponse res = await ParseUser(username, password, '').login();
    if (res.success) {
      Toast.show('Welcome', context, duration: 4);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LandingPage()));
    } else {
      Toast.show(res.error.message, context, duration: 4);
    }
  }
}
