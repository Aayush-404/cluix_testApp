import 'package:cluix_1/screens/test_result.dart';
import 'package:cluix_1/widgets/appbar.dart';
import 'package:flutter/material.dart';

class InstructionPageFDS extends StatelessWidget {
  const InstructionPageFDS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
                const CustomAppBar(),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 70,
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Instructions to perform',
                          style: TextStyle(
                              fontSize: 20,fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text('<--instruction-->'),
                const SizedBox(height: 300),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      const TestResult(),
                    ),
                  );},
                    child: const Text('Proceed to Test'))
              ]
          )
        )
    );
  }
}
