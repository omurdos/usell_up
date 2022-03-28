import 'package:flutter/material.dart';
import 'package:usell_up/src/shared/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(kDefaultSpace),
      width: 100,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black87,
              ),
              child: const Icon(Icons.layers, color: Colors.white,size: 40,),
            ),
          ),
          SizedBox(
            height: kMinSpace,
          ),
          Padding(
            padding: const EdgeInsets.all(kMinSpace),
            child: Row(
              children: [
                Expanded(
                  child: Text("Main Category", style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center,),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}
