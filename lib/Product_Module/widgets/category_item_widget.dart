import 'package:flutter/material.dart';

class MainCategoryItem extends StatelessWidget {
  final String text;
  const MainCategoryItem({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.black87,
            child: Center(
              child: Icon(Icons.menu, size: 50, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}