import 'package:flutter/material.dart';
import 'package:home_task11/theme/colors/app_colors.dart';

import '../theme/icon/icons.dart';
import '../theme/strings/app_string.dart';

const userImgList = [
  "assets/user/user1.jpg",
  "assets/user/user2.jpg",
  "assets/user/user3.jpg",
  "assets/user/user4.jpg",
];

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              AppStrings.reviews,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: userImgList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOvalImg(i: index),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.listUser[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                children: [
                                  for (int j = 0; j < 5; j++)
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color:
                                          j < 4
                                              ? AppColors.yellow2
                                              : AppColors.grey,
                                    ),
                                  const SizedBox(width: 8),
                                  Text(
                                    AppStrings.comentDataTime[index],
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                AppStrings.comentName[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                AppStrings.comment[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: AppIcons.back,
          ),
          const Text(AppStrings.back, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}

class ClipOvalImg extends StatelessWidget {
  const ClipOvalImg({super.key, required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        userImgList[i],
        fit: BoxFit.cover,
        width: 40,
        height: 40,
      ),
    );
  }
}
