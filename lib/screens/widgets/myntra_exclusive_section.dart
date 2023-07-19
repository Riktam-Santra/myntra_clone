import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyntraExclusiveSection extends StatefulWidget {
  const MyntraExclusiveSection({super.key});

  @override
  State<MyntraExclusiveSection> createState() => _MyntraExclusiveSectionState();
}

class _MyntraExclusiveSectionState extends State<MyntraExclusiveSection> {
  int pageIndex = 0;
  final imagePaths = [
    "lib/res/media/images/products/exclusive/exclusive-brand-1.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-2.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-3.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-4.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-5.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-6.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-7.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-8.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-9.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-10.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-11.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-12.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-13.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-14.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-15.webp",
    "lib/res/media/images/products/exclusive/exclusive-brand-16.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "MYNTRA EXCLUSIVE BRANDS",
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
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10),
              itemCount: 4,
              itemBuilder: (context, gridIndex) {
                return Image.asset(
                  imagePaths[(4 * listIndex) + gridIndex],
                );
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
