import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntra_clone/screens/widgets/trends_section/widgets/men_section.dart';
import 'package:myntra_clone/screens/widgets/trends_section/widgets/women_section.dart';

class TrendsSection extends StatefulWidget {
  const TrendsSection({super.key});

  @override
  State<TrendsSection> createState() => _TrendsSectionState();
}

class _TrendsSectionState extends State<TrendsSection>
    with SingleTickerProviderStateMixin {
  bool menSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "TRENDS",
            style: GoogleFonts.assistant(
              color: const Color.fromRGBO(50, 50, 50, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() {
                        menSelected = false;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "WOMEN",
                          style: GoogleFonts.assistant(
                            color: const Color.fromRGBO(50, 50, 50, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => setState(() {
                        menSelected = true;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "MEN",
                          style: GoogleFonts.assistant(
                            color: const Color.fromRGBO(50, 50, 50, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AnimatedAlign(
              duration: const Duration(
                milliseconds: 250,
              ),
              alignment:
                  menSelected ? Alignment.bottomRight : Alignment.bottomLeft,
              curve: Curves.easeIn,
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width / 2.3,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: menSelected ? MenSection() : WomenSection(),
            ),
          ],
        ),
      ],
    );
  }
}
