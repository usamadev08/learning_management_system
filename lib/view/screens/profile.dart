import 'package:flutter/material.dart';
import 'package:learning_management_system/view/helper/button.dart';
import 'package:learning_management_system/view/helper/textfield.dart';
import 'package:learning_management_system/view/screens/homepage.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xff004040),
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyTextField(
                hintText: 'Name',
                labelText: 'Name',
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
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                child: MyContainer(
                  child: Center(
                    child: Text(
                      'Update',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
