import 'package:flutter/material.dart';

const String _name = "bf";
const String _name2= "gf";

class ChatMessage extends StatelessWidget {
  final String text;
  final int count;
  ChatMessage({this.text, this.count});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Divider(height: 10.0),
          new Container(
            child: Container(
              padding: EdgeInsets.only(left: 0.0,right: count%2==0?20.0:180.0, bottom: 0.0, top: 0.0 ),
              child: new CircleAvatar(
                backgroundColor: count%2==0?Colors.red:Colors.blue,
                child: new Text(count%2==0?_name[0]:_name2[0]),
              ),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(count%2==0?_name:_name2, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}

