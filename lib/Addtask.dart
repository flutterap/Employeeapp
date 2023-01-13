// ignore: file_names

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:zefyrka/zefyrka.dart';

class MyAddTask extends StatelessWidget {
  MyAddTask({super.key});
  ZefyrController _controller = ZefyrController();

  final dropValue = ValueNotifier('');

  final dropOpcoes = [
    '    Task1',
    '    Task2',
    '    Task3',
    '    Task4',
    '    Task5',
    '    Task6',
    '    Task7',
    '    Task8',
    '    Task9',
    '    Task10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            color: const Color(0xff000000),
            onPressed: () {
              Navigator.pushNamed(context, 'EMPLOYEE1');
            },
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              'ADD TASK',
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xff000000)),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 55, /*left: 163*/
              ),
              child: Text(
                'Task Details',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xffD4C00B),
                    fontSize: 16),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: const [
                SizedBox(
                  width: 360,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'TASK TITLE'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                ValueListenableBuilder(
                  valueListenable: dropValue,
                  builder: (context, value, child) {
                    return Container(
                      decoration: BoxDecoration(border: Border.all()),
                      width: 360,
                      child: DropdownButton2<String>(
                        dropdownWidth: 100,
                        dropdownDirection: DropdownDirection.left,
                        isExpanded: true,
                        icon: const Icon(Icons.arrow_drop_down),
                        hint: const Text('   TASK NO.'),
                        underline: Container(),
                        value: (value.isEmpty) ? null : value,
                        onChanged: (escolha) =>
                            dropValue.value = escolha.toString(),
                        items: dropOpcoes
                            .map((op) => DropdownMenuItem(
                                  value: op,
                                  child: Text(op),
                                ))
                            .toList(),
                      ),
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                SizedBox(
                  width: 360,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'TASK COMPLETE DATE '),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  decoration: BoxDecoration(border: Border.all()),
                  width: 360,
                  height: 100,
                  child: ZefyrEditor(
                    controller: _controller,
                  ),
                ),
                ZefyrToolbar.basic(controller: _controller),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            SizedBox(
              height: 59,
              width: 201,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffbacD4C00B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'taskdetails');
                },
                child: const Center(
                    child: Text(
                  'SAVE',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
          ]),
        ));
  }
}
