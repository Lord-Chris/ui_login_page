import 'package:flutter/material.dart';
import 'LogIn.dart';

class SignUp extends StatelessWidget {
  final TextStyle style = new TextStyle(color:Colors.grey[600]);
  final Container field = new Container(
    height: 45,
    padding: EdgeInsets.symmetric(horizontal: 5.0,),
    decoration: new BoxDecoration(
      color: Colors.grey[300],
      borderRadius: new BorderRadius.circular(20),
    ),
    child: new TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SafeArea(top: true,
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 30.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          height: 300,
                          child: new Center(
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
            new SingleChildScrollView(
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.symmetric(horizontal:15.0,vertical: 20),
                      child: GestureDetector(
                        child: new Container(
                          child: new Icon(Icons.arrow_back,color: Colors.black,),
                          color: Colors.grey[200],
                        ),
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width,
                      height: 450.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: new BorderRadius.horizontal(left: new Radius.circular(20),right: new Radius.circular(20))
                      ),
                      child: new Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text('Full Name',style: style,),
                            field,
                            new Text('Email Address',style: style,),
                            field,
                            new Text('Password',style: style,),
                            field,
                            SizedBox(height: 10,),
                            new Container(
                              height: 50,
                              width: 650,
                              decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.pink[800],
                                    Colors.purple
                                  ]
                                ),
                                boxShadow: [
                                  new BoxShadow(color: Colors.grey[800])
                                ]
                              ),
                              child: new Center(
                                child: new Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text('Or',style: new TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(
                                        color: Colors.grey[400]
                                    )],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: FlatButton(
                                    child: Text('facebook',
                                      style: TextStyle(color: Colors.blue[900]),),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(
                                        color: Colors.grey[400]
                                    )],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: FlatButton(
                                    child: Text('Google',
                                      style: TextStyle(color: Colors.lightBlue),),
                                  ),
                                ),
                              ],
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Already have an account? ',style: TextStyle(color: Colors.grey[800],fontSize: 12),),
                                GestureDetector(
                                  child: Text('Sign In',
                                    style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 13),
                                  ),
                                  onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>new LogIn()));
                                  },
                                ),
                              ],
                            ),
                            new SizedBox(height: 10,)
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
