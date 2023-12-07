import 'package:flutter_manager_sell_app/src/model/flowers.dart';
import 'package:flutter_manager_sell_app/src/reponsitory/repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FlowerRepository implements Repository {
  String dataUrl = "http://localhost:3000";

  @override
  Future<String> deleteFlower(Flower flower) {
    // TODO: implement deleteFlower
    throw UnimplementedError();
  }

  @override
  Future<List<Flower>> getFlowerData() async {
    List<Flower> flowerList = [];
    var url = Uri.parse('$dataUrl/flower');
    var responsive = await http.get(url);
    print('stata code: ${responsive.statusCode}');
    var body = json.decode(responsive.body);
    // parse
    for (var i = 0; i < body.length; i++) {
      flowerList.add(Flower.fromJson(body[i]));
    }
    return flowerList;
  }

  @override
  Future<String> patchComplete(Flower flower) {
    // TODO: implement patchComplete
    throw UnimplementedError();
  }

  @override
  Future<String> postFlower(Flower flower) {
    // TODO: implement postFlower
    throw UnimplementedError();
  }

  @override
  Future<String> putComplete(Flower flower) {
    // TODO: implement putComplete
    throw UnimplementedError();
  }
}
