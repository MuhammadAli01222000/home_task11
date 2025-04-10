import 'package:flutter/material.dart';

import '../icon/icons.dart';

class YouCartAndDeleteButton extends StatelessWidget {
  const YouCartAndDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(" You Cart", style: TextStyle(fontSize: 40)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: AppIcons.delete),
        ],
      ),
    );
  }
}
