import 'package:demo/constants.dart';
import 'package:demo/models/Product.dart';
import 'package:demo/screens/details/components/add_to_cart.dart';
import 'package:demo/screens/details/components/cart_counter.dart';
import 'package:demo/screens/details/components/color_and_size.dart';
import 'package:demo/screens/details/components/couter_with_fav_btn.dart';
import 'package:demo/screens/details/components/description.dart';
import 'package:demo/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.15,
                      left: KDefaultPaddin,
                      right: KDefaultPaddin),
                  // height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(
                        height: KDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: KDefaultPaddin / 2,
                      ),
                      CouterWithFavBtn(),
                      SizedBox(
                        height: KDefaultPaddin / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
