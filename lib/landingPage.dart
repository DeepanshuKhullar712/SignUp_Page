import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_page/signIn.dart';
import 'package:signup_page/signupPage.dart';

import 'constants.dart/constants.dart';

class landing extends StatefulWidget {
  const landing({key}) : super(key: key);

  @override
  _landingState createState() => _landingState();
}

class _landingState extends State<landing> with SingleTickerProviderStateMixin {
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  Color _buttonColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    void showSignIn() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,

        builder: (context) {
          return FractionallySizedBox(
            heightFactor: 0.85,
            child: SIgnIn(),
          );
        },
        //isScrollControlled: true
      );
    }

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body:
            CustomScrollView(scrollDirection: Axis.vertical, slivers: <Widget>[
          SliverAppBar(actions: [
            Image(
              image: AssetImage('images/Logo_vector.png'),
            ),
            SizedBox(
              width: 250,
            ),
            FlatButton(
              child: Text("Sign In"),
              onPressed: () {
                showSignIn();
              },
            ),
          ]),
          SliverList(
            delegate: SliverChildListDelegate([
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                    text: "Hire ",
                                    style: TextStyle(fontSize: 30),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "High Quality\n",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                        text: "Team ",
                                        style: TextStyle(fontSize: 30),
                                      ),
                                      TextSpan(
                                        text: "Members",
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Center(
                              child: Text(
                                "HipoZ is the digital zone for top students,\ngraduates and young professionals.Get access\nto exclusive benefits, invitations to "
                                "\nhi-class events \nand top lectures.",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            RaisedButton(
                              child: Text("Sign up",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp1()),
                                );
                              },
                              color: Color(0xFF36A8B7),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Swipe for more"),
                    Icon(Icons.keyboard_arrow_down),
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "HipoZ - High\n",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Potential Zone",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "HipoZ is the digital zone for top students,\ngraduates and young professionals.Get access\nto exclusive benefits, invitations to "
                        "\nhi-class events \nand top lectures.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('images/stock_image_group 1.png'),
                      width: MediaQuery.of(context).size.width,
                      height: 600,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Get a HipoZ\n",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "Starter Package",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "HipoZ is the digital zone for top students,\ngraduates and young professionals.Get access\nto exclusive benefits, invitations to "
                        "\nhi-class events \nand top lectures.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Image(
                      image: AssetImage('images/stock_image_group 2.png'),
                      width: MediaQuery.of(context).size.width,
                      height: 600,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Contact Us",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RaisedButton(
                                    child: Text("I'm a student"),
                                    onPressed: () {
                                      _buttonColor = Colors.cyan;
                                    },
                                    color: _buttonColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                SizedBox(
                                  width: 20,
                                ),
                                RaisedButton(
                                    child: Text("I'm a company"),
                                    color: _buttonColor,
                                    onPressed: () {
                                      _buttonColor = Colors.cyan;
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: "Email Address",
                            ),
                            controller: email,
                            autovalidate: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                              hintText: "Message",
                            ),
                            controller: message,
                            minLines: 3,
                            maxLines: 5,
                            autovalidate: true,
                            validator: (value) {
                              if (value == null && value.isEmpty) {
                                return 'Please enter something';
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                              child: Text("Submit",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500)),
                              color: Color(0xFF36A8B7),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 3,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage('images/Logo_vector.png'),
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Table(
                      children: [
                        TableRow(children: <Widget>[
                          Text(
                            "Austria/Vienna",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "+43 699 11 51 11 11",
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Text(
                            "hipoZ",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(""),
                        ]),
                        TableRow(children: <Widget>[
                          Text(
                            "Gmail",
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            "innfo@hipoz.com",
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        "© 2021 HipoZ. All rights reserved.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
