import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whether_getx/controller/controller.dart';

class CustomButtonSheet extends StatelessWidget {
  CustomButtonSheet({super.key});
  final TextEditingController controller = TextEditingController();
  final control c =
      Get.put(control()); // Ensure 'Control' class is correctly named

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter your city here1',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String city = controller.text; // Get the text from the TextField
              if (city.isNotEmpty) {
                // Check if the city string is not empty
                c.getwether(city);
                navigator!.pop();
                // Call the getWeather method with the city
              } else {
                // Optionally handle the case where no city is entered

                print("Please enter a city name1");
                showCustomSnackbar(context, "Please enter a city name1");
              }
            },
            child: Text('Submit'),
            style: ButtonStyle(), // You can define your button style here
          )
        ],
      ),
    );
  }

  void showCustomSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3), // Set the duration to 3 seconds
    );

    // Find the closest ScaffoldMessenger and show the Snackbar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
