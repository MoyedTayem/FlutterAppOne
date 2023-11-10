
class City{
  late String name;
  late String iso3;
  late String unicodeFlag;
  //late List<dynamic> populationCounts;

  City({required this.name,required this.iso3,required this.unicodeFlag,/*required this.populationCounts*/});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name:  json['name'] as String,
      unicodeFlag: json['unicodeFlag'] as String,
      iso3: json['iso3'] as String,
      //populationCounts: json['populationCounts'] as List<dynamic>,
    );
  }


}

