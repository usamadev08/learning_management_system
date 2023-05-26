import 'package:flutter/material.dart';
import 'package:learning_management_system/view/helper/button.dart';
import 'package:learning_management_system/view/helper/textfield.dart';
import 'package:learning_management_system/view/screens/sendlink.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                const Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff004040),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Enter email we will send you a \n reset link",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const MyTextField(
                  hintText: 'Email',
                  labelText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendLink(),
                        ));
                  },
                  child: const MyContainer(
                    child: Center(
                      child: Text(
                        'Reset',
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
