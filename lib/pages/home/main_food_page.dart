import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home/body_food_page.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          //header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                top: Dimensions.getDimsHeight(45),
                bottom: Dimensions.getDimsHeight(15),
              ),
              padding: EdgeInsets.only(
                left: Dimensions.getDimsHeight(25),
                right: Dimensions.getDimsHeight(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const BigText(text: "Россия", color: AppColors.mainColor),
                      Row(
                        children: const [
                          SmallText(text: "Хабаровск", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.getDimsHeight(45),
                      height: Dimensions.getDimsHeight(45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            Dimensions.getDimsHeight(15),
                          ),
                          color: AppColors.mainColor),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.getDimsHeight(24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //body
          const Expanded(child: SingleChildScrollView(child: BodyFoodPage()))
        ],
      ),
    );
  }
}
