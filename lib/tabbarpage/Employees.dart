import 'package:flutter/material.dart';

class MyEmployees extends StatelessWidget {
  const MyEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Image.asset(
                    'Assets/Employee.png',
                    height: 27,
                    width: 26,
                  ),
                ),
                const SizedBox(width: 14.62),
                const Text(
                  'Employee 1',
                  style: TextStyle(
                      color: Color(0xff000000), fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 119),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 100,
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'INVITE',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 250, 241, 159)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 29),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Image.asset(
                    'Assets/Employee.png',
                    height: 27,
                    width: 26,
                  ),
                ),
                const SizedBox(width: 14.62),
                const Text(
                  'Employee 1',
                  style: TextStyle(
                      color: Color(0xff000000), fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 119),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 100,
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'INVITE',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 250, 241, 159)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 29),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18),
                  child: Image.asset(
                    'Assets/Employee.png',
                    height: 27,
                    width: 26,
                  ),
                ),
                const SizedBox(width: 14.62),
                const Text(
                  'Employee 1',
                  style: TextStyle(
                      color: Color(0xff000000), fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 119),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  width: 100,
                  height: 30,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'INVITE',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 250, 241, 159)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
