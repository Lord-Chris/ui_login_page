import 'package:flutter/material.dart';
import 'Signup.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState()=>_LogInState();
}
class _LogInState extends State<LogIn>{
  bool _obscureText = true;
  void _toggle(){
    setState(() {
      _obscureText = !_obscureText;
    });
}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 300,
                        child: Center(
                          child: Image.asset(
                            'assets/Children playing in the pool-amico.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.white10,
          body: Container(
            child: LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
                            child: new GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                color: Colors.grey[200],
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Email Address',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 10),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[300],
                                ),
                                child: TextField(
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                              Text('Password',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey[300]
                                ),
                                child: TextField(
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400
                                  ),
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: Icon(Icons.remove_red_eye,color: _obscureText ? Colors.purple : Colors.grey[600],),
                                      onPressed: _toggle,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[Text('Forgot Password?',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[800],
                                  ),
                                )],
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(top: 10, bottom: 15),
                                height: 50,
                                width: 650,
                                child: Center(
                                    child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [Colors.pink[800], Colors.purple],
                                    tileMode: TileMode.clamp),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Or',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new GestureDetector(
                                      child: Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey[400]
                                          )],
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image(image: AssetImage('assets/facebook.png'),height: 20,width: 20,),
                                            SizedBox(width: 10.0,),
                                            Text('facebook',
                                              style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                    ),
                                    new GestureDetector(
                                      child: Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                              color: Colors.grey[400]
                                          )],
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset('assets/Google_icon.png',height: 20.0, width: 20.0,),
                                            SizedBox(width: 10.0,),
                                            Text('Google',
                                              style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Dont have an account? ',style: TextStyle(color: Colors.grey[800],fontSize: 12),),
                                  new GestureDetector(
                                    child: Text('Sign Up',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 13),
                                    ),
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>new SignUp()));
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
