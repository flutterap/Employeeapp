import 'package:cehpoint/tabbarpage/Employees.dart';
import 'package:cehpoint/tabbarpage/Task.dart';
import 'package:flutter/material.dart';

class Myfirstlogopage extends StatefulWidget {
  const Myfirstlogopage({super.key});

  @override
  State<Myfirstlogopage> createState() => _MyfirstlogopageState();
}

class _MyfirstlogopageState extends State<Myfirstlogopage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Image.asset(
                    'Assets/logo.png',
                    height: 49,
                    width: 52.0,
                  ),
                ),
                const SizedBox(width: 29),
                Container(
                  width: 275,
                  child: TextField(
                    // onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                        hintText: "Search Employee",
                        prefixIcon: Image.asset('Assets/search.png'),
                        suffixIcon: Image.asset('Assets/message.png')),
                  ),
                ),
                const SizedBox(width: 18),
                Center(
                  child: Row(
                    children: [
                      PopupMenuButton(
                        itemBuilder: (BuildContext context) => [
                          const PopupMenuItem(
                            child: Center(
                                child: Text(
                              'Call the CEO',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                          ),
                          const PopupMenuItem(
                            child: Center(
                                child: Text(
                              'Add Employee',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                          ),
                          const PopupMenuItem(
                            child: Center(
                                child: Text(
                              'Payment',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                          ),
                          const PopupMenuItem(
                            child: Center(
                                child: Text(
                              'Log out',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                          ),
                        ],
                        child: Image.asset(
                          'Assets/threedot.png',
                          height: 20,
                          width: 4,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 37),
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
                  Navigator.pushNamed(context, 'Addemployees');
                  // MyAddEmployees();
                },
                child: const Center(
                    child: Text(
                  '+ ADD EMPLOYEE',
                  style: TextStyle(
                      color: Color(
                        0xffFFFFFF,
                      ),
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
            TabBar(
              labelColor: Color(0xff000000),
              controller: tabController,
              tabs: const [
                Tab(
                  text: 'Employees',
                ),
                Tab(text: 'Task'),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                MyEmployees(),
                MyTask(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
