import 'package:flutter/material.dart';
import 'package:flutter_web_settings/helper/custome_divider.dart';
import 'package:flutter_web_settings/helper/custome_elevated_button.dart';

class AccountSettingsTab extends StatefulWidget {
  const AccountSettingsTab({super.key});

  @override
  State<AccountSettingsTab> createState() => _AccountSettingsTabState();
}

class _AccountSettingsTabState extends State<AccountSettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          ListTile(
            title: const Row(
              children: [
                Text('Profile Picture', style: TextStyle(color: Colors.grey)),
                SizedBox(
                  width: 90,
                ),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Text('T'),
                ),
              ],
            ),
            trailing: Row(mainAxisSize: MainAxisSize.min, children: [
              ElevatedButton(onPressed: () {}, child: const Text('Add')),
              const SizedBox(width: 8),
              const MyElevatedButton(text: 'Remove')
            ]),
          ),
          const MyDivider(),
          myListTile('Profile Name', 100, "Name123", 'Change'),
          const MyDivider(),
          myListTile('Email Id', 136, 'TXXXXXXXXX@xyz.com', 'Change'),
          const MyDivider(),
          ListTile(
            title: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'You will be using Product as a ',
                    style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: 'Content Creator',
                    style: TextStyle(color: Colors.teal))
              ]),
            ),
            trailing: const MyElevatedButton(
              text: "Change",
            ),
          ),
          const MyDivider(),
          myListTile('Password', 125, '********', 'Change'),
          const MyDivider(),
          ListTile(
              title: const Row(
                children: [
                  Text('Current Plan', style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 103,
                  ),
                  Text('Product AI Free Version')
                ],
              ),
              trailing: ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Upgrade plan"),
                icon: const Icon(Icons.upgrade),
              )),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyElevatedButton(
                text: "Cancel",
                color: Colors.teal,
              ),
              SizedBox(width: 8),
              MyElevatedButton(
                text: "Save Settings",
                backgroundColor: Colors.teal,
                color: Colors.teal,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget myListTile(
    String title,
    double width,
    String subtitle,
    String text,
  ) {
    return ListTile(
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: width,
          ),
          Text(subtitle),
        ],
      ),
      trailing: MyElevatedButton(text: text),
    );
  }
}
