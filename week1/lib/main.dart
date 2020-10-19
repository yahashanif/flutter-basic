import 'package:flutter/material.dart';
import 'package:week1/page_profil.dart';
import 'package:week1/page_register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Home"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: RaisedButton(
                elevation: 10,
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageRegister();
                  }));
                },
                shape: StadiumBorder(),
                child: Text(
                  "Register Page",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Container(
              child: MaterialButton(
                elevation: 10,
                color: Colors.purple,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PageProfile();
                  }));
                },
                shape: StadiumBorder(),
                child: Text(
                  "Profile Page",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
