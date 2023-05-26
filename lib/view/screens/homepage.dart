import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:learning_management_system/view/helper/textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Color(0xff004040),
        backgroundColor: Color(0xff89CCA4),
        title: Center(
          child: Text(
            'LMS',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
      drawer: Drawer(backgroundColor: Color(0xff89CCA4)),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          MyTextField(
            hintText: 'Search',
            labelText: 'Search',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Upcoming',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Recorded',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                height: 110,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff89CCA4),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Into to User Experience',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'By Bilal Wahab',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '8th May Monday 11:00am',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
