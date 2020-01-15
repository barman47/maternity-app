import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services Page'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              color: Color(0xFFE8E8E8),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Antenatal Care (Pregnancy)'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Intrapartum Care'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              color: Color(0xFFE8E8E8),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Postnatal Care'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Child brith learning'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              color: Color(0xFFE8E8E8),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Maternity Education'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Icon(Mdi.viewDashboard),
                  SizedBox(width: 10.0),
                  Text('Posy-natal  Care'),
                ],
              ),
            ),
          ],
        ),
      ),
//      drawer: CustomDrawer(),
    );
  }
}
