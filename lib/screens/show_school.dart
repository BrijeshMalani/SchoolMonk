import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowSchool extends StatefulWidget {
  String schoolName;
  String address;

  ShowSchool({Key? key, required this.schoolName, required this.address, x})
      : super(key: key);

  @override
  _ShowSchoolState createState() => _ShowSchoolState();
}

class _ShowSchoolState extends State<ShowSchool> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: Icon(
          Icons.menu,
          size: 28,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "${widget.schoolName}",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.grey,
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: screenSize.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 5)
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenSize.height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/images/school1.png"),
                        fit: BoxFit.fitWidth),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '${widget.schoolName}',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${widget.address}',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Bookset',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 18,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  spacing: 12,
                  runSpacing: 10,
                  children: [
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Pre-Primary',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 1',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 2',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 3',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 4',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 5',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 6',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 7',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 8',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 9',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 10',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 11',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: const Color(0xfff0c742),
                      ),
                      child: Center(
                        child: Text(
                          'Class - 12',
                          style: TextStyle(
                            fontFamily: 'Helvetica Neue',
                            fontSize: 15,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
