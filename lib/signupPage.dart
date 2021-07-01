import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:signup_page/signIn.dart';
import 'package:signup_page/signUp2.dart';

import 'constants.dart/constants.dart';

class SignUp1 extends StatefulWidget {
  const SignUp1({key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp1> {
  _SignUpState();

  @override
  Widget build(BuildContext context) {


    final TextEditingController firstName= TextEditingController();
    final TextEditingController email= TextEditingController();
    final TextEditingController phone = TextEditingController();


    return  Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20, bottom: 10),
          child: Form(
            child: ListView(
              children: [
                SizedBox(height: 30,),
                Table(
                  children: [
                    TableRow(
                        children:[
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Text("Sign Up",style: TextStyle(fontSize: 45 ,fontWeight: FontWeight.bold),),
                          ),
                          TableCell(
                            child: Image(
                              image: AssetImage('images/Group 3.png'),
                              width: 150,
                              height: 150,
                            ),
                          )
                        ]
                    )
                  ],
                ),
                SizedBox(height: 60,),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: "Your First name",prefixIcon: Icon(Icons.account_box)),
                  controller: firstName,
                ),
                SizedBox(height: 40,),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: "Your email address",prefixIcon: Icon(Icons.email),),
                  controller: email,
                ),
                SizedBox(height: 40,),
                IntlPhoneField(
                  initialCountryCode: 'IN',
                  decoration: textInputDecoration.copyWith(hintText: 'Phone Number',prefixIcon: Icon(Icons.call)),
                  controller: phone,
                ),
                SizedBox(height: 40,),
                Center(
                  child: RaisedButton(
                    child: Icon(Icons.arrow_forward_ios),
                    color: Color(0xFF36A8B7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),


                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => signUp2()),
                      );

                    },
                  ),
                ),



                SizedBox(height: 40,),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?"),
                      FlatButton(
                          child: Text("Sign In",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white),),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SIgnIn()),
                            );
                          }
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),

    );

  }

}
