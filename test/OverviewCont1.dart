import 'package:flutter/material.dart';

class OverviewCont1 extends StatelessWidget {
  var value = [
    "4,250",
    "12,500",
    "230",
    "5",
  ];

  var content = [
    "Next Payout",
    "Total Product",
    "Today's Visitor",
    "Watching Now",
  ];
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(50),
        child: GridView.builder(
            itemCount: content.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: MediaQuery.of(context).size.height /
                    (MediaQuery.of(context).size.width / 2.0)),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      // Icon(Icons.folder, color: Colors.yellow[800], size: 60.0,),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          value[index],
                          style: TextStyle(
                              fontSize: 40,
                              height: 1.0,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          content[index],
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.0,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),      
      
      // margin: const EdgeInsets.only(
      //   top: 16.0,
      //   bottom: 16.0,
      //   left: 24.0,
      //   right: 24.0
      // )
    );
  }
}