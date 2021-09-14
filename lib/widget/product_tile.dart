import 'package:flutter/material.dart';
import 'package:shamo_apps/models/product_models.dart';
import 'package:shamo_apps/theme.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                product.galleries![2].url!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${product.category}',
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '${product.name}',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextstyle.copyWith(fontWeight: medium),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
