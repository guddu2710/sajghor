import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text("Settings",style: TextStyle(color: Colors.pink),),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
            onTap: () {
      },
        leading: CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(MdiIcons.account),
        ),
        title: Text(
          "name",
          style:TextStyle(color: Colors.red),
        ),
              subtitle: Text("Edit personal details"),
              trailing: Icon(Icons.keyboard_arrow_right),
      ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom:8.0,left: 20.0),
              child: Text("Profile"),
            ),
            ListTile(
              onTap: () {
              },
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.lock),
              ),
              title: Text(
                "name",
                style:TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
              },
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.lock),
              ),
              title: Text(
                "name",
                style:TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0,bottom:8.0,left: 20.0),
              child: Text("Regional"),
            ),
            ListTile(
              onTap: () {
              },
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.power_settings_new),
              ),
              title: Text(
                "name",
                style:TextStyle(color: Colors.red),
              ),
              trailing: Icon(Icons.chevron_right),
            ),

          ],
        ),
      ),
    );
  }
}
