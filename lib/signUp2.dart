import 'package:flutter/material.dart';
import 'package:signup_page/signIn.dart';
import 'package:signup_page/signUp3.dart';

import 'constants.dart/constants.dart';

class signUp2 extends StatefulWidget {
  const signUp2({key}) : super(key: key);

  @override
  _signUp2State createState() => _signUp2State();
}

class _signUp2State extends State<signUp2> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController password= TextEditingController();
    final TextEditingController repassword= TextEditingController();

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
                            image: AssetImage('images/Logo_vector.png'),
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
                obscureText: true,
                decoration: textInputDecoration.copyWith( hintText: "Enter Password", suffixIcon: Icon(Icons.remove_red_eye),),
                controller: password,
                validator: (value){
                  if(value.length < 8){
                    return 'Password too short!';
                  }
                },
              ),
              SizedBox(height: 40,),
              TextFormField(
                obscureText: true,
                decoration: textInputDecoration.copyWith( hintText: "Confirm Password", suffixIcon: Icon(Icons.remove_red_eye),),
                controller: repassword,
                validator: (value){
                  if(value != password){
                    return 'Password not match!';
                  }
                },
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
                      MaterialPageRoute(builder: (context) => signUp3()),
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
