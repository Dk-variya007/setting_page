import 'package:flutter/material.dart';
import 'package:flutter_web_settings/helper/custome_divider.dart';
import 'package:flutter_web_settings/helper/custome_elevated_button.dart';

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
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text("Email preferences",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          SwitchListTile(
            inactiveThumbColor: Colors.white,
            activeColor: Colors.white,
            title: const Text('Updates'),
            value: iconValue1,
            onChanged: (bool value) {
              setState(() {
                iconValue1 = value;
              });
            },
          ),
          const MyDivider(),
          SwitchListTile(
            inactiveThumbColor: Colors.white,
            activeColor: Colors.white,
            title: const Text('Recommendations'),
            value: iconValue2,
            onChanged: (bool value) {
              setState(() {
                iconValue2 = value;
              });
            },
          ),
          const MyDivider(),
          ListTile(
            title: const Text(
              'Language',
            ),
            trailing: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  elevation: 0,
                  style: const TextStyle(color: Colors.white),
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
            ),
          ),
          const MyDivider(),
          ListTile(
            title: const Text('Theme'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(
                  activeColor: Colors.white,
                  value: 'Dark',
                  groupValue: 'Dark',
                  onChanged: (value) {},
                ),
                const Text('Dark'),
                Radio(
                  activeColor: Colors.white,
                  value: 'Light',
                  groupValue: 'Dark',
                  onChanged: (value) {},
                ),
                const Text('Light'),
              ],
            ),
          ),
          const MyDivider(),
          ListTile(
            title: const Text('Feedback & Suggestion'),
            trailing: ElevatedButton(
                onPressed: () {}, child: const Text('Feedback Form')),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const MyElevatedButton(
                text: "Cancel",
                color: Colors.teal,
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Save Settings')),
            ],
          ),
        ],
      ),
    );
  }
}
