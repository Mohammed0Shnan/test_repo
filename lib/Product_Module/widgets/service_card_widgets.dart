import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 30,
                  )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 40,
                    color: Colors.white70,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            Icon(Icons.star, color: Colors.orange),
                            Icon(Icons.star, color: Colors.orange),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black38,
                          ),
                          child: Text('3 Km',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '00.00/-',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.orange,
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text('00%',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              )
            ],
          ),
          Text(
            '00.00/-',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            'Product Service',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            'Title Product',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}