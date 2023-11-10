// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart';
import '../modales/city.dart';

class HttpService {
  String url = 'https://countriesnow.space/api/v0.1/countries/flag/unicode';
  late Uri uri = Uri.parse(url);
  Future<List<City>> getCitys() async {
    Response res = await get(uri);

    if (res.statusCode == 200) {
      dynamic body = jsonDecode(res.body);
     
      List<dynamic> data = body["data"];
      data.removeWhere((element) => element['iso3'] == "ISR");
      List<City> Citys = data
          .map(
            (dynamic item) => City.fromJson(item),
          )
          .toList();

      return Citys;
    } else {
      throw "Unable to retrieve Citys.";
    }
  }
}
