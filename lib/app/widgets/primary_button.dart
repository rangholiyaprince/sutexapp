import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutexapp/app/data/theme/colors.dart';

// import 'package:mybarel/core/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final bool? enabled;
  final bool? hasPadding;
  final double? height;
  const PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color = AppColors.primary,
    this.enabled = true,
    this.hasPadding = true,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      padding: hasPadding! ? EdgeInsets.symmetric(horizontal: 16.sp) : null,
      child: ElevatedButton(
        onPressed: (enabled == true) ? onPressed : () {},
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: (enabled == true) ? color : color?.withOpacity(0.6),
            shadowColor: (enabled == true) ? null : AppColors.transparent,
            padding: EdgeInsets.symmetric(
              vertical: 16.sp,
            )),
        child: child,
      ),
    );
  }
}

class CustomButton extends Container {
  final Function function;
  final String text;
 
  @override
  final Color color;
  final Color textColor;
  final Color splashColor;
  final double fontSize;

  CustomButton({super.key, 
    required this.function,
    required this.text,
    this.splashColor = Colors.blueGrey,
    this.fontSize = 16,
    this.color = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: splashColor,
      onPressed: () => function(),
      color: color,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}


      //  LinearGradient(
      //     colors: [
      //       AppColors.strongStrengthPassword,
      //       AppColors.mediumStrengthPassword,
      //       AppColors.weakStrengthPassword,
      //     ],
      //   );
     
        
        // LinearGradient(
        //   colors: [
        //     AppColors.strongStrengthPassword,
        //     AppColors.mediumStrengthPassword,
        //     AppColors.mediumStrengthPasswordLinearPassword,
        //   ],
        // );
      
        // return const LinearGradient(
        //   colors: [
        //     AppColors.strongStrengthPassword,
        //     AppColors.mediumStrengthPasswordLinearPassword,
        //     AppColors.mediumStrengthPasswordLinearPassword,
        //   ],
        // );
