import 'package:flutter/material.dart';
import 'package:sajghor/dashboard/dashboard.dart';
class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text(
                              "Enter Password",
                              style: TextStyle(color: Colors.black,fontSize: 50.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.transparent,
                          semanticContainer:false,
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.shopping_cart,size: 50.0,color:Colors.pink,),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50,),
                          ),
                          elevation: 10,
                          borderOnForeground: false,
                          margin: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.only(right:8.0,left:8.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize:18.0),
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.only(right:8.0,left:8.0),
                  child: Card(
                    semanticContainer:true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Container(
                      child:  Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: TextFormField(

                          keyboardType:TextInputType.number,
                          maxLength: 10,
                          decoration: new InputDecoration(
                            counterText: '',
                            labelText: 'Enter your Password*',
                            enabledBorder: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.transparent
                                )
                            ),
                            labelStyle: TextStyle(
                                height:1,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink
                            ),
                            focusedBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            ),
                          ),
                        ),
                      ),),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(5),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.30,)
              ],
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
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
                      "SET PASSWORD",
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
    );
  }
}
