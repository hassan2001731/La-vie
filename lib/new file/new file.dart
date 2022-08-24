import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              DefaultTabController(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 55,
                      child: TabBar(
                        indicatorColor: Colors.green,

                        tabs: [
                          Text("login", style: TextStyle(color: Colors.green),),
                          Text("SignUp", style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: TabBarView(
                        children: [
                          Center(child: Text("login")),
                          Center(child: Text("SignUp")),
                        ],
                      ),
                    ),
                  ],
                ),
                length:2 ,

              ),

            ],
          ),
        )
      ),
    );
  }
}
