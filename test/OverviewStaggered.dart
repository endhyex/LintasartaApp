import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:lintasartaapp/Main.dart';
import 'package:lintasartaapp/Overview.dart';
import 'package:lintasartaapp/Settings.dart';
import 'package:lintasartaapp/VM_Manager.dart';

class OverviewStaggeredPage extends StatefulWidget {
  @override
  _OverviewStaggeredPageState createState() => _OverviewStaggeredPageState();
}

class _OverviewStaggeredPageState extends State<OverviewStaggeredPage> {
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

  Container line() {
    return Container(
      height: 0.80,
      color: Colors.black,
    );
  }

  Material mychart1Items(String title, String priceVal) {
    final double fontSize = 12;

    return Material(
      color: Colors.white,
      elevation: 6.0,
      borderRadius: BorderRadius.circular(8.0),
      shadowColor: Color(0x802196F3),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: fontSize,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      priceVal,
                      style: TextStyle(
                        fontSize: fontSize * 1.5,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material mychart2Items(String title, String subtitle) {
    final double fontSize = 18;

    return Material(
      color: Colors.white,
      elevation: 6.0,
      borderRadius: BorderRadius.circular(10.0),
      shadowColor: Color(0x802196F3),
      child: Center(
      child: Padding(
        padding: EdgeInsets.all(14.0),
        child: 
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
                ),
                Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 50, right: 8),
                        child: FlatButton(
                          // color: Colors.blue,
                          child: Text(
                            "SEE ALL..",
                              style: TextStyle(fontSize: 16 ,color: Colors.blue)),
                          onPressed: () {},
                          splashColor: Colors.lightBlue,
                        ),
                      ))
              ],
            ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;

    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: new AppBar(
          title: new Text('Overview'),
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
      drawer:new Container(
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
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person)
                ),
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
                          builder: (BuildContext context) =>
                              new OverviewPage()),
                    );
                  },
                ),
                new ListTile(
                  title: new Text('Overview Staggered'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              new OverviewStaggeredPage()),
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
                // new ListTile(
                //   title: new Text('VM Manager Custom'),
                //   onTap: () {
                //     Navigator.of(context).pop();
                //     Navigator.push(
                //       context,
                //       new MaterialPageRoute(
                //           builder: (BuildContext context) =>
                //               new VMManagerCustomPage()),
                //     );
                //   },
                // ),
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
            //           builder: (BuildContext context) => new DisableButton()),
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
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            child: StaggeredGridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              staggeredTiles: [
                StaggeredTile.extent(1, 100.0),
                StaggeredTile.extent(1, 100.0),
                StaggeredTile.extent(1, 100.0),
                StaggeredTile.extent(1, 100.0),
                StaggeredTile.extent(2, 180.0),
                StaggeredTile.extent(2, 180.0),
                StaggeredTile.extent(2, 180.0),
              ],
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart1Items("TOTAL VCPU", "20 of 30 GHz"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart1Items("TOTAL MEMORY", "128 of 378 GB"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart1Items("TOTAL STORAGE", "0.5 of 1.5 TB"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart1Items("TOTAL TICKETS", "1 of 3 Tickets"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart2Items("CATALOG", "Microsoft Windows"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart2Items("CATALOG", "Ubuntu"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: mychart2Items("CATALOG", "Ubuntu"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
