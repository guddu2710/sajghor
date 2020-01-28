import 'package:flutter/material.dart';
import 'package:sajghor/product_details/productDetails.dart';
import 'package:sajghor/profile/profile.dart';
import 'package:sajghor/utils/color.dart';

import '../appdata.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _imageUrls = [
    "http://www.pngall.com/wp-content/uploads/2016/05/Jewellery-PNG-Clipart.png",
    "http://pluspng.com/img-png/jewellery-png-png-file-name-jewellery-1025.png",
    "https://i.dlpng.com/static/png/6934524_preview.png",
    "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxuWGdSO-nuLZofJ3lJBVF5egdp2BME2EY7H6_a4TZJ1fk2vdG-dbGBpL5_C8LPIFMf14NnnuKOZtAJ85ndgu2-Z_a79utdQCiFrpodwrgqtmgEQaZDMTW&usqp=CAE"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 8.0,
            title: Text("Dashboard"), backgroundColor:  MyColors.primary,
        actions: <Widget>[
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.account_circle,color:  MyColors.accent,size: 40.0,),
          ),
        )
        ],),
        body: Container(
          color: MyColors.accent,
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
                          child: Image.network(_imageUrls[index]
                            ,
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
                              color: Colors.black26,
                              borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(10.0),
                                  bottomRight: const Radius.circular(10.0))),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Chair",
                                          style: TextStyle(
                                              color:MyColors.primary,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.0,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Price: \u20B9500",
                                          style: TextStyle(color: MyColors.black,fontWeight: FontWeight.w900),
                                        ),

                                      ],
                                    ),
                                    Text(
                                      "সাজঘর: \u20B9300",
                                      style: TextStyle(color: MyColors.black),
                                    ),
                                  ],
                                ),
                                Center(child:
                                Text(
                                  "MRP: \u20B9500",
                                  style: TextStyle(color: MyColors.primary,fontSize: 20.0,fontWeight: FontWeight.w700),
                                ))
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
