import 'package:flutter/material.dart';
import 'package:news_application/Categories.dart';
import 'package:news_application/CategoryDetailsScreen.dart';
import 'package:news_application/CategoryGridWidget.dart';

import 'CategoryGridWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.white,
        child: Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'News App',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline2,
          ),
          elevation: 0,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Text(
                  'News App !',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    Selected_Category = null;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.list,
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Categories',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Selected_Category == null
            ? Categories(onCategoryClickCallBack)
            : CategoryDetailsScreen(Selected_Category!),
      ),
    ]);
  }

  Category? Selected_Category = null;

  void onCategoryClickCallBack(Category category) {
    print(category.title);
    setState(() {
      Selected_Category = category;
    });
  }
}
