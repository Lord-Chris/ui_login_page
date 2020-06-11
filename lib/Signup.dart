import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SafeArea(
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
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.all(15.0),
                    child: new Container(
                      child: new Icon(Icons.arrow_back,color: Colors.black,),
                      color: Colors.grey[200],
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
                          new Text('Full Name'),
                          new Container(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: new TextField(),
                          ),
                          new Text('Email Address'),
                          new TextField(),
                          new Text('Password'),
                          new TextField(),
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
                          new Text('Or',style: new TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                          new Row(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 150,
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
                                width: 150,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Already have an account? ',style: TextStyle(color: Colors.grey[800],fontSize: 12),),
                              Text('Sign In',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 13),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
