import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/icons/back.svg"),
          padding: EdgeInsets.only(left: kDefaultPadding),
        ),
        title: Text(
          "Back".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                    height: MediaQuery.of(context).size.width * 0.7,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.6,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        ),
                        Hero(
                          tag: 0,
                          child: Image.asset(
                            "assets/images/Item_1.png",
                            height: MediaQuery.of(context).size.width * 0.65,
                            width: MediaQuery.of(context).size.width * 0.65,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3),
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFF707070))),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF80989A)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3),
                        height: 24,
                        width: 24,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFFF5200)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding / 2.5),
                        padding: EdgeInsets.all(3),
                        height: 24,
                        width: 24,
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    "Poppy Plastic Tub Chair",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  "\$56",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    'Curabitur vestibulum aliquam leo. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Duis leo.',
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Color(0xFFFCBF1E),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: 18,
                ),
                SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  "Chat",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/shopping-bag.svg", height: 18,),
                    SizedBox(width: 10,),
                    Text("Add to Cart", style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
