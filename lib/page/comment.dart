import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';
import 'package:home_task11/theme/core/routes.dart';
import 'package:home_task11/theme/widget/buttons.dart';

import '../theme/icon/icons.dart';
import '../theme/strings/app_string.dart';

const userImgList = [
  'assets/user/img.png',
  'assets/user/img_1.png',
  'assets/user/img_2.png',
  'assets/user/img_3.png',
];

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        child: Column(
          children: [
            const Text(
              AppStrings.reviews,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),
            Column(
              children: [
                for (var i = 0; i < userImgList.length; i++)
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          userImgList[i],
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text(
                            AppStrings.listUser[i],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),       Row(
                            children: [
                              for (var o in userImgList)
                                Icon(Icons.star, color: AppColors.yellow2),
                              Padding(padding: EdgeInsets.all(12)),
                              Text(AppStrings.comentDataTime[1]),

                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                Text(AppRoutes.comment[index],style: TextStyle(fontWeight: FontWeight.w300),)

              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
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
          Text(AppStrings.back, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
