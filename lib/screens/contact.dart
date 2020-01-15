import 'package:flutter/material.dart';
import 'package:maternity_app/drawer/custom_drawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Text('Contact Page'),
//      drawer: CustomDrawer(),
    );
  }
}
