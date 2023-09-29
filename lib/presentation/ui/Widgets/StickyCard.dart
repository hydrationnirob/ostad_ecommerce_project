import 'package:flutter/material.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/app_colors.dart';

class StickyCard extends StatelessWidget {


 final String buttonText;
 final onpressed;


  const StickyCard({

    super.key, required this.buttonText, this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black54
              ),),
              SizedBox(height: 4,),
              Text('\$1000', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.primaryColor
              ),),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(onPressed: onpressed, child:  Text(buttonText),),)
        ],
      ),
    );
  }
}