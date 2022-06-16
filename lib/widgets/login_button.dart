import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const LoginButton({super.key,
    required this.icon,
    required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.indigoAccent
      ),
      child: Icon(icon, color: Colors.white,),
    );
  }
}
