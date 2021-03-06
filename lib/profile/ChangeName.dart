import 'package:flutter/material.dart';
import 'package:sajghor/dashboard/dashboard.dart';
class ChangeName extends StatefulWidget {
  @override
  _ChangeNameState createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _controllerOldpass = new TextEditingController();
  TextEditingController _controllernewPassword = new TextEditingController();
  TextEditingController _controllernewCPassword = new TextEditingController();
  bool _autoValidate = false;
  var password="1234";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar:

      AppBar(title: Text("Edit Profile"),
        backgroundColor: Colors.pink,),
        body: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child:CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.pink,
                          child: Icon(Icons.person,color: Colors.white,size: 60.0,)) ,
                    ),
                    SizedBox(height: 60.0,),
                    Padding(
                      padding: const EdgeInsets.only(right:10.0,left:10.0),
                      child: Card(
                        semanticContainer:true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          child:  Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: TextFormField(
                              autovalidate: _autoValidate,
                              obscureText: true,
                              textInputAction: TextInputAction.next,
                              validator: (confirmpass) {
                                if (confirmpass.length <= 0) {
                                  return "Enter first Name";
                                }
                              },
                              keyboardType: TextInputType.text,
//                                  decoration: InputDecoration.collapsed(
//                                    hintText: "Write a comment",
                              controller: _controllerOldpass,
                              decoration: new InputDecoration(
                                labelText: 'First Name',
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
                    Padding(
                      padding: const EdgeInsets.only(right:10.0,left:10.0),
                      child: Card(
                        semanticContainer:true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          child:  Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: TextFormField(
                              autovalidate: _autoValidate,
                              keyboardType: TextInputType.text,
                              controller: _controllernewPassword,
                              obscureText: true,
                              textInputAction: TextInputAction.done,
                              validator: (confirmpass) {
                                if (confirmpass.length == 0) {
                                  return "Please Enter new Password";
                                }
                              },
                              decoration: new InputDecoration(
                                counterText: '',
                                labelText: 'Middle Name',
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
                    Padding(
                      padding: const EdgeInsets.only(right:10.0,left:10.0),
                      child: Card(
                        semanticContainer:true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          child:  Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: TextFormField(
                              autovalidate: _autoValidate,
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              style: TextStyle(color: Colors.black),
                              controller: _controllernewCPassword,
                              validator: (confirmpass) {
                                if (confirmpass.length == 0) {
                                  return "Please Enter Last name";
                                }
                              },
                              decoration: new InputDecoration(
                                labelText: 'Last Name',
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
                    SizedBox(height: 30.0,),
                    Padding(
                      padding: const EdgeInsets.only(right:10.0,left:10.0),
                      child: Card(
                        elevation: 5.0,
                        color: Colors.pinkAccent,
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
                                  "UPDATE PROFILE",
                                  style: TextStyle(color: Colors.white,fontSize: 18.0),
                                ),
                             ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
