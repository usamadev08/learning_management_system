import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning_management_system/view/helper/button.dart';
import 'package:learning_management_system/view/screens/sign_in.dart';

class SendLink extends StatefulWidget {
  const SendLink({super.key});

  @override
  State<SendLink> createState() => _SendLinkState();
}

class _SendLinkState extends State<SendLink> {
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
                  "Link Sent",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xff004040),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Password reset link has \n been sent to your given \n email.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninPage(),
                        ));
                  },
                  child: const MyContainer(
                    child: Center(
                      child: Text(
                        'Done',
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
