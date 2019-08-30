import 'package:flutter/material.dart';

class DisableButton extends StatefulWidget {
  @override
  DisableButtonState createState() {
    return new DisableButtonState();
  }
}

class DisableButtonState extends State<DisableButton> {
  //boolean value to determine whether button is disabled or enabled.
  bool _isButtonDisabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disable & Enable Button Example'),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Center(
                child: RaisedButton(
                  color: Colors.green,
                  child: Icon(Icons.power_settings_new),
                  onPressed: _isButtonDisabled ? null : () {},
                ),
              ),
            ),
            FlatButton(
              child:
                  Text(_isButtonDisabled ? 'Turn ON' : 'Turn OFF'),
              onPressed: () {
                setState(() => _isButtonDisabled = !_isButtonDisabled);
              },
            )
          ],
        ),
      ),
    );
  }
}