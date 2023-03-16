import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Log_in.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterScreen> {
  bool visible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
              child: Text(
        "Go Bus",
        style: TextStyle(
          fontSize: 30,
        ),
      ))),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
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
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(
                    height: 270,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: "enter your email",
                      hintText: "test@gmail.com",
                      prefixIcon: Icon(
                        Icons.mail,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.redAccent)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: visible,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: IconButton(
                          icon: visible == false
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            visible = !visible;
                            print(visible);
                            setState(() {});
                          }),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.redAccent)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () async {
                        print(emailController.text);
                        print(passwordController.text);
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                            .then((value) {
                          print(value.user?.email);
                          print(value.user?.uid);
                          FirebaseAuth.instance.currentUser
                              ?.sendEmailVerification()
                              .then((value) {
                            print("send");
                          });
                        }).catchError((error) {
                          print(error.toString());
                        });
                        setState(() {});
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Have an account?'),
                      TextButton(
                          onPressed: () {
                            print("Register");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login Now",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
