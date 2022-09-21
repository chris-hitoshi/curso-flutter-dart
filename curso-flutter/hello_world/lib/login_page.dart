// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = "";
  String password = "";

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: Image.asset('assets/images/logo.png')
                ),
                SizedBox(height: 50),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20, bottom: 12),
                    child: Column(children: [
                       TextField(
                        onChanged: (text){
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        onChanged: (text){
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 30),
                      RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blueAccent,
                        onPressed: (){
                          if(email == 'chris' && password == '123'){
                            Navigator.of(context).pushReplacementNamed('/home');
                            print('correto');
                          } else{
                            print('Login incorreto');
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          child: Text('Entrar', textAlign: TextAlign.center,),
                        ),
                      ),
                    ],),
                  )
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          _body(),
        ]
      ),
    );
  }

}