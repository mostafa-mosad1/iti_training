
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progect01/pages/auth/register.dart';
import 'package:progect01/widgets/Tab_Bar.dart';

import '../../widgets/auth_form.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar( //leading: Icon(Icons.person),
              title: Center(
                  child: Text(
                    "Go Bus",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ))),
          body: Stack(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4,
                //  alignment: Alignment.topLeft,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                      image: AssetImage("images/1.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "HELLO!",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2),
                        ),
                        Image.asset(
                          "images/1.jpg",
                          height: 0,
                        ), SizedBox(height: 270,),


                        //text form***********

                        Auth_form(),


                        SizedBox(height: 15,),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t Have an account?'),
                            TextButton(
                                onPressed: () => Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (c) => RegisterScreen())) ,
                                child: Text("Register Now")),
                          ],


                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ));}}