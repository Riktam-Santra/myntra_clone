import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({
    super.key,
  });

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  int pageIndex = 0;
  final bannerPaths = [
    "lib/res/media/images/products/banners/banner-1.webp",
    "lib/res/media/images/products/banners/banner-2.webp",
    "lib/res/media/images/products/banners/banner-3.webp",
    "lib/res/media/images/products/banners/banner-4.webp",
    "lib/res/media/images/products/banners/banner-5.webp"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(
              seconds: 4,
            ),
            onPageChanged: (index, reason) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
          items: bannerPaths
              .map(
                (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    e,
                    fit: BoxFit.fill,
                  ),
                ),
              )
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: bannerPaths
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: e.key == pageIndex
                              ? Colors.grey
                              : const Color.fromRGBO(217, 217, 217, 1),
                          shape: BoxShape.circle),
                      height: 10,
                      width: 10,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
