import 'package:flutter/material.dart';

class MyAddEmployees extends StatelessWidget {
  const MyAddEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            color: Color(0xff000000),
            onPressed: () {
              Navigator.pushNamed(context, 'firstlogopage');
            },
          ),
          title: const Text(
            'ADD EMPLOYEE',
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Color(0xff000000)),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 123),
            child: Text(
              'Employee Details',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xffD4C00B),
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 70),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            // ignore: avoid_unnecessary_containers
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'Assets/Employeewhite.png',
              ),
            )),
            const SizedBox(width: 17),
            // ignore: sized_box_for_whitespace
            Container(
              width: 340,
              child: const TextField(
                  decoration: InputDecoration(hintText: "EMPLOYEE NAME")),
            )
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'Assets/phone1.png',
              ),
            )),
            const SizedBox(width: 17),
            Container(
              width: 340,
              child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "PHONE NUMBER",
                  )),
            )
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'Assets/Email.png',
              ),
            )),
            const SizedBox(width: 17),
            Container(
              width: 340,
              child: const TextField(
                  decoration: InputDecoration(hintText: "EMAIL ID")),
            )
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'Assets/Employee1.png',
              ),
            )),
            const SizedBox(width: 17),
            Container(
              width: 340,
              child: const TextField(
                  decoration: InputDecoration(hintText: "EMPLOYEE USER NAME")),
            )
          ]),
          const SizedBox(height: 20),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 15)),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                'Assets/Password.png',
              ),
            )),
            const SizedBox(width: 17),
            Container(
              width: 340,
              child: const TextField(
                  decoration: InputDecoration(hintText: "EMPLOYEE PASSWORD")),
            )
          ]),
          const SizedBox(height: 210),
          // ignore: sized_box_for_whitespace
          Container(
            height: 47,
            width: 334,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffbacD4C00B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'firstlogopage');
                // MyAddEmployees();
              },
              child: const Center(
                  child: Text(
                'ADD EMPLOYEE',
                style: TextStyle(
                    color: Color(
                      0xffFFFFFF,
                    ),
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
        ]));
  }
}
