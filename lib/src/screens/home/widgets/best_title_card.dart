import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:usell_up/src/shared/constants.dart';

class BestTitleCard extends StatelessWidget {
  const BestTitleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                child: Image.asset("assets/images/iphone.png", fit: BoxFit.cover,),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite_border),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Text("3 KM", style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              )
            ],
          ),
         Padding(
           padding: const EdgeInsets.all(kMinSpace),
           child: Column(
             children: [
               Row(
                 children: [
                   Text("00.00", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),),
                   Spacer(),
                   Container(

                     padding: EdgeInsets.all(kMinSpace),
                     decoration: BoxDecoration(
                       color: Colors.orange,
                       borderRadius: BorderRadius.circular(5)
                     ),
                     child: Text("0.0%", style: TextStyle(color: Colors.white),),
                   )
                 ],
               ),
               SizedBox(height: kMinSpace,),
               Row(
                 children: [
                   Text("00.00")
                 ],
               ),
               SizedBox(height: kMinSpace,),
               Row(
                 children: [
                   Expanded(child: Text("Product Service Title Product"))
                 ],
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
