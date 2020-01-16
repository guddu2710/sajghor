import 'package:flutter/material.dart';
import 'package:sajghor/cart/cartPage.dart';
import 'package:sajghor/product_details/productDetails.dart';
import 'package:sajghor/profile/profile.dart';

import '../appdata.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: Text("Dashboard"), backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
//
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle,color: Colors.white,size: 30.0,),
          ),
        )
        ],),
        

        body: Container(
          color: Colors.grey[400],
          child: new ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    AppData.share = 0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetails()),
                    );
                  },
                  child: new Container(
                    height: MediaQuery.of(context).size.height * 0.32,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.network(
                            'https://ii1.pepperfry.com/media/catalog/product/x/x/494x544/xxl-football-leatherette-bean-bag-cover---pouffe-cover-in-orange---white-colour-by-can-xxl-football--iit12z.jpg',
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.32,
                            width: MediaQuery.of(context).size.width,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          margin: EdgeInsets.all(5),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.10,
                          decoration: new BoxDecoration(
                              color: Colors.black54,
                              borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Chair",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Price: \u20B9500",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Category:Furniture",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
//        drawer: Drawer(
//          child: ListView(
//            children: <Widget>[
//              Container(
//                color: Colors.pink,
//                height: MediaQuery.of(context).size.height * .25,
//              ),
//              Column(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: InkWell(
//                      onTap: (){
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Icon(Icons.dashboard),
//                          SizedBox(width: 8.0,),
//                          Text("DASHBOARD")
//                        ],
//                      ),
//                    ),
//                  ),
//
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: InkWell(
//                      onTap: (){
//
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Icon(Icons.dashboard),
//                          SizedBox(width: 8.0,),
//
//                          Text("DASHBOARD")
//                        ],
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: InkWell(
//                      onTap: (){
//
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Icon(Icons.dashboard),                          SizedBox(width: 8.0,),
//
//
//                          Text("DASHBOARD")
//                        ],
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: InkWell(
//                      onTap: (){
//
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Icon(Icons.dashboard),
//                          SizedBox(width: 8.0,),
//
//                          Text("DASHBOARD")
//                        ],
//                      ),
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: InkWell(
//                      onTap: (){
//
//                      },
//                      child: Row(
//                        children: <Widget>[
//                          Icon(Icons.dashboard),
//                          SizedBox(width: 8.0,),
//
//                          Text("DASHBOARD")
//                        ],
//                      ),
//                    ),
//                  )
//                ],
//              )
//            ],
//          ),
//        ),
      ),
    );
  }
}
