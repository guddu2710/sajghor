import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'package:simple_slider/simple_slider.dart';

import '../appdata.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final _imageUrls = [
    "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxuWGdSO-nuLZofJ3lJBVF5egdp2BME2EY7H6_a4TZJ1fk2vdG-dbGBpL5_C8LPIFMf14NnnuKOZtAJ85ndgu2-Z_a79utdQCiFrpodwrgqtmgEQaZDMTW&usqp=CAE",
    "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxuWGdSO-nuLZofJ3lJBVF5egdp2BME2EY7H6_a4TZJ1fk2vdG-dbGBpL5_C8LPIFMf14NnnuKOZtAJ85ndgu2-Z_a79utdQCiFrpodwrgqtmgEQaZDMTW&usqp=CAE",
    "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxuWGdSO-nuLZofJ3lJBVF5egdp2BME2EY7H6_a4TZJ1fk2vdG-dbGBpL5_C8LPIFMf14NnnuKOZtAJ85ndgu2-Z_a79utdQCiFrpodwrgqtmgEQaZDMTW&usqp=CAE",
    "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRxuWGdSO-nuLZofJ3lJBVF5egdp2BME2EY7H6_a4TZJ1fk2vdG-dbGBpL5_C8LPIFMf14NnnuKOZtAJ85ndgu2-Z_a79utdQCiFrpodwrgqtmgEQaZDMTW&usqp=CAE"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        bottomNavigationBar:_buildBottomNavigationBar(),
        body:
        Stack(
          children: <Widget>[
            
            Card(
              semanticContainer:true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ImageSliderWidget(
                        imageUrls: _imageUrls,
                        imageBorderRadius: BorderRadius.circular(20.0),

                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5,right: 5,left: 5),
                        width: MediaQuery.of(context).size.width,
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(20.0),
                                bottomRight: const Radius.circular(20.0))),
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0,right: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Wrap(
                                children: <Widget>[

                                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",style: TextStyle(color: Colors.black,fontSize: 15.0),),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Category:Furniture",style: TextStyle(color: Colors.black),),
                                          Text("\u20B9500",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 20.0),),
                                        ],
                                      ),

                                    ],
                                  )

                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Card(
                color: Colors.transparent,
              semanticContainer:true,
              elevation: 0.0,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();

                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back,color: Colors.pink,),
                ),
              ),
              margin: EdgeInsets.all(10),
            ),
          Padding(
          padding: const EdgeInsets.only(left:8.0,right: 20.0,top: 8.0,bottom: 8.0),
      child: IconButton(
        onPressed: () async {

          var request = await HttpClient().getUrl(Uri.parse(_imageUrls[AppData.share]));
          var response = await request.close();
          Uint8List bytes = await consolidateHttpClientResponseBytes(response);
          await Share.file('ESYS AMLOG', 'amlog.jpg', bytes, 'image/jpg');
        },
        icon: Icon(Icons.share,color: Colors.pink,),
        ),
    ),
              ],
            )
          ],
        ),
      ),
    );
  }
  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.card_travel,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "ADD TO BAG",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _shareImageFromUrl() async {
    try {
      var request = await HttpClient().getUrl(Uri.parse(
          'https://shop.esys.eu/media/image/6f/8f/af/amlog_transport-berwachung.jpg'));
      var response = await request.close();
      Uint8List bytes = await consolidateHttpClientResponseBytes(response);
      await Share.file('ESYS AMLOG', 'amlog.jpg', bytes, 'image/jpg');
    } catch (e) {
      print('error: $e');
    }
  }
}
