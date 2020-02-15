import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isPrivateAccount = false;
  bool _isSharingData = true;

  Widget build(BuildContext context) => (
    ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 100),
            title: Text("Example Person"),
            subtitle: Text("person@example.com"),
            trailing: Icon(Icons.edit),
            isThreeLine: true,
          )
        ),
        Card(
          child: Column(
            children: <Widget>[
              SwitchListTile(
                title: Text("Private Account"),
                subtitle: Text("Having a private accounts stops people who aren't following you from seeing your posts."),
                value: _isPrivateAccount,
                onChanged: (bool value) {
                  setState() {
                    _isPrivateAccount = value;
                  }
                },
                isThreeLine: true
              ),
              SwitchListTile(
                  title: Text("Share My Data"),
                  subtitle: Text("Sharing your data allows us to build a better experience for you when using the app."),
                  value: _isSharingData,
                  onChanged: (bool value) {
                    setState() {
                      _isSharingData = value;
                    }
                  },
                  isThreeLine: true
              )
            ]
          )
        ),
        Card(
          child: AboutListTile(
            applicationIcon: FlutterLogo(),
            applicationName: "Flutter Experiment",
            applicationVersion: "0.0.1",
            applicationLegalese: "© LamboCreeper 2020"
          )
        )
      ]
    )
  );
}