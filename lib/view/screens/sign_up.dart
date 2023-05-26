import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning_management_system/view/helper/button.dart';
import 'package:learning_management_system/view/helper/textfield.dart';
import 'package:learning_management_system/view/screens/profile.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004040),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/logo lms.png',
                  height: MediaQuery.of(context).size.height / 2.8,
                ),
              ),
              const Positioned(
                top: 190,
                right: 105,
                child: Text(
                  'Learning \n Management System',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: 556,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sign UP",
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xff004040),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      MyTextField(
                        hintText: 'Full Name',
                        labelText: 'Full Name',
                      ),
                      MyTextField(
                        hintText: 'Email',
                        labelText: ' Email',
                      ),
                      MyTextField(
                        hintText: 'Phone Number',
                        labelText: ' Phone Number',
                      ),
                      MyTextField(
                        hintText: 'Address',
                        labelText: ' Address',
                      ),
                      MyTextField(
                        hintText: ' Password',
                        labelText: '  Password',
                      ),
                      MyTextField(
                        hintText: 'Retype Password',
                        labelText: ' Retype Password',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyProfile(),
                              ));
                        },
                        child: MyContainer(
                          child: Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                            child: Divider(
                              indent: 90.1,
                              endIndent: 10.0,
                              thickness: 2,
                            ),
                          ),
                          Text(
                            "Or",
                            style: TextStyle(color: Colors.black, fontSize: 28),
                          ),
                          Expanded(
                            child: Divider(
                              indent: 10.0,
                              endIndent: 90.0,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
