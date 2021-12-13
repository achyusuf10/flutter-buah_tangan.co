import 'package:buah_tangan_co/common/pay_type.dart';
import 'package:buah_tangan_co/themes/font_style.dart';
import 'package:buah_tangan_co/views/ordering/component/card_button_bayar.dart';
import 'package:buah_tangan_co/views/ordering/component/card_button_kirim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OrderingController extends GetxController {
  var pembayaran = ''.obs;
  var pengiriman = ''.obs;

  List<String> pengirimanType = ['Express', 'Reguler', 'Ekonomi'];
  List<int> hargaKirim = [14000, 9000, 6000];

  void pilihPengiriman() {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              horizontalTitleGap: 0,
              leading: GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Pilih Pengiriman',
                style: boldLoraBlackStyle.copyWith(fontSize: 14),
              ),
            ),
            Container(
              height: 5,
              color: const Color(0xffF0F0F0),
            ),
            const SizedBox(
              height: 10,
            ),
            CardButtonKirim(listHarga: hargaKirim, listType: pengirimanType),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  void pilihPembayaran() {
    Get.bottomSheet(
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              horizontalTitleGap: 0,
              leading: GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Pilih Pembayaran',
                style: boldLoraBlackStyle.copyWith(fontSize: 14),
              ),
            ),
            Container(
              height: 5,
              color: const Color(0xffF0F0F0),
            ),
            const SizedBox(
              height: 10,
            ),
            CardButtonBayar(payType: payType),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onInit() {
    pembayaran.value = 'Pilih Pembayaran';
    pengiriman.value = 'Pilih Pengiriman';
    super.onInit();
  }
}
