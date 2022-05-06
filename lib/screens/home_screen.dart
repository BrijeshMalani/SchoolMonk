import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_monk/model/res/MainCategoryResModel.dart';
import 'package:school_monk/repo/category_repo.dart';
import 'package:school_monk/screens/profile_screen.dart';
import 'package:school_monk/screens/signIn_screen.dart';
import 'package:school_monk/sharedpreference_services/shared_prefs_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _drawerKey = GlobalKey<ScaffoldState>();
  int pageSelected = 0;
  PageController _pageController = PageController(initialPage: 0);

  List<String> categoryImages = [
    "assets/svg/pen.svg",
    "assets/svg/book.svg",
    "assets/svg/shopping-bag.svg",
    "assets/svg/paper.svg",
    "assets/svg/pen.svg",
  ];
  List<String> categoryTitle = [
    "Pen",
    "Books",
    "Bags",
    "Papers",
    "Pen",
  ];

  List<Map<String, dynamic>> dealsOfTheDay = [
    {
      "image": "assets/images/dod-1.png",
      "logo": "assets/images/doms.png",
      "title": "Min. 40% OFF on DOMS\nProducts",
    },
    {
      "image": "assets/images/dod-2.png",
      "logo": "assets/images/classmate.png",
      "title": "Min. 40% OFF on Class-mate\nProducts",
    },
    {
      "image": "assets/images/dod-1.png",
      "logo": "assets/images/doms.png",
      "title": "Min. 40% OFF on DOMS\nProducts",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () {
            _drawerKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            size: 28,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "SkoolMonk",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: screenSize.height * 0.10,
              decoration: BoxDecoration(
                color: const Color(0xfff0c742),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      Text(
                        "Hi, Guest",
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
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/bag.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Orders',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/heart.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Wishlist',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 133,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/category.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Shop By Category',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/graduation-hat.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Shop By School',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/password.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Change Password',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/feedback.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Submit Feedback',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/share.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/terms-and-conditions.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Terms and  Conditions',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/privacy-policy.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 95,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    SharedPrefManager.logOut().then(
                      (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        "assets/svg/logout.svg",
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 16,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        width: 145,
                      ),
                      Icon(
                        Icons.double_arrow,
                        size: 18,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  thickness: 0.3,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // FutureBuilder(
            //   future: CategoryRepo.categoryRepo(),
            //   builder: (context, AsyncSnapshot<MainCategoryResModel> snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       return SizedBox(
            //         height: 210,
            //         child: GridView.builder(
            //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //               childAspectRatio: 1.72,
            //               crossAxisCount: snapshot.data!.response!.length),
            //           itemCount: snapshot.data!.response!.length,
            //           itemBuilder: (context, index) {
            //             return Column(
            //               children: [
            //                 CircleAvatar(
            //                   radius: 38,
            //                   backgroundColor: const Color(0xffF0C742),
            //                   child: Center(
            //                     child: SvgPicture.asset(
            //                       categoryImages[index],
            //                       height: 38,
            //                       width: 38,
            //                     ),
            //                   ),
            //                 ),
            //                 SizedBox(
            //                   height: 8,
            //                 ),
            //                 Text(
            //                   "${snapshot.data!.response![index].categoryName}",
            //                   style: TextStyle(
            //                     fontFamily: 'Helvetica Neue',
            //                     fontSize: 14,
            //                     color: const Color(0xff000000),
            //                     fontWeight: FontWeight.w500,
            //                   ),
            //                   textAlign: TextAlign.left,
            //                 )
            //               ],
            //             );
            //           },
            //         ),
            //       );
            //     } else {
            //       return Center(
            //           child: CircularProgressIndicator(
            //         color: Color(0xffF0C742),
            //       ));
            //     }
            //   },
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: List.generate(
                        categoryImages.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundColor: const Color(0xffF0C742),
                                child: Center(
                                  child: SvgPicture.asset(
                                    categoryImages[index],
                                    height: 38,
                                    width: 38,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                categoryTitle[index],
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("View All"),
                        Icon(
                          Icons.double_arrow,
                          size: 17,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: screenSize.height * 0.30,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          pageSelected = value;
                        });
                      },
                      children: [
                        Container(
                          height: screenSize.height * 0.30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/covid1.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: screenSize.height * 0.30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/covid2.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: screenSize.height * 0.30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/covid3.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          height: screenSize.height * 0.30,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/covid.png"),
                                fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 1.5),
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageSelected == index ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Shop by Class',
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
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Deals of the Day',
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
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: EdgeInsets.only(left: 20),
                    height: screenSize.height * 0.19,
                    width: screenSize.height * 0.19,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Color(0xffF0C742),
                    )),
                    child: Column(
                      children: [
                        Container(
                          height: screenSize.height * 0.099,
                          width: screenSize.height * 0.19,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  dealsOfTheDay[index]['image'],
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                height: index == 1 ? 10 : 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                      dealsOfTheDay[index]['logo'],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: index == 1 ? 6 : 0,
                              ),
                              Text(
                                dealsOfTheDay[index]['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 10,
                                  color: const Color(0xff000000),
                                  height: 1.0714285714285714,
                                ),
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}
