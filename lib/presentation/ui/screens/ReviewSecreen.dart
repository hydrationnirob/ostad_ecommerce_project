import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/ReviewCard.dart';
import 'package:ostad_ecommerce_project/presentation/ui/Widgets/StickyCard.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/app_colors.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/image_assets_location.dart';

import 'CreateReivewScreen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
        )
      ),

      body: Column(
        children: [
         Expanded(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(
                    height: MediaQuery.of(context).size.height*1,
                   child: ListView.builder(itemBuilder: (context,index){
                     return const ReviewCard();
                   }, itemCount: 5,),
                 ),
               ],
             ),
           ),
         ),

           StickyCard(buttonText: 'Add Review',onpressed: (){
             Get.to(()=>const CreateReivewScreen());
           },),

        ],
      ),
    );
  }
}


