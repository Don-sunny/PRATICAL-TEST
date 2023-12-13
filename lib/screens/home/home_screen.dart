import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:practical_test/screens/home/widgets/switch_widget.dart';
import 'package:practical_test/screens/home/widgets/task_container_widget.dart';
import 'package:practical_test/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(50, 50),
            child: AppBarWidget(
              title: 'Home',
              actionIcon: Ionicons.notifications_outline,
            )),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SwitchButtonWidget(),
                  ],
                ),
                const Text(
                  'Task Status',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TaskContainer(num: 12, text: 'New', color: Colors.red),
                    TaskContainer(
                        num: 12, text: 'In Progress', color: Colors.blue),
                    TaskContainer(
                        num: 12, text: 'Resolved', color: Colors.green),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/Rectangle 315.png')),
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        right: 10,
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.fullscreen,
                            size: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: const Icon(IconlyLight.send),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 245, 210, 12),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name:xxxx'),
                          Text('Vehicle #:KA 01 JK2345'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 25,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 214, 52, 40),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8))),
                                onPressed: () {},
                                child: const Text(
                                  'Ward:05',
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                          SizedBox(
                            height: 25,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  side: const BorderSide(width: 0.50),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '9886745344',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.phone_forwarded_rounded,
                                    color: Colors.black,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text(
                                'View Drive List',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(CupertinoIcons.forward)
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
