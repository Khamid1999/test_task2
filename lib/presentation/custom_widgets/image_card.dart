import 'package:flutter/material.dart';
import 'package:test_task/presentation/theme/app_styles.dart';

class CardImage extends StatelessWidget {
  final String link;
  final String description;
  final VoidCallback onTap;

  CardImage(
      {required this.link, required this.description, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image:
                  DecorationImage(fit: BoxFit.fill, image: NetworkImage(link))),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                description,
                style: AppStyles.regular.copyWith(fontSize: 14),
                maxLines: 2,
              )),
        ),
      ),
    );
  }
}
