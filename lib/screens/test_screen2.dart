import 'package:cluix_1/screens/instruction_screen.dart';
import 'package:cluix_1/widgets/appbar.dart';
import 'package:flutter/material.dart';

class TestScreen2 extends StatefulWidget {
  const TestScreen2({Key? key}) : super(key: key);

  @override
  State<TestScreen2> createState() => _TestScreen2State();
}

class _TestScreen2State extends State<TestScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 700,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(50),
                crossAxisSpacing: 40,
                mainAxisSpacing: 40,
                crossAxisCount: 2,
                children:  <Widget>[
                   TextButton (
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                          const InstructionPageFDS(),
                        ),
                      );
                    },
                     style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black),),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("Copper",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("Lead",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("pH",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                  TextButton (
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow)                     ),
                    child: const Text("FDS",style: TextStyle(fontSize: 20,color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
