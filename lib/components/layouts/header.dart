import 'package:flutter/material.dart';
import 'package:flutter_gojek_clone/theme.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: green2, borderRadius: BorderRadius.circular(30)),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(100)),
          child: Text(
            'Beranda',
            style: semiBold14.copyWith(color: green1),
          ),
        ),
        ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                child: Center(
                  child: Text(
                    title,
                    style: semiBold14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}
