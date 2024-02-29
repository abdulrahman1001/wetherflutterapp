import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whether_getx/controller/controller.dart';
import 'package:whether_getx/widget/buttomsheet.dart';

class Home extends GetView<control> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    control c = Get.put(control());
    // String text = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(CustomButtonSheet(
                
              ));
            },
            icon: Icon(Icons.search),
            iconSize: 40,
          )
        ],
      ),
      body: GetBuilder<control>(
        init: control(),
        builder: (c) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${c.name}, ${c.country}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Image.network('${c.img}', width: 100, height: 100),
              SizedBox(height: 8),
              Text(
                '${c.description}',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                '${c.temp_c} / ${c.temp_c}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
