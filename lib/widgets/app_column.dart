import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icons_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.getDimsHeight(26),),
        SizedBox(height: Dimensions.getDimsHeight(10)),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const SmallText(text: "4.5"),
            const SizedBox(width: 10),
            const SmallText(text: "20"),
            const SizedBox(width: 5),
            const SmallText(text: "отзывов"),
          ],
        ),
        SizedBox(height: Dimensions.getDimsHeight(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconsAndTextWidget(
              icon: Icons.circle_sharp,
              text: "???",
              iconColor: AppColors.iconColor1,
            ),
            IconsAndTextWidget(
              icon: Icons.location_on,
              text: "1.7 км",
              iconColor: AppColors.mainColor,
            ),
            IconsAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32 мин",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
