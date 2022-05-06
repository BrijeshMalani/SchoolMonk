import 'package:flutter/material.dart';

class SearchSchool extends SearchDelegate<String> {
  List schools = [
    "Abc School Name",
    "Ph new school",
    "Xyx School Name",
  ];

  final recentSchools = [
    "Abc School Name",
    "Ph new school",
    "Xyx School Name",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        color: Colors.grey.shade300,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSchools
        : schools.where((s) => s.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
            onTap: () {
              showResults(context);
            },
            leading: Icon(Icons.menu_book_sharp),
            title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ));
      },
      itemCount: suggestionList.length,
    );
  }
}
