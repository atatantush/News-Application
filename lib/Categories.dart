// ignore: file_names
import 'package:flutter/material.dart';
import 'package:news_application/CategoryGridWidget.dart';

import 'CategoryGridWidget.dart';

class Categories extends StatelessWidget {
  Function onCategoryClickCallBack; // call back function to HomeScreen
  Categories(this.onCategoryClickCallBack);

  List<Category> CategoriesItems = [
    Category(
        CategoryId: 'Sport',
        title: 'Sport',
        ImagePath: 'assets/images/sports.png',
        background: Color.fromRGBO(201, 28, 34, 1.0)),
    Category(
        CategoryId: 'Politics',
        title: 'Politics',
        ImagePath: 'assets/images/Politics.png',
        background: Color.fromRGBO(0, 62, 144, 1.0)),
    Category(
        CategoryId: 'Health',
        title: 'Health',
        ImagePath: 'assets/images/health.png',
        background: Color.fromRGBO(237, 30, 121, 1.0)),
    Category(
        CategoryId: 'Business',
        title: 'Business',
        ImagePath: 'assets/images/bussines.png',
        background: Color.fromRGBO(207, 126, 72, 1.0)),
    Category(
        CategoryId: 'Environment',
        title: 'Environment',
        ImagePath: 'assets/images/environment.png',
        background: Color.fromRGBO(72, 130, 207, 1.0)),
    Category(
        CategoryId: 'Science',
        title: 'Science',
        ImagePath: 'assets/images/science.png',
        background: Color.fromRGBO(242, 211, 82, 1.0)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Pick your Category\nof Interest:',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return CategoryGridWidget(CategoriesItems[index], index,
                    (category) {
                  onCategoryClickCallBack(category);
                });
              },
              itemCount: CategoriesItems.length,
            ),
          ),
        ],
      ),
    );
  }
}
