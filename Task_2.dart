import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  CircleAvatarWidget({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.blue,
    Colors.cyan,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Muhammad Irkham Faozan"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://static.republika.co.id/uploads/images/xlarge/_230531154810-369.png",
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => CircleAvatar(
                    radius: 40,
                    backgroundColor: colors[index],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
