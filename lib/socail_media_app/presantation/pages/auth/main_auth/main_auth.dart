import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_app/config/theme/app_color.dart';
import 'package:social_media_app/config/theme/text_styles.dart';
import 'package:social_media_app/socail_media_app/presantation/widgets/my_text_field.dart';

class MainAuthPage extends StatelessWidget {
  const MainAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyles.title,
          ),
          SizedBox(
            height: 70.h,
          ),
          Material(
            type: MaterialType.card,
            elevation: 15.0,
            shadowColor: AppColor.black,
            borderRadius: BorderRadius.circular(15.sp),
            child: MyTextField(
              controller: TextEditingController(),
              hintText: "username or email",
              obscureText: false,
              keyboardType: TextInputType.text,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: const FaIcon(FontAwesomeIcons.solidUser),
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Material(
            type: MaterialType.card,
            elevation: 15.0,
            shadowColor: AppColor.black,
            borderRadius: BorderRadius.circular(15.sp),
            child: MyTextField(
              controller: TextEditingController(),
              hintText: "password",
              obscureText: true,
              keyboardType: TextInputType.text,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: const FaIcon(FontAwesomeIcons.lock),
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          //LOGİN BUTTON
          Center(
            child: SizedBox(
              width: 210.w,
              height: 48.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.black,
                ),
                child: Text(
                  "Login",
                  style:
                      TextStyles.buttonRegular.copyWith(color: AppColor.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hesabın yok mu?',
                    style: TextStyles.bodySmall
                        .copyWith(color: AppColor.lightGray),
                  ),
                  TextSpan(
                    text: ' Kayıt Ol',
                    style: TextStyles.bodySmall.copyWith(color: AppColor.black),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Long Pressed.
                        context.push("/register");
                      },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
