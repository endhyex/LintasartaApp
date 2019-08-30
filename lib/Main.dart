import 'package:flutter/material.dart';

import 'overview.dart';
import 'settings.dart';
import 'vm_manager.dart';

void main() {
  runApp(new MaterialApp(
    title: "Lintasarta App",
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: new AppBar(
            backgroundColor: Colors.blue,
            title:
                // new Center(
                //   child:
                new Text("Lintasarta"),
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
        drawer: sideBar());
  }
}
