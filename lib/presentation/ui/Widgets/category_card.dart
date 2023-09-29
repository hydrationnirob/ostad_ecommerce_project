
import 'package:flutter/material.dart';
import 'package:ostad_ecommerce_project/Data/Models/CategoryData.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final CategoryData categoryData;
  const CategoryCard({
    super.key, required this.categoryData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)),
            child: Image.network(categoryData.categoryImg ?? '', height: 50,),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            categoryData.categoryName ?? '',
            style: const TextStyle(
                fontSize: 15,
                color: AppColors.primaryColor,
                letterSpacing: 0.4),
          )
        ],
      ),
    );
  }
}