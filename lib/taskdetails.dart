import 'package:flutter/material.dart';

// ignore: camel_case_types
class TASK_DETAILS extends StatelessWidget {
  const TASK_DETAILS({super.key});

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
            Navigator.pushNamed(context, 'Addtask');
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
      body: Container(),
    );
  }
}
