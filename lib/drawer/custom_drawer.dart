import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: <Widget>[
            ListTile(
                leading: Icon(
                  Mdi.home,
                  color: Colors.blue,
                ),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                }),
            ListTile(
                leading: Icon(
                  Mdi.accountClockOutline,
                  color: Colors.blue,
                ),
                title: Text('Booking'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/booking');
                }),
            ListTile(
                leading: Icon(
                  Mdi.cellphoneAndroid,
                  color: Colors.blue,
                ),
                title: Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contact');
                }),
            ListTile(
                leading: Icon(
                  Mdi.doctor,
                  color: Colors.blue,
                ),
                title: Text('Doctors'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/doctors');
                }),
            ListTile(
                leading: Icon(
                  Mdi.viewDashboard,
                  color: Colors.blue,
                ),
                title: Text('Services'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/services');
                }),
            ListTile(
                leading: Icon(
                  Mdi.informationOutline,
                  color: Colors.blue,
                ),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/about');
                }),
          ],
        ),
      ),
    );
  }
}
