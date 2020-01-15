import 'package:flutter/material.dart';
import 'package:maternity_app/screens/home.dart';
import 'package:maternity_app/screens/booking.dart';
import 'package:maternity_app/screens/about.dart';
import 'package:maternity_app/screens/contact.dart';
import 'package:maternity_app/screens/doctors.dart';
import 'package:maternity_app/screens/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', routes: {
      '/': (context) => HomePage(),
      '/about': (context) => AboutPage(),
      '/booking': (context) => BookingPage(),
      '/contact': (context) => ContactPage(),
      '/doctors': (context) => DoctorsPage(),
      '/services': (context) => ServicesPage(),
    });
  }
}
