import 'package:flutter/material.dart';
import 'package:home_task11/theme/widget/dialog.dart';

import '../icon/icons.dart';

class YouCartAndDeleteButton extends StatelessWidget {
  final  void Function () onTap;
  const YouCartAndDeleteButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(" You Cart", style: TextStyle(fontSize: 40)),
          const Spacer(),
          IconButton(onPressed: () {onTap();}, icon: AppIcons.delete),
        ],
      ),
    );
  }
}
