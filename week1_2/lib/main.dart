import 'package:flutter/material.dart';
import 'package:week1_2/mainsearch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "COVID 19 NEWS",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: ListView(children: <Widget>[
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 7),
                  child: Text(
                    "All Cases : 272691",
                    style: TextStyle(fontSize: 25),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "All Deaths : 11310",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "All Recovered : 90618",
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "All Active Cases : 170763",
                    style: TextStyle(fontSize: 25, color: Colors.amber),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(
                    25, MediaQuery.of(context).size.height / 6, 25, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 3.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 3.0,
                          ),
                        ),
                        hintText: 'Input a Country',
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 175,
                          child: RaisedButton(
                            color: Colors.red[300],
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MainSearch();
                              }));
                            },
                            child: Text(
                              "Search",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: RaisedButton(
                            color: Colors.red,
                            onPressed: () {},
                            child: Text(
                              "All Information",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ConstrainedBox(
                        constraints:
                            const BoxConstraints(minWidth: double.infinity),
                        child: RaisedButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            "Update Of Sri Lanka",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Container(
                      child: Text(
                        "IMPORTANT",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Container(
                      child: Text("Search  \"South Korea\"  as  \"Korea\""),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
