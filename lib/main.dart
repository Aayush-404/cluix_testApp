import 'package:cluix_1/widgets/appbar.dart';
import 'package:cluix_1/screens/settings1.dart';
import 'package:cluix_1/screens/test_screen1.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: MainScreen()
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _children = [
    Test1(),
    const Settings(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // body: IndexedStack(
      //   index: _selectedIndex,
      //   children: _children
      // ),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: CustomAppBar()),
      body: Column(
        children: [
          Test1(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[400],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.science),
            label: 'Test',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_add),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}





