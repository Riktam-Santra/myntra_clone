import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlashedPriceSection extends StatefulWidget {
  const SlashedPriceSection({super.key});

  @override
  State<SlashedPriceSection> createState() => _SlashedPriceSectionState();
}

class _SlashedPriceSectionState extends State<SlashedPriceSection> {
  int pageIndex = 0;
  final imagePaths = [
    "lib/res/media/images/products/slashes/slash-1.webp",
    "lib/res/media/images/products/slashes/slash-2.webp",
    "lib/res/media/images/products/slashes/slash-3.webp",
    "lib/res/media/images/products/slashes/slash-4.webp",
    "lib/res/media/images/products/slashes/slash-5.webp",
    "lib/res/media/images/products/slashes/slash-6.webp",
    "lib/res/media/images/products/slashes/slash-7.webp",
    "lib/res/media/images/products/slashes/slash-8.webp",
    "lib/res/media/images/products/slashes/slash-9.webp",
    "lib/res/media/images/products/slashes/slash-10.webp",
    "lib/res/media/images/products/slashes/slash-11.webp",
    "lib/res/media/images/products/slashes/slash-12.webp",
    "lib/res/media/images/products/slashes/slash-13.webp",
    "lib/res/media/images/products/slashes/slash-14.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "BRANDS AT SLASHED PRICES",
            style: GoogleFonts.assistant(
              color: const Color.fromRGBO(50, 50, 50, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        CarouselSlider(
          items: List.generate(
            4,
            (listIndex) => GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemCount: 4,
              itemBuilder: (context, gridIndex) {
                return ((4 * listIndex) + gridIndex < 14)
                    ? Image.asset(
                        imagePaths[(4 * listIndex) + gridIndex],
                      )
                    : Container();
              },
            ),
          ),
          options: CarouselOptions(
            aspectRatio: 0.8,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imagePaths
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
                .take(4)
                .toList(),
          ),
        ),
      ],
    );
  }
}
