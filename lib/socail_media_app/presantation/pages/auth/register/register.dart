import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_app/config/theme/app_color.dart';
import 'package:social_media_app/config/theme/text_styles.dart';
import 'package:social_media_app/injection_container.dart';
import 'package:social_media_app/socail_media_app/domain/entities/response_entity.dart';
import 'package:social_media_app/socail_media_app/domain/usecases/auth_usecase.dart';
import 'package:social_media_app/socail_media_app/presantation/widgets/my_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 36.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: 24.w,
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          Text(
            "Register",
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
              controller: usernameController,
              hintText: "username",
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
              controller: emailController,
              hintText: "email",
              obscureText: false,
              keyboardType: TextInputType.text,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: const FaIcon(
                  FontAwesomeIcons.solidEnvelope,
                ),
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
              controller: passwordController,
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
                onPressed: () async {
                  ResponseEntity responseEntity =
                      await AuthUseCase(sl()).register(
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  );

                  debugPrint(responseEntity.isSuccess.toString());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.black,
                ),
                child: Text(
                  "Register",
                  style:
                      TextStyles.buttonRegular.copyWith(color: AppColor.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
