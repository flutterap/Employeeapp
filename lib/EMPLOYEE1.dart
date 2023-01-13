import 'dart:ui';

import 'package:flutter/material.dart';

class MyEMPLOYEE1 extends StatelessWidget {
  const MyEMPLOYEE1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // IconButton( icon: Icons.arrow_back_ios_new_rounded , onPressed: () { Navigator.pushNamed(context, 'firstlogopage') },) ,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xff000000),
          onPressed: () {
            Navigator.pushNamed(context, 'firstlogopage');
          },
        ),
        actions: [
          const Icon(
            Icons.phone,
            color: Color(0xff2A55C3),
          ),
          const SizedBox(width: 18),
          Image.asset('Assets/message.png'),
          const SizedBox(width: 20),
        ],

        title: const Text(
          'EMPLOYEE 1',
          style:
              TextStyle(fontWeight: FontWeight.w700, color: Color(0xff000000)),
        ),

        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 105)),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 36),
                child: Image.asset(
                  'Assets/Employee.png',
                  height: 27,
                  width: 26,
                ),
              ),
              const SizedBox(width: 25),
              const Text(
                'Employee 1',
                style: TextStyle(
                    color: Color(0xff000000), fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 36),
                child: Image.asset(
                  'Assets/phone1.png',
                  height: 27,
                  width: 26,
                ),
              ),
              const SizedBox(width: 25),
              const Text(
                '+91 7039494588',
                style: TextStyle(
                    color: Color(0xff000000), fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 36),
                child: Image.asset(
                  'Assets/Email.png',
                  height: 27,
                  width: 26,
                ),
              ),
              const SizedBox(width: 25),
              const Text(
                'employ@gomcmail.com',
                style: TextStyle(
                    color: Color(0xff000000), fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(height: 37),
          SizedBox(
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
                Navigator.pushNamed(context, 'Addtask');
                // MyAddEmployees();
              },
              child: const Center(
                  child: Text(
                '+ ADD TASK',
                style: TextStyle(
                    color: Color(
                      0xffFFFFFF,
                    ),
                    fontWeight: FontWeight.w700),
              )),
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            height: 30,
            thickness: 7,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'TASK',
                  style: TextStyle(
                      color: Color(0xff000000), fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 36),
                        height: 47,
                        width: 334,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffbacD4C00B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset('Assets/greentick.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'TASK -1',
                                style: TextStyle(
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(width: 210),
                              Image.asset('Assets/whitearrow.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 36),
                        height: 47,
                        width: 334,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffbacD4C00B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset('Assets/greentick.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text(
                                'TASK -2',
                                style: TextStyle(
                                    color: Color(
                                      0xffFFFFFF,
                                    ),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(width: 210),
                              Image.asset('Assets/whitearrow.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 15),
                  Column(
                    children: [
                      for (int i = 3; i < 9; i++)
                        Container(
                          margin: const EdgeInsets.only(
                            top: 15,
                            right: 5,
                          ),
                          height: 47,
                          width: 334,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffbacD4C00B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 29,
                                ),
                                const Text('TASK -'),
                                Text(
                                  i.toString(),
                                  style: const TextStyle(
                                      color: Color(
                                        0xffFFFFFF,
                                      ),
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(width: 210),
                                Image.asset('Assets/whitearrow.png'),
                              ],
                            ),
                          ),
                        ),
                      const SizedBox(height: 15),
                    ],
                  ),

                  const SizedBox(height: 45),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
