import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Tab_Bar.dart';
import '../pages/home/categoriesPage.dart';

class Auth_form extends StatefulWidget {
  const Auth_form({Key? key}) : super(key: key);

  @override
  State<Auth_form> createState() => _Auth_formState();
}

class _Auth_formState extends State<Auth_form> {
  //****
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) =>
                    value!.isEmpty ? "enter a valid email" : null,
                decoration: InputDecoration(
                    labelText: "enter your email",
                    hintText: "test@gmail.com",
                    prefixIcon: Icon(
                      Icons.mail,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.redAccent))),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                obscureText: true, //اخفاء البسورد
                controller: passwordController,
                validator: (value) => value!.length < 6
                    ? "your password must be large than 6 character"
                    : null,
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.redAccent))),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);

                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text)
                          .then((value) {
                        print(value.user!.email);
                        print(value.user!.uid);
                        print("Login success");
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (c) => tabBar()));
                      }).catchError((error) {
                        print(error.toString());
                      });
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
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
