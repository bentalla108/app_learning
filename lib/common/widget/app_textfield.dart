import 'package:app_learning/common/widget/app_shadow.dart';
import 'package:app_learning/common/widget/image_widget.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appTextField(
    {String text = '',
    String hintText = '',
    String iconName = "",
    bool obsText = false}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14normal(text: text),
        SizedBox(
          height: 5.w,
        ),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(
                  imageUrl: iconName,
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 270.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  onChanged: (value) {},
                  maxLines: 1,
                  obscureText: obsText,
                  autocorrect: false,
                ),
              )
            ],
          ),
        ),
        /*  TextField(
          decoration: InputDecoration(hintText: hintText),
        ) */
      ],
    ),
  );
}
