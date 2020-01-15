import 'package:flutter/material.dart';
import 'package:maternity_app/drawer/custom_drawer.dart';
import 'package:maternity_app/constants.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'CHILD CARE INFORMATION MANAGEMENT SYSTEM',
                style: titleStyle,
              ),
              SizedBox(
                height: 40.0,
              ),
              RaisedButton(
                color: purple,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                textColor: Colors.white,
                child: Text(
                  'Book Now',
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/booking');
                },
              ),
            ],
          )),
      drawer: CustomDrawer(),
    );
  }
}
