import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup_page/signupPage.dart';

import 'constants.dart/constants.dart';


class SIgnIn extends StatefulWidget {
  const SIgnIn({key}) : super(key: key);

  @override
  _SIgnInState createState() => _SIgnInState();
}

class _SIgnInState extends State<SIgnIn> {



  @override
  Widget build(BuildContext context) {


    final TextEditingController firstName = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        resizeToAvoidBottomPadding: false,

      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 10,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                BlurryContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Text(
                                  "Sign in",
                                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width/2,),

                                IconButton(
                                  icon: Icon(Icons.close,color: Colors.white,),
                                  onPressed: (){
                                    Navigator.pop(context);
                                   },
                                )
                                    ],
                                    ),
                                  SizedBox(
                                  height: 25,
                                  ),
                                  Text(
                                  "Name or email address",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 15,),
                                  TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                  hintText: "Your name or email address",
                                  ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  controller: firstName,
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                  "Password",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500
                                ),
                          ),
                          SizedBox(height: 15,),
                          TextFormField(
                            obscureText: true,
                            onChanged: (value){
                              password = value as TextEditingController;
                            },
                              validator: (value) {
                                if (value.length < 8) {
                                  return 'Passsword too short!';
                                }
                                return null;
                              },
                            decoration: textInputDecoration.copyWith(hintText: "Your password",suffixIcon: Icon(Icons.remove_red_eye))
                          ),
                          SizedBox(height: 15,),
                          FlatButton(
                            child: Text("Forgot password?",style: TextStyle(decoration: TextDecoration.underline),),
                            onPressed: (){},
                          ),
                          SizedBox(height: 100,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height/12,
                            child: RaisedButton(
                              child: Text("Submit",
                                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                              onPressed: (){},
                              color: Color(0xFF36A8B7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              ),

                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account?"),
                              FlatButton(
                                child: Text("Sign up",style: TextStyle(decoration: TextDecoration.underline,color: Colors.white),),
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp1()),
                                  );
                                }
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}
