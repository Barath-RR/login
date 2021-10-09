import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'landing page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        backgroundColor: Colors.black,),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
            child: Scaffold(
        backgroundColor: Colors.black,
        body:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 100.0,
                child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:40,
                  ),

                ),
              ),
              // SizedBox(
              //   height: 20.0,
              // ),
              Container(
                width:400,
              child:TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.white,

                ),
                onChanged: (value) {
                 // email=value;
                },

                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.white60),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(201, 30, 183, 1.0), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(201, 30, 183, 1.0), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 8.0,
                width: 700,
              ),
          Container(
            width:400,
              child:TextField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: Colors.white,
                ),
                onChanged: (value) {
                 // password = value;
                },

                decoration: InputDecoration(

                  hintText: 'Enter your password.',
                  hintStyle: TextStyle(color: Colors.white60),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 1.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromRGBO(201, 30, 183, 1.0), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
          ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Color.fromRGBO(201, 30, 183, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () async{
                      // try{
                      // final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                      // if(user!=null) {
                     // Navigator.pushNamed(context, HomeScreen.id);
                      // }
                      // } catch (e){
                      //   print(e);
                      // }
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Log In',
                      style: TextStyle(color:Colors.black),
                    ),

                  ),
                ),
              ),
            ],
          ),
              ),
            ),
          ),
          const Divider(
//             height: 20,
//             thickness: 5,
//             indent: 20,
//             endIndent: 20,
          ),
          // Subheader example from Material spec.
          // https://material.io/components/dividers#types
          // Container(
          //   padding: const EdgeInsets.only(left: 20),
          //   child: Align(
          //     alignment: AlignmentDirectional.centerStart,
          //     child: Text(
          //       'Subheader',
          //       style: Theme.of(context).textTheme.caption,
          //       textAlign: TextAlign.start,
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              child: Text('About',
                style: TextStyle(
                  color: Colors.black,
                  fontSize:40,
                ),

              ),
            ),
          ),
        ],
      //),
    );
  }
}
