import 'package:flutter/material.dart';

class PageProfile extends StatefulWidget {
  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  double ukuranlayar(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 4;
  bool textfieldenable = false;
  bool mentor = false;
  bool neeeds = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.purple,
            title: Text("My Profile"),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.settings))
            ],
          ),
        ),
        body: Stack(children: <Widget>[
          Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(20),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit),
              )),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                width: ukuranlayar(context),
                height: ukuranlayar(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.purple[900]),
              ),
              Center(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(70, 10, 70, 0),
                      child: TextFormField(
                        enabled: false,
                        textAlign: TextAlign.center,
                        initialValue: "Hanif Aulia Sabri",
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                        ),
                      ))),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "Hanif",
                      decoration: InputDecoration(
                        labelText: "Username",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "hanif@mail.com",
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Avaible to Mentor"),
                          Checkbox(
                              value: mentor,
                              onChanged: (bool value) {
                                setState(() {
                                  mentor = value;
                                });
                              })
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Needs mentoring"),
                          Checkbox(
                              value: neeeds,
                              onChanged: (bool value) {
                                setState(() {
                                  neeeds = value;
                                });
                              })
                        ],
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "Hobbyist Sleping",
                      decoration: InputDecoration(
                        labelText: "Bio",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "Hobbyist Sleping",
                      decoration: InputDecoration(
                        labelText: "Bio",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "Hanif2209",
                      decoration: InputDecoration(
                        labelText: "Stack Username",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      initialValue: "Payakumbuh",
                      decoration: InputDecoration(
                        labelText: "Location",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextFormField(
                      enabled: textfieldenable,
                      decoration: InputDecoration(
                        labelText: "Occupation",
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
