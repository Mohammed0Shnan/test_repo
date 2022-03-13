import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/Product_Module/widgets/category_item_widget.dart';
import 'package:test1/Product_Module/widgets/persone_widget.dart';
import 'package:test1/Product_Module/widgets/service_card_widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white70,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'USell\nUp',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    Expanded(
                      child: Container(

                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 23),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.headset_sharp,
                                    color: Colors.black,
                                  ),
                                  Icon(
                                    Icons.format_list_numbered,
                                    color: Colors.black,
                                  ),
                                  Icon(
                                    Icons.backup_table_rounded,
                                    color: Colors.black,
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: double.infinity,
                  color: Colors.black12,
                  child: SingleChildScrollView(
                   scrollDirection:  Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text('HEAD TIL 1',style: TextStyle(fontSize: 20,color: Colors.black54),)),
                          Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text('HEAD TIL 2',style: TextStyle(fontSize: 20,color: Colors.black54),)),
                             Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text('HEAD TIL 3',style: TextStyle(fontSize: 20,color: Colors.black54),)),
                             Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Text('HEAD TIL 4',style: TextStyle(fontSize: 20,color: Colors.black54),)),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          color: Colors.white70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('AED 300/-',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54)),
                              Row(
                                children: [
                                  Text(
                                    'AED 500/-',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    child: Text('50% Off',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 50,
                  width: double.infinity,
                  color: Colors.white70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Best practice Definition & Meaning',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                      Spacer(),
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.3,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text('SHOP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 20)),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MainCategoryItem(
                          text: 'Main\nCategory 1',
                        ),
                        MainCategoryItem(
                          text: 'Main\nCategory 2',
                        ),
                        MainCategoryItem(
                          text: 'Main\nCategory 3',
                        ),
                        MainCategoryItem(
                          text: 'Main\nCategory 4',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  width: double.infinity,
                  color: Colors.black12,
                  child: Text(
                    '#BEST TITLE',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 500,
                  child: GridView.builder(
                      shrinkWrap: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          crossAxisCount: 3,
                          childAspectRatio: 0.3),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return ServiceCard();
                      }),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 20, bottom: 10),
                  width: double.infinity,
                  color: Colors.black12,
                  child: Text(
                    '#TOP TITLE',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 20),
                  height: 150,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        PesronWidget(),
                        PesronWidget(),
                        PesronWidget(),
                        PesronWidget(),
                        PesronWidget()
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 20, bottom: 10,right: 10),
                  width: double.infinity,
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#SHOPE BYCATEGORY',
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text('View All',style: TextStyle(fontSize: 20),)
                      
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child:
                                Icon(Icons.menu, size: 50, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sub Category',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.blueAccent,
                            child: Center(
                              child:
                                  Icon(Icons.menu, size: 50, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sub Category',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 500,
                  child: GridView.builder(
                      shrinkWrap: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                          crossAxisCount: 3,
                          childAspectRatio: 0.3),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return ServiceCard();
                      }),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TERM OF USE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            'CONTACT',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            'CAREER',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          ),
                          Text(
                            'AREA RANGE',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          )
                        ],
                      ),
                    
                      Row(
                        children: [
                               Text(
                            'USell\nUp',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Spacer(),
                                  Text(
                            'PROJECT BY',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          ),
                             Text(
                          'EZENESS TECHNOLOGY',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.menu,size: 35,),
                      Icon(Icons.shop,size: 35,),
                      Icon(Icons.camera,size: 45,),
                      Icon(Icons.compass_calibration,size: 35,),
                      Icon(Icons.star,size: 35,),
                    ],
                  ),
                ),
                SizedBox(height: 100,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}





