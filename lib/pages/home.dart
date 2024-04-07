// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_gojek_clone/components/layouts/header.dart';
import 'package:flutter_gojek_clone/data/fast_access.dart';
import 'package:flutter_gojek_clone/data/icons.dart';
import 'package:flutter_gojek_clone/data/menu.dart';
import 'package:flutter_gojek_clone/data/news.dart';
import 'package:flutter_gojek_clone/theme.dart';
import 'package:flutter_svg/svg.dart';

class HomPage extends StatelessWidget {
  // ignore: use_super_parameters
  const HomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 81,
        backgroundColor: green1,
        title: const HeaderLayout(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: dark4,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/search.svg',
                            width: 45,
                            color: dark3,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Cari layanan, makanan & tujuan',
                            style: reguler14.copyWith(color: dark3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/Ferlan_Ferlani.png',
                      width: 45,
                    ),
                  ),
                ],
              ),
            ),
            // Gopay section
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          color: blue1,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 18,
                                  width: 4,
                                  decoration: BoxDecoration(
                                      color: dark3,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 18,
                                  width: 4,
                                  decoration: BoxDecoration(
                                      color: dark4,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 18,
                                  width: 4,
                                  decoration: BoxDecoration(
                                      color: dark3,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 18,
                                  width: 4,
                                  decoration: BoxDecoration(
                                      color: dark3,
                                      borderRadius: BorderRadius.circular(4)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 135,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        color: blue4,
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                bottom: Radius.circular(17))),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 125,
                                    height: 110,
                                    decoration: BoxDecoration(
                                        color: white,
                                        borderRadius:
                                            BorderRadius.circular(17)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/gopay.png',
                                            width: 70,
                                          ),
                                          Text(
                                            'Rp.5000.000',
                                            style: semiBold14,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Klik & cek riwayat',
                                            style: reguler14.copyWith(
                                                color: green1),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: 135,
                                    height: 22,
                                    decoration: BoxDecoration(
                                        color: blue4,
                                        borderRadius:
                                            const BorderRadius.vertical(
                                                top: Radius.circular(17))),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  ...gopayIcons.map((item) => Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            13),
                                                  ),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/${item.icon}.svg',
                                                    color: blue1,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                item.name,
                                                style: reguler14.copyWith(
                                                    color: white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Main menu section
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
              child: SizedBox(
                height: 157,
                child: GridView.count(crossAxisCount: 4, children: [
                  ...gojekMenu.map(
                    (icon) => Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: icon.icon == 'goclub'
                                  ? Colors.white
                                  : icon.color,
                              borderRadius: BorderRadius.circular(20)),
                          child: SvgPicture.asset(
                            'assets/icons/${icon.icon}.svg',
                            color: icon.icon == 'goclub'
                                ? icon.color
                                : icon.icon == 'other'
                                    ? dark2
                                    : Colors.white,
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          icon.name,
                          style: reguler12_5.copyWith(color: dark2),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            // Event Section
            Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                          height: 90,
                          decoration: BoxDecoration(
                              color: white,
                              border: Border.all(color: dark4),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    SvgPicture.asset('assets/icons/dots.svg'),
                                    Container(
                                      margin: const EdgeInsets.only(top: 8),
                                      child: Positioned(
                                        top: 0,
                                        child: SvgPicture.asset(
                                          'assets/icons/star.svg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '117 XP lagi ada harta karun',
                                      style: reguler12_5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 140,
                                          height: 7,
                                          decoration: BoxDecoration(
                                              color: dark3,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                        Positioned(
                                          top: 0,
                                          child: Container(
                                            width: 100,
                                            height: 7,
                                            decoration: BoxDecoration(
                                                color: green1,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 55),
                                  child: SvgPicture.asset(
                                      'assets/icons/left.svg',
                                      width: 30,
                                      color: dark1),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ))
                  ],
                )),
            // Fast access section
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    'Akses Cepat',
                    style: bold18.copyWith(color: dark2),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: 400,
                        decoration: BoxDecoration(
                            border: Border.all(color: dark5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...gojekFastAccess.map(
                                (item) => Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: item.color,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/icons/${item.icon1}.svg',
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(item.title),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
            // Gopay later new section
            Padding(
                padding: const EdgeInsets.all(15),
                child: Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/gopaylater.png',
                      width: 150,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lebih hemat pake Gopayater🤩',
                      style: bold16.copyWith(color: dark2),
                    ),
                    Text(
                      'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya',
                      style: reguler12_5.copyWith(color: dark2),
                    )
                  ],
                ))),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Expanded(
                child: Column(
                  children: [
                    ...gojekNews.map(
                      (item) => Container(
                        margin: const EdgeInsets.only(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: white,
                          border: Border.all(
                            color: dark5,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/${item.image}',
                                fit: BoxFit.cover,
                                width: 400,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item.title,
                                      style: bold16,
                                    ),
                                    Text(item.description)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
