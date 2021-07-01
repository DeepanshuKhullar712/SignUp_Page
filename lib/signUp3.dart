import 'package:flutter/material.dart';
import 'package:signup_page/signIn.dart';

import 'constants.dart/constants.dart';
class signUp3 extends StatefulWidget {
  const signUp3({ key}) : super(key: key);

  @override
  _signUp3State createState() => _signUp3State();
}

class _signUp3State extends State<signUp3> {
  final TextEditingController address = TextEditingController();
  final TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Image(
                          image: AssetImage(
                            'images/stock_image_group 1.png',
                          ),
                        ),
                      ),
                      TableCell(
                        child: Text(""),
                      )
                    ]
                  ),
                ],
              ),
              SizedBox(height: 60,),

              SizedBox(height: 40,),

              SizedBox(height: 40,),

              RaisedButton(
                child: Icon(Icons.arrow_forward_ios),
                color: Color(0xFF36A8B7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),

                onPressed: (){
                },
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
