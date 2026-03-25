import 'package:flutter/material.dart';

class HelpBubbleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const HelpBubbleWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF162032)
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8,),
          Text(subTitle)
        ],
      ),
    );
  }
}
