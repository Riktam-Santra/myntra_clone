import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InsiderButton extends StatelessWidget {
  const InsiderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => InsiderScreen())),
      child: const Text("Become an Insider"),
      style: FilledButton.styleFrom(
        backgroundColor: const Color.fromRGBO(241, 58, 177, 1),
      ),
    );
  }
}

class InsiderScreen extends StatefulWidget {
  const InsiderScreen({super.key});

  @override
  State<InsiderScreen> createState() => _InsiderScreenState();
}

class _InsiderScreenState extends State<InsiderScreen> {
  final imgPaths = [
    "lib/res/media/images/rewards/reward-1.webp",
    "lib/res/media/images/rewards/reward-2.webp",
    "lib/res/media/images/rewards/reward-3.jpg",
    "lib/res/media/images/rewards/reward-4.webp",
    "lib/res/media/images/rewards/reward-5.webp",
  ];

  final imageCaption = [
    "Get Myntra Voucher worth Rs.500",
    "Get Levi's Voucher worth Rs. 500",
    "Get SonyLiv Premium 1 Month Subscription",
    "Get Tokyo Talkies Voucher worth Rs.400",
    "Get FLAT 12% OFF on Flipkart Flight  Bookings",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  Center(
                    child: Text(
                      "BECOME AN INSIDER",
                      style: GoogleFonts.assistant(
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .fontSize,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      "Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!",
                      style: GoogleFonts.assistant(
                          fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "GOAL CRITERIA",
                        style: GoogleFonts.assistant(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "lib/res/media/images/icons/crown.webp",
                                    height: 50,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "₹0",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text("You have spent")
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "₹7000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text("Goal")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Image.asset(
                                    "lib/res/media/images/icons/crown.webp",
                                    height: 50,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "0/5",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text("Your orders")
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.end,
                                        ),
                                        Text("Goal")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Text(
                      "Note: Recent purchases will only reflect in the goal once the return window is over",
                      style: GoogleFonts.assistant(fontSize: 14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Benefits Of Joining The Program",
                        style: GoogleFonts.assistant(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                              "lib/res/media/images/icons/benefit-1.webp"),
                          title: Text("Early Access to The Sales"),
                        ),
                        Divider(),
                        ListTile(
                          leading: Image.asset(
                              "lib/res/media/images/icons/benefit-2.png"),
                          title: Text("Insider Exclusive Rewards & Benefits"),
                        ),
                        Divider(),
                        ListTile(
                          leading: Image.asset(
                              "lib/res/media/images/icons/benefit-3.webp"),
                          title: Text("Priority Customer Support"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color.fromRGBO(26, 28, 35, 1),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "How does it work?",
                              style: GoogleFonts.assistant(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[900],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every ₹100 spent",
                            style: GoogleFonts.assistant(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Card(
                            color: Color.fromRGBO(46, 48, 66, 1),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                  "lib/res/media/images/misc/progress.png"),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              "Rewards",
                              style: GoogleFonts.assistant(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow[900],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 30),
                            child: Text(
                              "Use your SuperCoins to get exciting rewards",
                              style: GoogleFonts.assistant(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: CarouselSlider(
                            items: imgPaths
                                .asMap()
                                .entries
                                .map((e) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Image.asset(e.value),
                                        Container(
                                          color: Colors.white,
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                              imageCaption[e.key],
                                            ),
                                          ),
                                        )
                                      ],
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              aspectRatio: 1.1,
                              viewportFraction: 1,
                              autoPlay: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            Container(
              color: Color.fromRGBO(40, 44, 63, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 63, 108, 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Text(
                          "LOG IN",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "By enrolling you agree to",
                          style: GoogleFonts.assistant(color: Colors.white),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Insider Terms & Conditions",
                          style: GoogleFonts.assistant(
                            color: Color.fromRGBO(255, 63, 108, 1),
                            fontSize: 16,
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
