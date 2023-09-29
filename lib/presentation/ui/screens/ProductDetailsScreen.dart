
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/CustomStepper.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/Home/ProductImageSlider.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/StickyCard.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/app_colors.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/product_variants_Data.dart';

import 'ReviewSecreen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {


 static int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const ProductImageSlider(),
                        buildAppBar,
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleBar,
                          Row(
                            children: [
                              const Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey),
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(const ReviewScreen());
                                },
                                child: const Text(
                                  'Review',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Card(
                                color: AppColors.primaryColor,
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Text('Color', style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),),
                          const SizedBox(height: 16,),
                          ColorPicker,
                          const SizedBox(height: 16,),
                          const Text('Size', style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),),
                          const SizedBox(height: 16,),
                          SizePicker,
                          const SizedBox(height: 16,),
                          const Text('Description', style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w700
                          ),),
                          const SizedBox(height: 16,),
                          const Text(
                              '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                            '''
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const StickyCard(buttonText: 'Add to cart',),
          ],
        ),
      ),
    );
  }

  Row get TitleBar {
    return Row(
                          children: [
                            const Expanded(child: Text('Addidas Shoe HK23454 - Black Edition', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.5
                            ),)),
                            CustomStepper(
                                lowerLimit: 1,
                                upperLimit: 10,
                                stepValue: 1,
                                value: 1,
                                onChange: (newValue) {
                                  print(newValue);
                                })
                          ],
                        );
  }

  SizedBox get SizePicker {
    return SizedBox(
                          height: 28,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: ProductVariants.sizes.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                borderRadius: BorderRadius.circular(4),
                                onTap: () {
                                  _selectedSizeIndex = index;
                                  if (mounted) {
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(4),
                                      color: _selectedSizeIndex == index ? AppColors.primaryColor : null
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(ProductVariants.sizes[index], style: TextStyle(
                                      color: _selectedSizeIndex == index ? Colors.white : Colors.black
                                  ),
                                ),
                              ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(
                                width: 8,
                              );
                            },
                          ),
                        );
  }

  SizedBox get ColorPicker {
    return SizedBox(
                          height: 28,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: ProductVariants.colors.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  _selectedColorIndex = index;
                                  if (mounted) {
                                    setState(() {});
                                  }
                                },
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: ProductVariants.colors[index],
                                  child: _selectedColorIndex == index
                                      ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                      : null,
                                ),
                              );
                            }, separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(width: 8,);
                          },),
                        );
  }

  AppBar get buildAppBar {
    return AppBar(
                        leading: const BackButton(
                          color: Colors.black54,
                        ),
                        title: const Text('Product details', style: TextStyle(
                            color: Colors.black54
                        ),),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      );
  }
}

