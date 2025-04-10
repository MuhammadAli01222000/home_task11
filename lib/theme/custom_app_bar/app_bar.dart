import 'package:flutter/material.dart';

import '../icon/icons.dart';
import '../strings/app_string.dart';


AppBar buildAppBar(BuildContext context,String name) {
  return AppBar(
    automaticallyImplyLeading: false,
    leading: null,
    title: Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: AppIcons.back,
        ),
        Text(name, style: TextStyle(color: Colors.black)),
      ],
    ),
  );
}