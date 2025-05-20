import 'package:example_2/example2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> { 
  
ExapleTwoController exapleTwoController = Get.put(ExapleTwoController());



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Obx(() => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(exapleTwoController.opacity.value),
              )),


          Obx(() => Slider(
                value: exapleTwoController.opacity.value,
                onChanged: (value) {
                  
                  exapleTwoController.setOpacity(value);
                },
              )),
        ],
      ),
    );
  }
}
