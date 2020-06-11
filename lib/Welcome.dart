import 'package:flutter/material.dart';
import 'LogIn.dart';
import 'package:ui_login_page/Signup.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  child: Image(
                    image: AssetImage(
                      'assets/Children playing in the pool-amico.png',
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 50,
                  width: 650,
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.pink[800], Colors.purple],
                        tileMode: TileMode.clamp),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp())
                  );
                },
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsetsDirectional.only(top: 20, bottom: 50),
                  height: 50,
                  width: 650,
                  child: Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[200],
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogIn()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
