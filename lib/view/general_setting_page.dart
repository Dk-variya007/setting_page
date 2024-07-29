import 'package:flutter/material.dart';

class GeneralSettingsTab extends StatefulWidget {
  const GeneralSettingsTab({super.key});

  @override
  State<GeneralSettingsTab> createState() => _GeneralSettingsTabState();
}

class _GeneralSettingsTabState extends State<GeneralSettingsTab> {
  bool iconValue1 = false;
  bool iconValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          SwitchListTile(
            title: const Text('Email preferences - Updates'),
            value: iconValue1,
            onChanged: (bool value) {
              setState(() {
                iconValue1 = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Email preferences - Recommendations'),
            value: iconValue2,
            onChanged: (bool value) {
              setState(() {
                iconValue2 = value;
              });
            },
          ),
          ListTile(
            title: const Text('Language'),
            trailing: DropdownButton<String>(
              value: 'English UK',
              onChanged: (newValue) {},
              items: <String>['English UK', 'English US']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          ListTile(
            title: const Text('Theme'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  value: 'Dark',
                  groupValue: 'Dark',
                  onChanged: (value) {},
                ),
                const Text('Dark'),
                Radio(
                  value: 'Light',
                  groupValue: 'Dark',
                  onChanged: (value) {},
                ),
                const Text('Light'),
              ],
            ),
          ),
          ListTile(
            title: const Text('Feedback & Suggestion'),
            trailing: ElevatedButton(
                onPressed: () {}, child: const Text('Feedback Form')),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Cancel')),
              const SizedBox(width: 8),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Save Settings')),
            ],
          ),
        ],
      ),
    );
  }
}
