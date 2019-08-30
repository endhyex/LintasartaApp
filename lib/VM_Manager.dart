import 'package:flutter/material.dart';

import 'package:lintasartaapp/Main.dart';
import 'package:lintasartaapp/Overview.dart';
import 'package:lintasartaapp/Settings.dart';

class VMManagerPage extends StatefulWidget {
  @override
  _VMManagerPageState createState() => _VMManagerPageState();
}

class _VMManagerPageState extends State<VMManagerPage> {
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

  var vm = [
    "VM 1",
    "VM 2",
    "VM 3",
    "VM 4",
    "VM 5",
    "VM 6",
  ];

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

  Container vmManagerPhone(Orientation orientation) {
    final double fontSize = 18;
    bool _value = false;

    void onChangedValue(bool value) {
      setState(() {
        _value = value;
      });
    }

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: vm.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 1 : 2,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 0.8)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 0.64)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6,
              child: Container(
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
                                vm[index],
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
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Processor Speed"),
                                                Text(
                                                  "2GHz",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Network"),
                                                Text(
                                                  "1 Network Card",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Memory Size"),
                                                Text(
                                                  "8 GB",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("VMWare Tools"),
                                                Text(
                                                  "Latest Version",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Storage Capacity"),
                                                Text(
                                                  "1200 GB",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Last Snapshot"),
                                                Text(
                                                  "Two Days Ago",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, right: 0),
                        child: SwitchListTile(
                          value: _value,
                          onChanged: onChangedValue,
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.red[100],
                          inactiveThumbColor: Colors.red,
                          secondary: RaisedButton(
                            elevation: 2,
                            color: Colors.blue,
                            child: Text("Mount",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                            splashColor: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container vmManagerTablet(Orientation orientation) {
    final double fontSize = 18;
    bool _value = false;

    void onChangedValue(bool value) {
      setState(() {
        _value = value;
      });
    }

    return Container(
      padding: EdgeInsets.all(0.0),
      child: GridView.builder(
          itemCount: vm.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.height /
                      (MediaQuery.of(context).size.width / 0.6)
                  : MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 0.64)),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6,
              child: Container(
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
                                vm[index],
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
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Processor Speed"),
                                                Text(
                                                  "2GHz",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Network"),
                                                Text(
                                                  "1 Network Card",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Memory Size"),
                                                Text(
                                                  "8 GB",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("VMWare Tools"),
                                                Text(
                                                  "Latest Version",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Storage Capacity"),
                                                Text(
                                                  "1200 GB",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Container(
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Last Snapshot"),
                                                Text(
                                                  "Two Days Ago",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700),
                                                )
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0, right: 0),
                        child: SwitchListTile(
                          value: _value,
                          onChanged: onChangedValue,
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.red[100],
                          inactiveThumbColor: Colors.red,
                          secondary: RaisedButton(
                            elevation: 2,
                            color: Colors.blue,
                            child: Text("Mount",
                                style: TextStyle(color: Colors.white)),
                            onPressed: () {},
                            splashColor: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
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
          backgroundColor: Colors.blue,
          title: new Text("VM Manager"),
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
      body: Padding(
          padding: EdgeInsets.all(10),
          child: usingLayout
              ? vmManagerPhone(orientation)
              : vmManagerTablet(orientation)),
    );
  }
}
