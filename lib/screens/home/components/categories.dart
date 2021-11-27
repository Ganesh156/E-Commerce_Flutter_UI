import 'package:flutter/material.dart';
import 'package:demo/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand Bag","Jewellery","Footwear","Dresses","Makeup"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin),
      child: SizedBox(
        height: 25,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:categories.length,
          itemBuilder: (context,index) =>buildCategory(index), 
        ) ,
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:selectedIndex == index ? KTextColor:KTextLightColor,
                  ),
              ),
              Container(
                margin: EdgeInsets.only(top: KDefaultPaddin/4),
                height: 2,
                width: 30,
                color: selectedIndex ==index ? Colors.black:Colors.transparent,
              )
          ],
        ),
      ),
    );
  }
}