import 'package:flutter/material.dart';

import '../../model/utils/colors.dart';
import '../../model/utils/styles.dart';

class CustomBottombar extends StatelessWidget {
  final String title,imagepath;
  final bool isActive;
  final void Function()? onTap;
  const CustomBottombar({Key? key, required this.title, required this.imagepath, this.isActive=false, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Column(
          children: [
            Image.asset(imagepath,height: 25,width: 25,),
            Text(title,style: interRegular.copyWith(color: isActive?orangeColor:lightRed),),
          ],
        ),
      ),
    );

  }
}
