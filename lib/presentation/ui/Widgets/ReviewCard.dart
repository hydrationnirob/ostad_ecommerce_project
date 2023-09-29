import 'package:flutter/material.dart';
import 'package:ostad_ecommerce_project/presentation/ui/utility/image_assets_location.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(ImageAssets.AvatarImage),
        ),
        title: Text('John Doe',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
        subtitle: Text( '''ke a type specimen book. sum. makebook. sum. make a type specimen book. sum. make a type specimen book. sum.'''
        ),
      ),
    );
  }
}