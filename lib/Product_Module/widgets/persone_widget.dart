import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PesronWidget extends StatelessWidget {
  const PesronWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            child: Icon(
              Icons.person,
              size: 40,
            ),
          ),
          Text(
            '@_user1',
            style: TextStyle(color: Colors.black45, fontSize: 25),
          )
        ],
      ),
    );
  }
}
