// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/Components/Componenets.dart';
// import 'package:untitled9/screen/Login.dart';
// import 'package:S';
// import 'package:untitled9/screen/SignUp.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var NameController =TextEditingController();
  final Formkey = GlobalKey<FormState>();

  // const loginScreen ({Key? key}) : super(key: key);
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         resizeToAvoidBottomInset: false,
        
        // appBar: AppBar(
        //   elevation: 10,
        //   backgroundColor: Colors.white,
        // ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
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

                                // DefaultTabController(
                                //   child: Column(
                                //     children: [
                                //       Container(
                                //         width: double.infinity,
                                //         height: 55,
                                //         child: TabBar(
                                //           indicatorColor: Colors.green,
                                //
                                //           tabs: [
                                //             Text("login", style: TextStyle(color: Colors.green),),
                                //             Text("SignUp", style: TextStyle(color: Colors.green)),
                                //           ],
                                //         ),
                                //       ),
                                //       Container(
                                //         width: double.infinity,
                                //         height: 300,
                                //         child: TabBarView(
                                //           children: [
                                //             Center(child: Text("login")),
                                //             Center(child: Text("SignUp")),
                                //           ],
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                //   length:2 ,
                                //
                                // ),
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


                      DefaultTabController(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 30,
                              child: TabBar(
                                indicatorColor: Colors.green,

                                tabs: [
                                  Text("login", style: TextStyle(color: Colors.green),

                                  ),
                                  Text("SignUp", style: TextStyle(color: Colors.green)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: double.infinity,
                              height: 165,
                              child: TabBarView(
                                children: [
                                  Column(
                                    children: [
                                    defaultformfield(
                                      controller: emailController,
                                      label: "email",
                                      prefix: Icons.email,
                                      type: TextInputType.emailAddress,
                                      validate: (value) {

                                        if (value!.isEmpty) {
                                          return "email must not be empty ";
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
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
                                        setState(() {
                                          isPassword = !isPassword;
                                        });
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
                                  ],),
                                  ListView(
                                    children: [
                                      Column(
                                        children: [
                                          defaultformfield(
                                            controller: emailController,
                                            label: "First Name",
                                            // prefix: Icons,
                                            type: TextInputType.emailAddress,
                                            validate: (value) {
                                              if (value!.isEmpty) {
                                                return "Enter your First Name ";
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          defaultformfield(
                                            controller: emailController,
                                            label: "Second Name",
                                            // prefix: Icons,
                                            type: TextInputType.emailAddress,
                                            validate: (value) {
                                              if (value!.isEmpty) {
                                                return "Enter your Second Name ";
                                              }
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
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
                                              return null;
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
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
                                              setState(() {
                                                isPassword = !isPassword;
                                              });
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
                                        ],),
                                    ]
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        length:2,

                      ),
                      SizedBox(
                        height: 10,
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
      ),
    );
  }
}
