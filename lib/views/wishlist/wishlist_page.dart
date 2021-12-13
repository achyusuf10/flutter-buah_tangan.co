import 'package:buah_tangan_co/themes/font_style.dart';
import 'package:buah_tangan_co/views/shopping_bag/component/card_bag_shop.dart';
import 'package:buah_tangan_co/views/wishlist/component/card_wishtlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int length = 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Kesukaan',
          style: boldLoraBlackStyle.copyWith(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/shopping_bag.svg',
              color: Colors.black,
              height: 18,
              width: 18,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/profile.svg'),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              '3 Barang Wishlist',
              style: boldLoraBlackStyle.copyWith(fontSize: 14),
            ),
          ),
          Container(
            height: 5,
            width: double.infinity,
            color: const Color(0xffF0F0F0),
          ),
          Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => CardWishlist(),
                separatorBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 1,
                      width: double.infinity,
                      color: const Color(0xffF0F0F0),
                    ),
                itemCount: length + 5),
          ),
        ],
      ),
    );
  }
}
