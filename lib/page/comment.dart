import 'package:flutter/material.dart';

import '../theme/icon/icons.dart';
import '../theme/strings/app_string.dart';
class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
            Text(AppStrings.back, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
