import 'package:flutter/material.dart';



class SlideDrawer extends StatefulWidget {
  BuildContext context;

  SlideDrawer(this.context);

  @override
  State<StatefulWidget> createState() {
    return _SlideDrawerState();
  }
}

class _SlideDrawerState extends State<SlideDrawer> {
  String _userAccountId;

  

  Future<bool> _onWillPop(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          new FlatButton(
            onPressed: () {},                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
             // userAccountSharedPreferences.removeUserAccountPreferences();
              //Navigator.of(context).push(
               // MaterialPageRoute(
                 //   builder: (BuildContext context) => AuthPage()));} ,
            //Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    ) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Row(
                children: <Widget>[
                  Icon(Icons.person),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    '',
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
              ),
              accountEmail: Row(
                children: <Widget>[
                  Icon(Icons.email),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('')
                ],
              ),
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: NetworkImage(''),
                ),
              ),
            ),
            
            Divider(
              color: Colors.cyan,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Déconnexion'),
              onTap: () {
                _onWillPop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
