import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myntra_clone/screens/insider_screen.dart';
import 'package:myntra_clone/screens/widgets/banner_section.dart';
import 'package:myntra_clone/screens/widgets/dotd_section.dart';
import 'package:myntra_clone/screens/widgets/myntra_exclusive_section.dart';
import 'package:myntra_clone/screens/widgets/slashed_prices_section.dart';
import 'package:myntra_clone/screens/widgets/top_brands_section.dart';
import 'package:myntra_clone/screens/widgets/trends_section/trends_section.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Image.asset(
          "lib/res/media/images/logo/logo.png",
          height: 30,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("lib/res/media/images/icons/cart-shopping-solid.png"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("lib/res/media/images/icons/user-solid.png"),
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              BannerSection(),
              DotdSection(),
              MyntraExclusiveSection(),
              TopBrandsSection(),
              SlashedPriceSection(),
              TrendsSection(),
              InsiderButton(),
            ],
          ),
        ),
      ),
    );
  }
}
