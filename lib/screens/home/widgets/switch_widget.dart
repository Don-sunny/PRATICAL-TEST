import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class SwitchButtonWidget extends StatefulWidget {
  const SwitchButtonWidget({super.key});

  @override
  State<SwitchButtonWidget> createState() => _SWitchButtonWidgetState();
}

class _SWitchButtonWidgetState extends State<SwitchButtonWidget> {
  bool checked = false;
  final _controller = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          checked = true;
        } else {
          checked = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Punch In',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 10,
        ),
        AdvancedSwitch(
          controller: _controller,
          activeColor: const Color.fromARGB(255, 56, 100, 57),
          inactiveColor: Colors.grey,
          // borderRadius: BorderRadius.all(const Radius.circular(15)),
          width: 40.0,
          height: 20.0,
          enabled: true,
          disabledOpacity: 0.5,
        ),
      ],
    );
  }
}
