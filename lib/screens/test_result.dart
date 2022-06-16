import 'package:cluix_1/widgets/appbar.dart';
import 'package:flutter/material.dart';

class TestResult extends StatefulWidget {
  const TestResult({Key? key}) : super(key: key);

  @override
  State<TestResult> createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const Text('Result'),
          )
        ],
      ),
    );
  }
}
