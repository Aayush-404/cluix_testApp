import 'package:cluix_1/screens/test_screen2.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {

  Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  final myController =  TextEditingController();
  final timeController = TextEditingController();
  final lattController = TextEditingController();
  final longController = TextEditingController();

@override
  void dispose() {
    super.dispose();
    myController.dispose();
    timeController.dispose();
    lattController.dispose();
    longController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          margin: const EdgeInsets.only(top: 15,left: 15,right: 25),
          //padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              const Text('ADD NEW SAMPLE',
                style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text('WATER SOURCE',style: TextStyle(fontSize: 20)),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(label: Text('Enter the Location of water sample')),
                controller: myController,
              ),
              const SizedBox(height: 10),
              const Text('DATE & TIME of collection',style: TextStyle(fontSize: 20)),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(label: Text('Enter in DD/MM/YYYY format')),
                controller: timeController,
                keyboardType: TextInputType.datetime,
              ),
              const SizedBox(height: 10),
              const Text('Enter the coordinates',style: TextStyle(fontSize: 20)),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(label: Text('Enter Lattitude coord.')),
                controller: lattController,
              ),
              TextFormField(
                textAlign: TextAlign.left,
                decoration: const InputDecoration(label: Text('Enter Longitude coord.')),
                controller: longController,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const TestScreen2(),
                    ),
                  );
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
    );
  }
}
