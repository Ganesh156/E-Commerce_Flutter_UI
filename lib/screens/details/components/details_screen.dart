import 'package:demo/constants.dart';
import 'package:demo/models/Product.dart';
import 'package:demo/screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({ Key? key , required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: ()=>Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon:SvgPicture.asset("assets/icons/search.svg") ,
            onPressed: (){},
            ),
            IconButton(
            icon:SvgPicture.asset("assets/icons/cart.svg") ,
            onPressed: (){},
            ),
            SizedBox(width: KDefaultPaddin/2
            ,)
        ],
        );
  }
}