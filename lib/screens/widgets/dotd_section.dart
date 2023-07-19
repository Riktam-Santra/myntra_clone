import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DotdSection extends StatefulWidget {
  const DotdSection({super.key});

  @override
  State<DotdSection> createState() => _DotdSectionState();
}

class _DotdSectionState extends State<DotdSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    super.initState();
  }

  final dotdPaths = [
    "lib/res/media/images/products/dotd/dotd-1.webp",
    "lib/res/media/images/products/dotd/dotd-2.webp",
    "lib/res/media/images/products/dotd/dotd-3.webp",
    "lib/res/media/images/products/dotd/dotd-4.webp",
    "lib/res/media/images/products/dotd/dotd-5.webp",
    "lib/res/media/images/products/dotd/dotd-6.webp",
    "lib/res/media/images/products/dotd/dotd-7.webp",
    "lib/res/media/images/products/dotd/dotd-8.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "DEAL OF THE DAY",
            style: GoogleFonts.assistant(
              color: const Color.fromRGBO(50, 50, 50, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.7),
          itemBuilder: (context, index) {
            return Image.asset(dotdPaths[index]);
          },
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ShowMoreButton(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet(
                    animationController: _animationController,
                    onClosing: () {},
                    builder: (context) => Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "DEAL OF THE DAY",
                              style: GoogleFonts.assistant(
                                color: const Color.fromRGBO(50, 50, 50, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: dotdPaths.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 0.66,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10),
                                  itemBuilder: (context, index) {
                                    return Image.asset(dotdPaths[index]);
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ShowMoreButton extends StatelessWidget {
  final void Function()? onTap;
  const ShowMoreButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(50, 50, 50, 1),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.expand_circle_down),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "SHOW MORE",
                  style: GoogleFonts.assistant(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
