import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double foodImageSize = 350;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.getDimsHeight(foodImageSize),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/food0.png"),
                ),
              ),
            ),
          ),

          //toolbar icons widget
          Positioned(
            top: Dimensions.getDimsHeight(45),
            left: Dimensions.getDimsHeight(20),
            right: Dimensions.getDimsHeight(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),

          //main info about food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.getDimsHeight(foodImageSize) - 20,
            child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.getDimsHeight(20),
                left: Dimensions.getDimsHeight(20),
                right: Dimensions.getDimsHeight(20),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.getDimsHeight(20)),
                  topLeft: Radius.circular(Dimensions.getDimsHeight(20)),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: "Китайский дедушка"),
                  SizedBox(height: Dimensions.getDimsHeight(20)),
                  const BigText(text: "Описание"),
                  SizedBox(height: Dimensions.getDimsHeight(20)),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed tempus ante. Nam nunc ante, tristique nec iaculis eget, dapibus sed nisi. Nullam lacinia ligula ac lobortis consectetur. Mauris lacinia nulla luctus, interdum turpis sit amet, vestibulum tellus. Fusce placerat lacus eu tempus blandit. Nulla mattis imperdiet gravida. Duis imperdiet ut mauris quis condimentum. Morbi posuere mattis elit, ac maximus elit luctus sodales. Donec et sollicitudin dolor.Cras egestas tempus nulla vel mattis. Nulla vel quam ac turpis hendrerit tincidunt eu quis dolor. Aliquam luctus pellentesque diam sed tempor. Nunc turpis nisi, fermentum sed euismod pretium, laoreet sit amet nibh. Nullam vitae felis sapien. Etiam condimentum justo ut laoreet maximus. Duis condimentum turpis urna, at sagittis orci eleifend sit amet. In mollis tristique tortor, sed mollis orci eleifend ac. Morbi in ante sed turpis lobortis tincidunt ornare id odio."),
                    ),
                  ),
                ],
              ),
            ),
          )
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.getDimsHeight(120),
        padding: EdgeInsets.only(
          top: Dimensions.getDimsHeight(30),
          bottom: Dimensions.getDimsHeight(30),
          left: Dimensions.getDimsWidth(20),
          right: Dimensions.getDimsWidth(20),
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.getDimsHeight(40)),
            topRight: Radius.circular(Dimensions.getDimsHeight(40)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.getDimsHeight(20),
                bottom: Dimensions.getDimsHeight(20),
                left: Dimensions.getDimsWidth(20),
                right: Dimensions.getDimsWidth(20),
              ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.getDimsHeight(20)),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.getDimsWidth(10)),
                  const BigText(text: "0"),
                  SizedBox(width: Dimensions.getDimsWidth(10)),
                  const Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.getDimsHeight(20),
                bottom: Dimensions.getDimsHeight(20),
                left: Dimensions.getDimsWidth(20),
                right: Dimensions.getDimsWidth(20),
              ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.getDimsHeight(20)),
                color: AppColors.mainColor,
              ),
              child: const BigText(
                text: "350 ₽ | Добавить",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
