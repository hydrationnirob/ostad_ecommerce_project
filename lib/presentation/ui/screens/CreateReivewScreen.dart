import 'package:flutter/material.dart';
class CreateReivewScreen extends StatefulWidget {
  const CreateReivewScreen({super.key});

  @override
  State<CreateReivewScreen> createState() => _CreateReivewScreenState();
}

class _CreateReivewScreenState extends State<CreateReivewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Create Review',
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 18.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 18.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 18.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Title',
                  border: OutlineInputBorder(),
                ),
              ),
            ),


          ],
        )
      ),);
  }
}
