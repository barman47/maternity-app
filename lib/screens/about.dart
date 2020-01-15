import 'package:flutter/material.dart';
import 'package:maternity_app/drawer/custom_drawer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'),
      ),
      body: Text('About Page'),
//      drawer: CustomDrawer(),
    );
  }
}
