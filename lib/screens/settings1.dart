import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Theme'),
              OutlinedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.chevron_right),
                  label: const Text('theme'),)
            ],
          ),
        )
      ],
    );
  }
}
