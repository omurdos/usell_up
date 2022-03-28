import 'package:flutter/material.dart';

class SubCategoryCard extends StatelessWidget {
  const SubCategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/laptop.jpg"),
          ),
          SizedBox(width: 5,),
          Text("Sub category", style: Theme.of(context).textTheme.subtitle1,)
        ],
      ),
    );
  }
}
