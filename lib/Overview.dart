import 'package:flutter/material.dart';

import 'package:lintasartaapp/Main.dart';
import 'package:lintasartaapp/Settings.dart';
import 'package:lintasartaapp/VM_Manager.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  
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

  var content1 = [
    "TOTAL VCPU",
    "TOTAL MEMORY",
    "TOTAL STORAGE",
    "TOTAL TICKETS",
  ];

  var value1 = [
    "20 of 30 GHz",
    "128 of 378 GB",
    "0.5 of 1.5 TB",
    "1 of 3 Tickets",
  ];

  var content2 = [
      "CATALOGS 1",
      "CATALOGS 2",
      "CATALOGS 3",
      "CATALOGS 4",
      "CATALOGS 5",
      "CATALOGS 6",
    ];

  var text2 = [
    "Microsoft Windows",
    "Ubuntu",
    "Microsoft Windows",
    "Ubuntu",
    "Microsoft Windows",
    "Ubuntu",
  ];

  Container overviewPhoneTop(Orientation orientation) {
    final double fontSize = 12;

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: content1.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 1.2)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.0)),
          itemBuilder: (BuildContext context, int index) {
            return
                // Stack(
                // children: <Widget>[
                Card(
              elevation: 6,
              child: Container(
                // alignment: Alignment.center,
                color: Colors.white60,
                // child: Text ('$index'),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        content1[index],
                        style: TextStyle(
                            fontSize: fontSize,
                            // height: fontHeight,
                            fontWeight: FontWeight.w400),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 0, left: 0, right: 0),
                      child: Text(
                        value1[index],
                        style: TextStyle(
                            fontSize: fontSize * 1.5,
                            // height: fontHeight * 2,
                            fontWeight: FontWeight.w600),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container overviewPhoneBottom(Orientation orientation) {
    final double fontSize = 18;

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: content2.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 1.0)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.0)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6,
              child: Container(
                color: Colors.white60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                content2[index],
                                style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              height: 0.50,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(Icons.desktop_windows),
                                    ),
                                    Text(
                                      text2[index],
                                      style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 50, right: 8),
                          // child: RaisedButton(
                          //   color: Colors.blue,
                          //   child: Text("SEE ALL",
                          //       style: TextStyle(color: Colors.white)),
                          //   onPressed: () {},
                          //   splashColor: Colors.lightBlue,
                          // ),
                          child: FlatButton(
                            child: Text(
                              "SEE ALL..",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                            onPressed: () {},
                            splashColor: Colors.blue,
                          ),
                        ))

                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       top: 20, bottom: 0, left: 0, right: 0),
                    //   child: Text(
                    //     value2[index],
                    //     style: TextStyle(
                    //         fontSize: fontSize * 1.5,
                    //         // height: fontHeight * 2,
                    //         fontWeight: FontWeight.w600),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container overviewTabletTop(Orientation orientation) {
    final double fontSize = 12;

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: content1.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 4 : 4,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 1)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1)),
          itemBuilder: (BuildContext context, int index) {
            return
                // Stack(
                // children: <Widget>[
                Card(
              elevation: 6,
              child: Container(
                // alignment: Alignment.center,
                color: Colors.white60,
                // child: Text ('$index'),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        content1[index],
                        style: TextStyle(
                            fontSize: fontSize,
                            // height: fontHeight,
                            fontWeight: FontWeight.w400),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 0, left: 0, right: 0),
                      child: Text(
                        value1[index],
                        style: TextStyle(
                            fontSize: fontSize * 1.5,
                            // height: fontHeight * 2,
                            fontWeight: FontWeight.w600),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container overviewTabletBottom(Orientation orientation) {
    final double fontSize = 18;

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: content2.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 0.6)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 0.6)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6,
              child: Container(
                color: Colors.white60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                content2[index],
                                style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            child: Container(
                              height: 0.50,
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Icon(Icons.desktop_windows),
                                    ),
                                    Text(
                                      text2[index],
                                      style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),

                    Container(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 50, right: 8),
                          // child: RaisedButton(
                          //   color: Colors.blue,
                          //   child: Text("SEE ALL",
                          //       style: TextStyle(color: Colors.white)),
                          //   onPressed: () {},
                          //   splashColor: Colors.lightBlue,
                          // ),
                          child: FlatButton(
                            child: Text(
                              "SEE ALL..",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.blue),
                            ),
                            onPressed: () {},
                            splashColor: Colors.blue,
                          ),
                        ))

                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       top: 20, bottom: 0, left: 0, right: 0),
                    //   child: Text(
                    //     value2[index],
                    //     style: TextStyle(
                    //         fontSize: fontSize * 1.5,
                    //         // height: fontHeight * 2,
                    //         fontWeight: FontWeight.w600),
                    //     textAlign: TextAlign.center,
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool usingLayout = shortestSide < 550.0;
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
      drawer: sideBar(),
      body: Stack(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              child: usingLayout
                  ? overviewPhoneTop(orientation)
                  : Padding(
                      padding: orientation == Orientation.portrait
                      ? EdgeInsets.all(0)
                      : EdgeInsets.only(
                          left: 70.0, right: 70.0),
                          child: overviewTabletTop(orientation),
                    )),
          Container(
            padding: EdgeInsets.all(10),
            child: usingLayout
              ? Padding(
                padding: orientation == Orientation.portrait
                ? EdgeInsets.only(top: 190.0)
                : EdgeInsets.only(top: 105.0),
                child: overviewPhoneBottom(orientation),
              )
              : Padding(
                padding: orientation == Orientation.portrait
                ? EdgeInsets.only(top: 110.0)
                : EdgeInsets.only(top: 140.0),
                child: overviewTabletBottom(orientation),
              ),
          )

              // padding: orientation == Orientation.portrait
              //     ? EdgeInsets.only(
              //         top: 110.0, bottom: 10.0, left: 10.0, right: 10.0)
              //     : EdgeInsets.only(
              //         top: 140.0, bottom: 10.0, left: 10.0, right: 10.0),
              // child: usingLayout
              //     ? overviewPhoneBottom(orientation)
              //     : overviewTabletBottom(orientation)
              //     ),
        ],
      ),

      // body: Container(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         padding: EdgeInsets.all(20),
      //         child: overviewPhoneTop(orientation),
      //       ),
      //       Container(
      //         child: overviewPhoneBottom(orientation),
      //       )
      //     ],
      //   ),
      // ),

      //   )
      // ],
      // )
    );
  }
}
