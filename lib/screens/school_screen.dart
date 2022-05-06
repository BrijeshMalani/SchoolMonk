import 'package:flutter/material.dart';
import 'package:school_monk/model/res/all_school_res_model.dart';
import 'package:school_monk/repo/all_school_repo.dart';
import 'package:school_monk/screens/search_school.dart';
import 'package:school_monk/screens/show_school.dart';

class SchoolScreen extends StatefulWidget {
  const SchoolScreen({Key? key}) : super(key: key);

  @override
  _SchoolScreenState createState() => _SchoolScreenState();
}

class _SchoolScreenState extends State<SchoolScreen> {

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
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "School",
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
        children: [
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              showSearch(context: context, delegate: SearchSchool());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: screenSize.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120),
                      child: Text(
                        'Search School',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: screenSize.height * 0.07,
                      height: screenSize.height * 0.07,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Icon(
                        Icons.pin_drop,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          FutureBuilder(
            future: AllSchoolRepo.allSchoolRepo(),
            builder: (context, AsyncSnapshot<AllSchoolsModel> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final info = snapshot.data!.response![index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowSchool(
                                  schoolName: "${info.schoolName}",
                                  address: "${info.city}"),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 11),
                          height: screenSize.height * 0.13,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Row(
                            children: [
                              Container(
                                height: screenSize.height * 0.13,
                                width: screenSize.height * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/school.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '${info.schoolName}',
                                    style: TextStyle(
                                      fontFamily: 'Helvetica Neue',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    '${info.landmark}',
                                    style: TextStyle(
                                      fontFamily: 'Helvetica Neue',
                                      fontSize: 14,
                                      color: const Color(0xff8e8e8e),
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: snapshot.data!.response!.length,
                  ),
                );
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Color(0xffF0C742),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}

