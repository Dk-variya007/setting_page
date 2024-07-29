import 'package:flutter/material.dart';

class AccountSettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(child: Text('T')),
            title: Text('Profile Picture'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Add')),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text('Remove')),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Profile Name'),
            subtitle: Text('Name123'),
            trailing: ElevatedButton(onPressed: () {}, child: Text('Change')),
          ),
          Divider(),
          ListTile(
            title: Text('Email Id'),
            subtitle: Text('TXXXXXXXXX@xyz.com'),
            trailing: ElevatedButton(onPressed: () {}, child: Text('Change')),
          ),
          Divider(),
          ListTile(
            title: Text('You will be using Product as a'),
            subtitle: Text('Content Creator'),
            trailing: ElevatedButton(onPressed: () {}, child: Text('Change')),
          ),
          Divider(),
          ListTile(
            title: Text('Password'),
            subtitle: Text('********'),
            trailing: ElevatedButton(onPressed: () {}, child: Text('Change')),
          ),
          Divider(),
          ListTile(
            title: Text('Current Plan'),
            subtitle: Text('Product AI Free Version'),
            trailing: ElevatedButton(onPressed: () {}, child: Text('Upgrade plan')),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Cancel')),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text('Save Settings')),
            ],
          ),
        ],
      ),
    );
  }
}
