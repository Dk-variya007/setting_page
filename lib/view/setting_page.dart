import 'package:flutter/material.dart';
import 'account_setting_page.dart';
import 'general_setting_page.dart';
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
          indicatorColor: Colors.teal,
          indicatorWeight: 5,
          controller: _tabController,
          tabs: const [
            Tab(text: 'Account Settings'),
            Tab(text: 'General Settings'),
            Tab(text: 'Billing'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          AccountSettingsTab(),
          GeneralSettingsTab(),
          BillingTab(),
        ],
      ),
    );
  }
}