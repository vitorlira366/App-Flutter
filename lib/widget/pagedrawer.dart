import 'package:app_pageview/pages/page1.dart';
import 'package:app_pageview/pages/page2.dart';
import 'package:flutter/material.dart';

class PageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      width: 300.0,
      color: Colors.red,
      child: Column(
        children: <Widget>[
          Text(
            'Menu',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: RaisedButton(
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'images/page.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Page 1',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1()));
              },
            ),
          ),
          Container(
            width: 180,
            height: 60 ,
            child: RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2()));
              },
              icon: Icon(
                Icons.accessible,
                size: 35,
              ),
              label: Text(
                'Page 2',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
