import 'package:flutter/material.dart';
class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}
class RadioGroupWidget extends State {
  
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Parent';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
        padding: EdgeInsets.all(1.0),
        // child: Text('Selected Radio Item = ' + '$radioButtonItem',
        //     style: TextStyle(fontSize: 21))
         ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              activeColor: Colors.green,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Parent';
                  id = 1;
                });
              },
            ),
            Text(
              'Parent',
              style: new TextStyle(fontSize: 17.0),
            ),

            Radio(
              activeColor: Colors.green,
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Teacher';
                  id = 2;
                });
              },
            ),
            Text(
              'Teacher',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}