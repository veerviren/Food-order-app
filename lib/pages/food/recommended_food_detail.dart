import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/colors.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/app_icon.dart';
import 'package:food/widgets/big_text.dart';

import '../../widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: 'Chinese Side',
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.orangeAccent,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food1.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                child: Column(
              children: [
                Container(
                  child: ExapandableTextWidget(
                    text:
                        'Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have already tasted Chinese cuisines before them come to China, and the top 10 popular Chinese dishes among foreigners are: Sweet and Sour Pork, Kung Pao Chicken, Spring Rolls, Fried Rice, Mapo Tofu, Most foreigners have ',
                  ),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            )),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.width10,
              bottom: Dimensions.width10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconsize24,
                  iconColor: Colors.white,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconsize24,
                  iconColor: Colors.white,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    // bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    // bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
