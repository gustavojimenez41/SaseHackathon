import 'package:flutter/material.dart';


class BluetoothPage extends StatefulWidget {
  @override
  _BluetoothPageState createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                  'Enter Bluetooth ID',
                  style: TextStyle(
                      fontSize:40.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                  ),
            ),

            new TextField(
               decoration: new InputDecoration(
                 hintText: "Copy and Paste Your Bluetooth ID here "
               )
              ),
              new Text("")
            ]
          )
        )
      )
    ;
    }
  }