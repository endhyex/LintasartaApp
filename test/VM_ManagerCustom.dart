import 'package:flutter/material.dart';

import 'package:lintasartaapp/Main.dart';
import 'package:lintasartaapp/Overview.dart';
import 'package:lintasartaapp/Settings.dart';
import 'package:lintasartaapp/VM_Manager.dart';

class VMManagerCustomPage extends StatefulWidget {
  @override
  _VMManagerCustomPageState createState() => _VMManagerCustomPageState();
}

class _VMManagerCustomPageState extends State<VMManagerCustomPage> {
  var region = ["TB. Simatupang", "TechnoPark"];

  Material vmManagerCustom(Orientation orientation) {
    return Material(
      // child: Card(
      //     elevation: 6,
          child: Container(
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.red,
                              height: 50.0,
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.red,
                              height: 50.0,
                            ))),
                            Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.red,
                              height: 50.0,
                            )))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.red,
                              height: 50.0,
                            ))),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              color: Colors.red,
                              height: 50.0,
                            )))
                  ],
                )
              ],
            ),
          )
          // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: new AppBar(
            backgroundColor: Colors.blue,
            title:
                // new Center(
                //   child:
                new Text("VM Manager Custom"),
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        drawer: new Container(
          constraints: new BoxConstraints.expand(
            width: 240.0,
            // width: MediaQuery.of(context).size.width / 3,
          ),
          color: Colors.white,
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              new Image.asset(
                "images/Lintasarta.png",
                height: 75.0,
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Container(
                height: 0.80,
                color: Colors.grey,
              ),
              new ListTile(
                leading: new Icon(Icons.home),
                title: new Text('Home'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Home()),
                  );
                },
              ),
              ExpansionTile(
                leading: new Icon(Icons.storage),
                title: new Text('Public Cloud'),
                children: <Widget>[
                  new ListTile(
                    title: new Text('Overview'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new OverviewPage()),
                      );
                    },
                  ),
                  new ListTile(
                    title: new Text('VM Manager'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new VMManagerPage()),
                      );
                    },
                  ),
                  new ListTile(
                    title: new Text('VM Manager Custom'),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new VMManagerCustomPage()),
                      );
                    },
                  ),
                ],
              ),
              new ListTile(
                leading: new Icon(Icons.settings),
                title: new Text('Settings'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new SettingsPage()),
                  );
                },
              ),
              // new ListTile(
              //   leading: new Icon(Icons.settings),
              //   title: new Text('Tester 2'),
              //   onTap: () {
              //     Navigator.of(context).pop();
              //     Navigator.push(
              //       context,
              //       new MaterialPageRoute(
              //           builder: (BuildContext context) => new Testing2Page()),
              //     );
              //   },
              // ),
              // new ListTile(
              //   leading: new Icon(Icons.settings),
              //   title: new Text('Tester 3'),
              //   onTap: () {
              //     Navigator.of(context).pop();
              //     Navigator.push(
              //       context,
              //       new MaterialPageRoute(
              //           builder: (BuildContext context) => new Example01()),
              //     );
              //   },
              // ),
            ],
          ),
        ),
        body: vmManagerCustom(orientation));
  }
}
