import 'package:flutter/material.dart';

class BillingTab extends StatelessWidget {
  const BillingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          ListTile(
            title: const Text('You are using the FREE VERSION of Product',style: TextStyle(color: Colors.pink),),
            trailing: ElevatedButton(
                onPressed: () {}, child: const Text('Upgrade plan')),
          ),
          const ListTile(
            title: Text('Monthly Credits left'),
            subtitle: Text('150 of 200'),
          ),
          const Divider(),
          DataTable(
            columns: const [
              DataColumn(label: Text('Features')),
              DataColumn(label: Text('Free')),
              DataColumn(label: Text('Pro')),
              DataColumn(label: Text('Enterprise')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('Credits')),
                DataCell(Text('Limited (200 monthly)')),
                DataCell(Text('Unlimited')),
                DataCell(Text('Unlimited')),
              ]),
              DataRow(cells: [
                DataCell(Text('Resolution')),
                DataCell(Text('360p, 720p')),
                DataCell(Text('1080p')),
                DataCell(Text('1080p')),
              ]),
              DataRow(cells: [
                DataCell(Text('Images')),
                DataCell(Text('AI Generated')),
                DataCell(Text('AI Generated, Manual')),
                DataCell(Text('AI Generated, Manual')),
              ]),
              DataRow(cells: [
                DataCell(Text('Export Formats')),
                DataCell(Text('PNG')),
                DataCell(Text('PNG, WEBP')),
                DataCell(Text('PNG, JPEG, WEBP')),
              ]),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Upgrade to PRO')),
              ElevatedButton(onPressed: () {}, child: const Text('Upgrade to ENTERPRISE')),
            ],
          ),
        ],
      ),
    );
  }
}
