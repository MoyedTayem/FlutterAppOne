
class City{
  late String name;
  late String iso3;
  late String code;
  late List<dynamic> populationCounts;

  City({required this.name,required this.iso3,required this.code,required this.populationCounts});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['country'] as String,
      code: json['code'] as String,
      iso3: json['iso3'] as String,
      populationCounts: json['populationCounts'] as List<dynamic>,
    );
  }


}

