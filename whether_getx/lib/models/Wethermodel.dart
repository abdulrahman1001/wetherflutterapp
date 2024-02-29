class wether_model {
  final String name;
  final String country;
  final String description;
  final double temp_c;
  final double temp_f;
  final String img;
  wether_model(
      {required this.name,
      required this.img, 
      required this.country,
      required this.description,
      required this.temp_c,
      required this.temp_f});
  factory wether_model.fromJson(Map<String, dynamic> json) {
    return wether_model(
      img:json["current"]["condition"]["icon"],
      name: json["location"]["name"],
      country: json["location"]["country"],
      description: json["current"]["condition"]['text'],
      temp_c: json["current"]["temp_c"],
      temp_f: json["current"]["temp_f"],
      
    );
  }
}
