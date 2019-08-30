import 'package:flutter/material.dart';

import 'main.dart';
import 'overview.dart';
import 'vm_manager.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

Container sideBar() {
    return Container(
      constraints: new BoxConstraints.expand(
        width: 240.0,
        // width: MediaQuery.of(context).size.width / 3,
      ),
      color: Colors.white,
      alignment: Alignment.center,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("TIENDHIKA LESMANA"),
            accountEmail: Text("tiendhika.lesmana@ui.ac.id"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                  backgroundColor: Colors.white, child: Icon(Icons.person)),
            ),
          ),
          // new Image.asset(
          //   "images/Lintasarta.png",
          //   height: 75.0,
          // ),
          // new Padding(
          //   padding: new EdgeInsets.all(10.0),
          // ),
          // new Container(
          //   height: 0.80,
          //   color: Colors.grey,
          // ),
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
                        builder: (BuildContext context) => new OverviewPage()),
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
                        builder: (BuildContext context) => new VMManagerPage()),
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
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(45.0),
      child: new AppBar(
        backgroundColor: Colors.blue,
        title:
            new Text("Settings"),
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
      drawer: sideBar(),
    );
  }
}
