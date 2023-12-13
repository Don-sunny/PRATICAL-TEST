import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:practical_test/root_widget.dart';

import 'package:practical_test/screens/login/widgets/text_field_widget.dart';
import 'package:practical_test/widgets/app_bar_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
          preferredSize: Size(50, 50),
          child: AppBarWidget(
            title: 'Login',
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Center(
            child: Image.asset('assets/images/codeland_logo 1.png'),
          ),
          const SizedBox(height: 40),
          const Center(
            child: Text(
              'Log in to your Account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 40),
          const TextFieldWidget(fieldName: 'Enter User name'),
          const TextFieldWidget(fieldName: 'Password'),
          const SizedBox(height: 40),
          Center(
            child: SizedBox(
              height: size.height * 0.060,
              width: size.width * 0.50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.yellow,
                      padding: const EdgeInsets.only(left: 60, right: 20)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavigatoinBarWidget()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Icon(
                        Ionicons.arrow_forward_circle_outline,
                        color: Colors.black,
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
