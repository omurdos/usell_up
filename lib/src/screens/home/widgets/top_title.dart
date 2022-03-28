import 'package:flutter/material.dart';
import 'package:usell_up/src/shared/constants.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kMinSpace),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/avatar.png"),
          ),
          SizedBox(height: kDefaultSpace,),
          Text("@UserName")
        ],
      ),
    );
  }
}
