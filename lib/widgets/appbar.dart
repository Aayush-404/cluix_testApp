import 'package:cluix_1/widgets/login_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35,left: 20,right: 20),
      height: 120,
      width: double.infinity,
      decoration:  const BoxDecoration(
          color: Colors.indigo,
          borderRadius:  BorderRadius.only(
            bottomLeft: Radius.circular(40.00),
            bottomRight: Radius.circular(40.00),
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("CLUIX The Water testing app",
                    style: TextStyle(
                        fontSize: 20.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text("India-Winning Startup",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: LoginButton(
                        icon: Icons.person,
                        onPressed: (){}
                    ),
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
