// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  const StartApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.deepOrange[600]
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  // child: Image.network(
                  //   'https://br.tinderpressroom.com/file.php/178069/wordmark-R-white-RGB_1000px.jpg?thumbnail=modal')
                  child: Image.asset('assets/images/fire.png'),
                ),
                SizedBox(height: 30),
                Text('Location Changer', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ubuntu-Bold',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  )
                ),
                Text('Location Changer', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Ubuntu-Bold',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  )
                ),
                SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: RaisedButton(
                    onPressed: () => {
                      print('Hello')
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 15, bottom: 10, left: 15),
                      child: Text('Login with Facebook',
                        style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontSize: 20
                          )
                      ),
                    )
                  ),
                ),
              ],
            ),
          )
        ]
      )
      
    );
  }
}