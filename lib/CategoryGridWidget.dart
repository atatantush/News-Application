import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryGridWidget extends StatelessWidget {
  Category category;
  int index;
  Function onCategoryClick;

  CategoryGridWidget(this.category, this.index, this.onCategoryClick);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCategoryClick(category);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.background,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(index % 2 == 0 ? 0 : 30),
            bottomLeft: Radius.circular(index % 2 == 0 ? 30 : 0),
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              category.ImagePath,
              height: 150,
            ),
            Text(
              category.title,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  // Data Class

  String CategoryId;
  String title;
  String ImagePath;
  Color background;

  Category(
      {required this.CategoryId,
      required this.title,
      required this.ImagePath,
      required this.background});
}
