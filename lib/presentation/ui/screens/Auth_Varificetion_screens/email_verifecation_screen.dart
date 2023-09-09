import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ostad_ecommerce_project/presentation/ui/screens/Auth_Varificetion_screens/Otp_verification_screen.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/image_assets_location.dart';


class email_verifecation_screen extends StatelessWidget {
  const email_verifecation_screen({Key? key}) : super(key: key);

  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(

          children: [
            const SizedBox(height: 90),
            Center(
                child: SvgPicture.asset(
                  ImageAssets.craftyBayLogoSVG,
                  width: 100,
                )),
            const SizedBox(height: 20),
             Text("Welcome to Crafty Bay",style: Theme.of(context).textTheme.headlineMedium?.copyWith(
               fontSize: 26,
                fontWeight: FontWeight.bold,
             )),
             const SizedBox(height: 8),
             Text("Please enter your email address",style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
               color: Colors.grey,
            )),
            const SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter your email address",),

            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,

                child: ElevatedButton(
                    onPressed: (){
                      Get.to(const OTPVerificationScreen());
                    }, child:  const Text("Next"))),
          ],
         ),
       )
     ) ,
    );
  }
}