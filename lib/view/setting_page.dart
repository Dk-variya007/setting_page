import 'package:flutter/material.dart';
import 'package:flutter_web_settings/view/general_setting_page.dart';

import 'account_setting_page.dart';
import 'billing_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Account Settings'),
            Tab(text: 'General Settings'),
            Tab(text: 'Billing'),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: TabBarView(
        controller: _tabController,
        children: [
          AccountSettingsTab(),
          const GeneralSettingsTab(),
          const BillingTab(),
        ],
      ),
    );
  }
}
