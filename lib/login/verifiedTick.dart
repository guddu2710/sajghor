import 'package:flutter/material.dart';
import 'package:sajghor/dashboard/dashboard.dart';
import 'package:sajghor/login/password.dart';
import 'package:sajghor/utils/color.dart';
class VerifyTick extends StatefulWidget {
  @override
  _VerifyTickState createState() => _VerifyTickState();
}

class _VerifyTickState extends State<VerifyTick> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(backgroundColor:  MyColors.primary,
        body: Center(child: Image.network("https://media.giphy.com/media/7NUJEtLY4zXcL8GKfr/giphy.gif",height: 300,width: 300,)),
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
                  MaterialPageRoute(builder: (context) => EnterPassword()),
                );
              },
              color:  MyColors.accent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "CONTINUE",
                      style: TextStyle(color:  MyColors.primary,fontSize: 18.0),
                    ),

                    Icon(
                      Icons.chevron_right,
                      color:  MyColors.primary,
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
