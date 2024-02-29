import 'package:whether_getx/models/Wethermodel.dart';
import 'package:whether_getx/servies/APIconnect.dart';
import 'package:get/get.dart';

class control extends GetxController {
  wether_model? wether;
  String name = 'Please choose city';
  String country = 'none information avilable';
  String description = 'none information avilable';
  String temp_c = 'none information avilable';
  String temp_f = 'none information avilable';
  String img =
      "https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  getwether(city) async {
    wether = await GetApi().getcurrentwether(city);
    name = wether!.name;
    country = wether!.country;
    description = wether!.description;
    temp_c = wether!.temp_c.toString();
    temp_f = wether!.temp_f.toString();
    img = wether!.img;
    update();
    // print(wether);
    // print(name);
    // print(country);
  }
}
