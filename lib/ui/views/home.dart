import 'package:flutter/material.dart';
import 'package:pennee/helpers/palette.dart';
import 'package:pennee/helpers/styles.dart';
import 'package:pennee/ui/widgets/button.dart';
import 'package:pennee/ui/widgets/search_textfield.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> titles = <String>['Children of Ruin', 'Life of a star'];

  List<String> subtitles = ['Adrian Tchakovsky', 'Yann something'];

  List<String> images = [
    'assets/images/',
  ];

  List<String> books = [
    'Fiction',
    'Science',
    'Action',
    'Thriller',
    'Adventure'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      'Bookee explore',
                      style: Styles.bookee,
                    ),
                    Spacer(),
                    Icon(
                      Icons.history,
                      color: Palette.lightPurple,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Explore\nbooks',
                  style: Styles.exploreBooks,
                ),
                SizedBox(
                  height: 20,
                ),
                buildSearchWidget(),
                SizedBox(height: 20),
                popularBooks(),
                SizedBox(height: 10),
                booksForYou(),
                SizedBox(height: 20),
                bookslist()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.explore, color: Colors.grey),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.group, color: Colors.grey),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.person, color: Colors.grey),
                  onPressed: () {}),
            ],
          ),
        ));
  }

  Widget buildSearchWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: SearchTextField()),
        SizedBox(
          width: 10,
        ),
        ButtonWidget(
          child: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget booksForYou() {
    return Column(
      children: [
        Row(
          children: [Text('Books for you'), Spacer(), Text('See all')],
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 20,
            ),
            itemCount: books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.3)),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 10),
                    Text(books[index])
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget bookslist() {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 20,
      ),
      itemCount: 2,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(.3)),
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              children: [
                Icon(Icons.ac_unit),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(titles[index]),
                    SizedBox(height: 2),
                    Text(subtitles[index])
                  ],
                )
              ],
            ));
      },
    );
  }

  Widget popularBooks() {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [Text('Popular books'), Spacer(), Text('science')],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                  itemCount: 2,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 120,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(.3)),
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          children: [
                            Icon(Icons.ac_unit),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(titles[index]),
                                SizedBox(height: 2),
                                Text(subtitles[index])
                              ],
                            )
                          ],
                        ));
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
