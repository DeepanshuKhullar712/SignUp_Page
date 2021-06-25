import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'constants.dart/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  _SignUpState();

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstName= TextEditingController();
    final TextEditingController lastName= TextEditingController();
    final TextEditingController email= TextEditingController();
    final TextEditingController phone = TextEditingController();
    final TextEditingController password= TextEditingController();
    final TextEditingController repassword= TextEditingController();


    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Sign Up",style: TextStyle(fontSize: 30 ),),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            iconSize: 35,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("First Name",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: "Your First name",),
                  controller: firstName,
                ),
                SizedBox(height: 12,),
                Text("Last Name",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 12,),
                TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: "Your Last name",),
                  controller: lastName,
                ),
                SizedBox(height: 12,),
                Text("Email address",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 12,),
                TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: "Your email address",),
                  controller: email,
                ),
                SizedBox(height: 12,),
                Text("Phone No",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 12,),
                IntlPhoneField(
                  initialCountryCode: 'IN',
                  decoration: textInputDecoration.copyWith(labelText: 'Phone Number',),
                  controller: phone,
                ),

                SizedBox(height: 12,),
                Text("Password",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 12,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 4),
                    ),
                    hintText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye),

                  ),
                  controller: password,
                ),
                SizedBox(height: 12,),
                Text("Re-enter Password",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                SizedBox(height: 12,),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 4),
                    ),
                    hintText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  controller: repassword,
                ),
                SizedBox(height: 100,),



              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Next",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        onPressed: (){},



      ),

    );

  }

}
