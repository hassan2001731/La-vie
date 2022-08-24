import 'package:flutter/material.dart';
import 'package:untitled9/screen/SignUp.dart';

import '../Components/componenets.dart';

class Login extends StatefulWidget {
  State<Login> createState() => _LoginState();
}
  //const Login({super.key});
  class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final Formkey = GlobalKey<FormState>();

  // const loginScreen ({Key? key}) : super(key: key);
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 10,
      //   backgroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: Formkey,
              child: Column(
                  // key:,

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Stack(
                            // alignment: Alignment.topRight,
                            children: [
                              Image(
                                image: AssetImage('images/tree.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Stack(
                            // alignment: Alignment.topRight,
                            children: [
                              Image(
                                image: AssetImage('images/icon22.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Container(
                    //   alignment: Alignment.bottomCenter,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(6.0),
                    //     child: Container(
                    //       child: Stack(
                    //
                    //         // alignment: Alignment.topRight,
                    //         children: [
                    //
                    //
                    //           Image(
                    //             image: AssetImage('images/Facebook.png'),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(9.0),
                    //   child: Stack(
                    //     alignment: Alignment.topRight,
                    //     children: [
                    //       Image(
                    //         image: AssetImage('images/icon22.png'),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(0.0),
                    //   child: Stack(
                    //     // alignment: Alignment.topRight,
                    //     children: [
                    //       Image(
                    //         alignment: Alignment.topRight,
                    //         image: AssetImage('images/Googleo.png'),
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.all(0.0),
                    //   child: Container(
                    //     child: Stack(
                    //       // maonAxisalignment: Alignment.topRight,
                    //
                    //       children: [
                    //         Image(
                    //           // mainAxisAlignment :MainAxisAlignment.end,
                    //
                    //           image: AssetImage('images/Facebook.png'),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // TextButton(
                    //   "Sign Up                      Login",
                    //   style: TextStyle(
                    //     fontSize: 15.0,
                    //     color: Colors.grey,
                    //     fontWeight: FontWeight.w500,
                    //   ), child: null,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUP(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:

                                    BorderSide(
                                         // ,
                                        color: Colors.green),
                              ),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Container(

                            padding: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 2, color: Colors.green),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Text(
                    //   "Sign Up",
                    //   style: TextStyle(
                    //     fontSize: 15.0,
                    //
                    //     fontWeight: FontWeight.bold,
                    //
                    //   ),
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    defaultformfield(
                      controller: emailController,
                      label: "email",
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "email must not be empty ";
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    defaultformfield(
                      controller: passwordController,
                      // type: type,
                      label: 'password',
                      prefix: Icons.lock,
                      suffix:
                          isPassword ? Icons.visibility : Icons.visibility_off,
                      isPasssword: isPassword,
                      suffixPressed: () {
                        // setState(() {
                        //   isPassword = !isPassword;
                        // });
                        // setState(()
                        // {
                        //   isPassword=!isPassword;
                        // });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return "password is Too short";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    defaultButton(
                      text: "Login",
                      function: () {
                        if (Formkey.currentState!.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    // defaultButton(
                    //   text: "Register",
                    //   function: () {
                    //     print(emailController.text);
                    //     print(passwordController);
                    //   },
                    //   isUpperCase: false,
                    //
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '----------- or continue with -------------- ',
                          style: TextStyle(fontSize: 11),
                        ),

                        // TextButton(onPressed: () {},
                        //   child:
                        //   Text("Register Now",
                        //   ),
                        // ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              child: Stack(
                                // alignment: Alignment.topRight,
                                children: [
                                  Image(
                                    image: AssetImage('images/Facebook.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              child: Stack(
                                // alignment: Alignment.topRight,
                                children: [
                                  Image(
                                    image: AssetImage('images/Googleo.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
    //   Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //         'Second Route'),
    //   ),
    //   body: Center(
    //     child: ElevatedButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       child: const Text('Go back!'),
    //     ),
    //   ),
    // );
  }
}
