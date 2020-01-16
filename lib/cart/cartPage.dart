import 'package:flutter/material.dart';
import 'package:sajghor/dashboard/dashboard.dart';
import 'package:sajghor/product_details/productDetails.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"), backgroundColor: Colors.pinkAccent,
        actions: <Widget>[Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart,size: 35,),
              ),
              Container(
                width: 20.0,
                height: 20.0,
                child: Center(child: Text("2",style: TextStyle(fontSize: 15.0,color: Colors.red),)),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellowAccent),
              ),
            ],
          ),
        )],),


      body: Container(
        color: Colors.grey[400],
        child: new ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Slidable(

                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.20,
                  child: Container(
                    color: Colors.white,
                    child: Column(

                      children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage("https://www.candere.com/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/k/l/kller502-d.jpg"),
                                      ),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                  margin: EdgeInsets.only(left: 16, top: 5, right: 5, bottom: 5),
                                  height: 100,
                                  width: 100,
                                ),
                                Flexible(
                                  child: Container(
                                    height: 110,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.all(10),
                                          child: Text(
                                            "earring",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontFamily: 'Lato',
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            "price",
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF212121),
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                              child: Column(
                                children: <Widget>[
                                  Text("+"),
                                  Text("1"),
                                  Text("-")
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
//                actions: <Widget>[
//                  IconSlideAction(
//                    caption: 'Archive',
//                    color: Colors.blue,
//                    icon: Icons.archive,
//                    onTap: (){
//                      print("hello");
//                    },
//                  ),
//                  IconSlideAction(
//                    caption: 'Share',
//                    color: Colors.indigo,
//                    icon: Icons.share,
//                    onTap: () => (){
//                      print("hello");
//                    },
//                  ),
//                ],
                  secondaryActions: <Widget>[
                    IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      foregroundColor: Colors.white,
                      icon:Icons.delete ,

                      onTap: () {
                        print("hello");
                      },
                    ),
                  ],
                ),
              );
            }),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),

    );
  }
  _buildBottomNavigationBar() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.15,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          Flexible(
          flex: 2,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Text(
              "Sale total",
              style: TextStyle(color: Colors.black,fontSize: 18.0),
            ),

            Text(
              "500",
              style: TextStyle(color: Colors.black,fontSize: 18.0),
            ),
          ],
        ),
        ),
            Flexible(
              flex: 2,
              child: RaisedButton(
                elevation: 0.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                color: Colors.pinkAccent,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text(
                        "SALE",
                        style: TextStyle(color: Colors.white,fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
