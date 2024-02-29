import 'package:dio/dio.dart';
import 'package:whether_getx/models/Wethermodel.dart';

class GetApi {
  final dio = Dio();
  Future<wether_model?> getcurrentwether(String cityname) async {
    String link =
        'https://api.weatherapi.com/v1/current.json?key=4d3f6ac683344847a73153727240401&q=$cityname';
    try {
      Response response = await dio.get(link);
      wether_model model = wether_model.fromJson(response.data);
      return model;
    } catch (e) {
      // Handle the error
      print(e); // Consider logging the error or showing a user-friendly message
      return null; // Return null or handle it in a way that fits your app
    }
  }
}
