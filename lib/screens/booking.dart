import 'package:flutter/material.dart';
import 'package:maternity_app/constants.dart';
import 'package:localstorage/localstorage.dart';
import 'package:uuid/uuid.dart';
import 'package:maternity_app/models/user.dart';

var uuid = Uuid();

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final storage = new LocalStorage('storage.json');

  final _formKey = GlobalKey<FormState>();
  final globalKey = GlobalKey<ScaffoldState>();
  final snackBar = SnackBar(content: Text('Booking Succeded'));

  final DateTime date = null;
  final String name = null;
  final String phone = null;
  final String service = null;
  final String specialist = null;
  final String reason = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Booking'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please provide the input';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Name here',
                    labelStyle: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please provide phone number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    date == null
                        ? 'Select Date Appointment Date'
                        : date.toString(),
                  ),
                  RaisedButton(
                    child: Text('Select Date'),
                    onPressed: () {
                      showDatePicker(
                              context: context,
                              initialDate: date == null ? DateTime.now() : date,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2021))
                          .then((date) {
                        setState(() {
                          this.date = date;
//                      String displayDate = date.
                        });
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Specify Service';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Service',
                    labelStyle: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Specify Specialist';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Specialist',
                    labelStyle: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Specify reason for appointment';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Reason for Appointment',
                    labelStyle: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  style: TextStyle(
                    color: black,
                  ),
                ),
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print('Form Submitted');
                    Scaffold.of(context).showSnackBar(snackBar);
                  } else
//                    var user = {'id': uuid.v4(), 'name': $name, phone, $date, $service, $specialist, $reason};
                      var user = new Map({});
//                    storage.setItem($name, value)
                  }
                },
                color: purple,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context) {
    final snackbar = SnackBar(content: Text('FOrm Submitted'));
    globalKey.currentState.showSnackBar(snackbar);
  }
}
