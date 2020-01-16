import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'ChangeName.dart';
import 'changepassword.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.pink,
          elevation: 0.0,
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(MdiIcons.account,color: Colors.black,),
              ),
              title: Text(
                "Suchandra Mondal",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)
              ),
              subtitle: Text("Edit personal details"),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20.0),
              child: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangeName()),
                );
              },
              leading: CircleAvatar(
                backgroundColor: Color(0xfff59205),
                child: Icon(Icons.lock,color:Colors.white ,),
              ),
              title: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePassword()),
                );
              },
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.vpn_key,color: Colors.white,),
              ),
              title: Text(
                "Change Password",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20.0),
              child: Text("Regional",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.power_settings_new),
              ),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
