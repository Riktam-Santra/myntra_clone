import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MenSection extends StatefulWidget {
  const MenSection({super.key});

  @override
  State<MenSection> createState() => _MenSectionState();
}

class _MenSectionState extends State<MenSection> {
  int pageIndex = 0;
  final imagePaths = [
    "lib/res/media/images/products/trends/men/trend-1.webp",
    "lib/res/media/images/products/trends/men/trend-2.webp",
    "lib/res/media/images/products/trends/men/trend-3.jpg",
    "lib/res/media/images/products/trends/men/trend-4.webp",
    "lib/res/media/images/products/trends/men/trend-5.webp",
    "lib/res/media/images/products/trends/men/trend-6.webp",
    "lib/res/media/images/products/trends/men/trend-7.webp",
    "lib/res/media/images/products/trends/men/trend-8.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: List.generate(
            2,
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
                return Image.asset(
                  imagePaths[(4 * listIndex) + gridIndex],
                );
              },
            ),
          ),
          options: CarouselOptions(
            enableInfiniteScroll: false,
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
                .take(2)
                .toList(),
          ),
        ),
      ],
    );
  }
}
