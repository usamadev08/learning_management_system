import 'package:flutter/material.dart';
import 'package:learning_management_system/view/helper/button.dart';
import 'package:learning_management_system/view/helper/textfield.dart';
import 'package:learning_management_system/view/screens/newpassword.dart';
import 'package:learning_management_system/view/screens/resetpassword.dart';
import 'package:learning_management_system/view/screens/sign_up.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "SIGN IN",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff004040),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                MyTextField(
                  hintText: 'Email',
                  labelText: 'Email',
                ),
                MyTextField(
                  hintText: 'Password',
                  labelText: 'Password',
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewPassword(),
                        ));
                  },
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ));
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
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
                Text(
                  'Dont have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUP(),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
