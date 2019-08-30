import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:lintasartaapp/Main.dart';
import 'package:lintasartaapp/Overview.dart';
import 'package:lintasartaapp/Settings.dart';
import 'package:lintasartaapp/VM_Manager.dart';

class Testing2Page extends StatefulWidget {
  @override
  _Testing2PageState createState() => _Testing2PageState();
}

class _Testing2PageState extends State<Testing2Page> {
  var value = [
    "20 of 30 GHz",
    "128 of 378 GB",
    "0.5 of 1.5 TB",
    "1 of 3 Tickets",
  ];

  var content = [
    "TOTAL VCPU",
    "TOTAL MEMORY",
    "TOTAL STORAGE",
    "TOTAL TICKETS",
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: new AppBar(
          title: new Text('Tester'),
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
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: new Text("TIENDHIKA LESMANA",
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            accountEmail: new Text("tiendhika.lesmana@ui.ac.id"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://previews.123rf.com/images/gmast3r/gmast3r1411/gmast3r141100280/33645487-profile-icon-male-avatar-portrait-casual-person.jpg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
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
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.blur_on),
            title: Text("Tester"),
          ),
        ],
      )),
      // drawer: new Container(
      //   constraints: new BoxConstraints.expand(
      //     width: 240.0,
      //     // width: MediaQuery.of(context).size.width / 3,
      //   ),
      //   color: Colors.white,
      //   alignment: Alignment.center,
      //   child: ListView(
      //     children: <Widget>[
      //       new Image.asset(
      //         "images/Lintasarta.png",
      //         height: 75.0,
      //       ),
      //       new Padding(
      //         padding: new EdgeInsets.all(10.0),
      //       ),
      //       new Container(
      //         height: 0.80,
      //         color: Colors.grey,
      //       ),
      //       new ListTile(
      //         leading: new Icon(Icons.home),
      //         title: new Text('Home'),
      //         onTap: () {
      //           Navigator.of(context).pop();
      //           Navigator.push(
      //             context,
      //             new MaterialPageRoute(
      //                 builder: (BuildContext context) => new Home()),
      //           );
      //         },
      //       ),
      //       ExpansionTile(
      //         leading: new Icon(Icons.storage),
      //         title: new Text('Public Cloud'),
      //         children: <Widget>[
      //           new ListTile(
      //             title: new Text('Overview'),
      //             onTap: () {
      //               Navigator.of(context).pop();
      //               Navigator.push(
      //                 context,
      //                 new MaterialPageRoute(
      //                     builder: (BuildContext context) =>
      //                         new OverviewPage()),
      //               );
      //             },
      //           ),
      //           new ListTile(
      //             title: new Text('VM Manager'),
      //             onTap: () {
      //               Navigator.of(context).pop();
      //               Navigator.push(
      //                 context,
      //                 new MaterialPageRoute(
      //                     builder: (BuildContext context) =>
      //                         new VMManagerPage()),
      //               );
      //             },
      //           ),
      //         ],
      //       ),
      //       new ListTile(
      //         leading: new Icon(Icons.settings),
      //         title: new Text('Settings'),
      //         onTap: () {
      //           Navigator.of(context).pop();
      //           Navigator.push(
      //             context,
      //             new MaterialPageRoute(
      //                 builder: (BuildContext context) => new SettingsPage()),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      // body: Stack(
      //   children: <Widget>[
      //     Positioned(
      //       top: 10,
      //       child: GridView.count(
      //         crossAxisCount: 2,
      //         children: <Widget>[
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //           MyMenu("Home", Icons.home, Colors.grey),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      body: 
      Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(30),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
                MyMenu("Short", Icons.home, Colors.grey),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 350,),
            child: GridView.count(
              crossAxisCount: 1,
              children: <Widget>[
                MyMenu("Long", Icons.home, Colors.grey),
                MyMenu("Long", Icons.home, Colors.grey),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu(this.title, this.icon, this.warna);

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.lightBlue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
