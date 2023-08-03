import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalPic extends StatelessWidget {
  const PersonalPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 939.w, maxHeight: 1350.h),
      child: Image.asset("assets/images/user.png"),
    );
  }
}
