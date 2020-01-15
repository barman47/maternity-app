import 'package:flutter/material.dart';
import 'package:maternity_app/constants.dart';
import 'package:mdi/mdi.dart';

class DoctorsPage extends StatelessWidget {
  static const textStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Quicksand',
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors Page'),
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: purple,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Mdi.doctor,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text(
                        'Midwives',
                        style: textStyle,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                color: purple,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Mdi.doctor,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text(
                        'Pediatricians',
                        style: textStyle,
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                color: purple,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Mdi.doctor,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text(
                        'Obstetrician',
                        style: textStyle,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
//      drawer: CustomDrawer(),
    );
  }
}
