import 'package:flutter/material.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  bool _hide = false;

  bool mentor = false;
  bool mentee = false;
  bool confirm = false;
  void _hidepass() {
    setState(() {
      _hide = !_hide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Register"),
        ),
        body: Center(
          child: ListView(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Name"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Username"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Email"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: _hide,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Enter Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              _hidepass();
                            },
                            child: Icon(
                              _hide ? Icons.visibility_off : Icons.visibility,
                              color: _hide ? Colors.grey : Colors.purple,
                            ),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                      autofocus: false,
                      obscureText: _hide,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Confirm Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              _hidepass();
                            },
                            child: Icon(
                              _hide ? Icons.visibility_off : Icons.visibility,
                              color: _hide ? Colors.grey : Colors.purple,
                            ),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("Available to be a:"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: mentor,
                                  onChanged: (bool value) {
                                    setState(() {
                                      mentor = value;
                                      mentee = false;
                                    });
                                  }),
                              Text("Mentor"),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: mentee,
                                  onChanged: (bool value) {
                                    setState(() {
                                      mentee = value;
                                      mentor = false;
                                    });
                                  }),
                              Text("Mentee"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Checkbox(
                            value: confirm,
                            onChanged: (bool value) {
                              setState(() {
                                confirm = value;
                              });
                            }),
                        Text(
                            "I affirm that I have read and accept to be bound\nby the AnitaB.org Code of Conduct, Terms and\nPrivacy Policy. Futher, I Consent to use of my\nInformation for the stated purpose"),
                      ],
                    ),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text("Sign Up"),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
