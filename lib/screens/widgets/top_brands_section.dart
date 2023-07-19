import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBrandsSection extends StatefulWidget {
  const TopBrandsSection({super.key});

  @override
  State<TopBrandsSection> createState() => _TopBrandsSectionState();
}

class _TopBrandsSectionState extends State<TopBrandsSection> {
  final imgPaths = [
    "lib/res/media/images/products/brands/brand-1.webp",
    "lib/res/media/images/products/brands/brand-2.webp",
    "lib/res/media/images/products/brands/brand-3.webp",
    "lib/res/media/images/products/brands/brand-4.webp",
    "lib/res/media/images/products/brands/brand-5.webp",
    "lib/res/media/images/products/brands/brand-6.webp",
    "lib/res/media/images/products/brands/brand-7.webp",
    "lib/res/media/images/products/brands/brand-8.webp",
    "lib/res/media/images/products/brands/brand-9.webp",
    "lib/res/media/images/products/brands/brand-10.webp",
    "lib/res/media/images/products/brands/brand-11.webp",
    "lib/res/media/images/products/brands/brand-12.webp",
    "lib/res/media/images/products/brands/brand-13.webp",
    "lib/res/media/images/products/brands/brand-14.webp",
    "lib/res/media/images/products/brands/brand-15.webp",
    "lib/res/media/images/products/brands/brand-16.webp",
    "lib/res/media/images/products/brands/brand-17.webp",
    "lib/res/media/images/products/brands/brand-18.webp",
    "lib/res/media/images/products/brands/brand-19.webp",
    "lib/res/media/images/products/brands/brand-20.webp",
    "lib/res/media/images/products/brands/brand-21.webp",
    "lib/res/media/images/products/brands/brand-22.webp",
    "lib/res/media/images/products/brands/brand-23.webp",
    "lib/res/media/images/products/brands/brand-24.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "DEALS ON TOP BRANDS",
            style: GoogleFonts.assistant(
              color: const Color.fromRGBO(50, 50, 50, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CarouselSlider(
          items: imgPaths.map((e) => Image.asset(e)).toList(),
          options: CarouselOptions(
            aspectRatio: 0.75,
            autoPlay: true,
          ),
        ),
      ],
    );
  }
}
