import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/Home/home_slider.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/Home/section_header.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/ProductCard.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/category_card.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/circular_icon_button.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/image_assets_location.dart';

import 'CategoryListScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              ImageAssets.craftyBayNavLogoSVG,
              fit: BoxFit.contain,
            ),
            const Spacer(),
            CircularIconButton(
              icon: Icons.person,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.call,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.notifications_none,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeSlider(),
              SectionHeader(
                title: 'Categories',
                onTap: () {
                  Get.to(const CategoryListScreen());
                },
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const CategoryCard();
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: 'New',
                onTap: () {},
              ),
              SizedBox(
                height: 165,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
