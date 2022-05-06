import 'package:flutter/material.dart';
import 'package:school_monk/screens/search_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Icon(
          Icons.arrow_back,
          size: 28,
          color: Colors.black,
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "Shop By Category",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showSearch(
                context: context,
                delegate: SearchCategory(),
              );
            },
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.grey,
          ),
          SizedBox(
            width: 13,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenSize.height * 0.21,
                  width: screenSize.height * 0.21,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF0C742),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage("assets/images/book2.png"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'BOOKS',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenSize.height * 0.210,
                  width: screenSize.height * 0.210,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF0C742),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage("assets/images/material.png"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Art & Craft Material',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenSize.height * 0.21,
                  width: screenSize.height * 0.21,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF0C742),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage("assets/images/office.png"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Office Stationery',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  height: screenSize.height * 0.210,
                  width: screenSize.height * 0.210,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF0C742),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage("assets/images/stationery.png"),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Stationery',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 14,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
