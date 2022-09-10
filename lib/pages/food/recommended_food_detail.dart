import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(),
                child: Center(
                  child: BigText(
                    text: 'эд',
                    size: Dimensions.getDimsHeight(26),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed tempus ante. Nam nunc ante, tristique nec iaculis eget, dapibus sed nisi. Nullam lacinia ligula ac lobortis consectetur. Mauris lacinia nulla luctus, interdum turpis sit amet, vestibulum tellus. Fusce placerat lacus eu tempus blandit. Nulla mattis imperdiet gravida. Duis imperdiet ut mauris quis condimentum. Morbi posuere mattis elit, ac maximus elit luctus sodales. Donec et sollicitudin dolor.Cras egestas tempus nulla vel mattis. Nulla vel quam ac turpis hendrerit tincidunt eu quis dolor. Aliquam luctus pellentesque diam sed tempor. Nunc turpis nisi, fermentum sed euismod pretium, laoreet sit amet nibh. Nullam vitae felis sapien. Etiam condimentum justo ut laoreet maximus. Duis condimentum turpis urna, at sagittis orci eleifend sit amet. In mollis tristique tortor, sed mollis orci eleifend ac. Morbi in ante sed turpis lobortis tincidunt ornare id odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed tempus ante. Nam nunc ante, tristique nec iaculis eget, dapibus sed nisi. Nullam lacinia ligula ac lobortis consectetur. Mauris lacinia nulla luctus, interdum turpis sit amet, vestibulum tellus. Fusce placerat lacus eu tempus blandit. Nulla mattis imperdiet gravida. Duis imperdiet ut mauris quis condimentum. Morbi posuere mattis elit, ac maximus elit luctus sodales. Donec et sollicitudin dolor.Cras egestas tempus nulla vel mattis. Nulla vel quam ac turpis hendrerit tincidunt eu quis dolor. Aliquam luctus pellentesque diam sed tempor. Nunc turpis nisi, fermentum sed euismod pretium, laoreet sit amet nibh. Nullam vitae felis sapien. Etiam condimentum justo ut laoreet maximus. Duis condimentum turpis urna, at sagittis orci eleifend sit amet. In mollis tristique tortor, sed mollis orci eleifend ac. Morbi in ante sed turpis lobortis tincidunt ornare id odio.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed tempus ante. Nam nunc ante, tristique nec iaculis eget, dapibus sed nisi. Nullam lacinia ligula ac lobortis consectetur. Mauris lacinia nulla luctus, interdum turpis sit amet, vestibulum tellus. Fusce placerat lacus eu tempus blandit. Nulla mattis imperdiet gravida. Duis imperdiet ut mauris quis condimentum. Morbi posuere mattis elit, ac maximus elit luctus sodales. Donec et sollicitudin dolor.Cras egestas tempus nulla vel mattis. Nulla vel quam ac turpis hendrerit tincidunt eu quis dolor. Aliquam luctus pellentesque diam sed tempor. Nunc turpis nisi, fermentum sed euismod pretium, laoreet sit amet nibh. Nullam vitae felis sapien. Etiam condimentum justo ut laoreet maximus. Duis condimentum turpis urna, at sagittis orci eleifend sit amet. In mollis tristique tortor, sed mollis orci eleifend ac. Morbi in ante sed turpis lobortis tincidunt ornare id odio."),
          )
        ],
      ),
    );
  }
}
