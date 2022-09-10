import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/app_column.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icons_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class BodyFoodPage extends StatefulWidget {
  const BodyFoodPage({Key? key}) : super(key: key);

  @override
  State<BodyFoodPage> createState() => _BodyFoodPageState();
}

class _BodyFoodPageState extends State<BodyFoodPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  // final double _height = Dimensions.pageViewContainer;
  final double _height = Dimensions.getDimsHeight(220);

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider
        SizedBox(
          height: Dimensions.getDimsHeight(320),
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (context, position) {
              return _buildPageItem(position);
            },
          ),
        ),

        //slider dots
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),

        SizedBox(height: Dimensions.getDimsHeight(30)),

        //popular text
        Container(
          margin: EdgeInsets.only(left: Dimensions.getDimsHeight(30)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const BigText(text: "Популярное"),
              SizedBox(width: Dimensions.getDimsHeight(10)),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: const BigText(text: ".", color: Colors.black26),
              ),
              SizedBox(width: Dimensions.getDimsHeight(10)),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: const SmallText(
                  text: "Food pairing",
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),

        //food list
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimensions.getDimsHeight(20),
                  right: Dimensions.getDimsHeight(20),
                  bottom: Dimensions.getDimsHeight(10),
                ),
                child: Row(
                  children: [
                    //image section
                    Container(
                      height: Dimensions.getDimsHeight(120),
                      width: Dimensions.getDimsHeight(120),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimensions.getDimsHeight(20),
                        ),
                        color: Colors.white,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/food0.png"),
                        ),
                      ),
                    ),

                    //text container
                    Expanded(
                      child: Container(
                        height: Dimensions.getDimsHeight(100),
                        // width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight:
                                Radius.circular(Dimensions.getDimsHeight(20)),
                            bottomRight:
                                Radius.circular(Dimensions.getDimsHeight(20)),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: Dimensions.getDimsHeight(10),
                            right: Dimensions.getDimsHeight(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const BigText(text: "Суп из чау-чау"),
                              SizedBox(height: Dimensions.getDimsHeight(10)),
                              const SmallText(
                                  text:
                                      'C зелёным луком, листьями периллы и одуванчика, специями'),
                              SizedBox(height: Dimensions.getDimsHeight(10)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            // height: Dimensions.pageViewContainer,
            height: Dimensions.getDimsHeight(220),
            margin: EdgeInsets.only(
                left: Dimensions.getDimsHeight(10),
                right: Dimensions.getDimsHeight(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.getDimsHeight(30)),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                image: AssetImage("assets/images/food0.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: Dimensions.pageViewTextContainer,
              height: Dimensions.getDimsHeight(120),
              margin: EdgeInsets.only(
                left: Dimensions.getDimsHeight(30),
                right: Dimensions.getDimsHeight(30),
                bottom: Dimensions.getDimsHeight(30),
              ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Dimensions.getDimsHeight(20)),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: const AppColumn(text: "Китайский дедушка"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
