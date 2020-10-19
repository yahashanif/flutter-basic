import 'package:flutter/material.dart';
import 'package:week1_2/main.dart';

class MainSearch extends StatelessWidget {
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
                      top: MediaQuery.of(context).size.height / 20),
                  child: Text(
                    "INDIA",
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30),
                  child: Text(
                    "Cases : 249",
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Today Cases : 55",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Deaths : 5",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Today Deaths : 1",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Recovered : 23",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Active Cases : 221",
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Critical : 0",
                    style: TextStyle(fontSize: 20, color: Colors.amber),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Cases Per Million : 0",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(
                    25, MediaQuery.of(context).size.height / 20, 25, 0),
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
                            onPressed: () {},
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
                            onPressed: () {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return Home();
                              }));
                            },
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
