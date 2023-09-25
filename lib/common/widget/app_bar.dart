import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar({String title = ""}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        height: 1,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
      ),
    ),
    title: text16normal(text: title, color: AppColors.primaryText),
  );
}
