import 'dart:convert';
import 'package:http/http.dart';
import 'package:pares_bio_avanc/models/api_pares_biomag.dart';

class HttpService {
  var url = Uri.parse('http://gnmweb.test/api/buscaPares');

  get data => null;

  Future<List<ParesBiomag>> getPosts() async {
    Response res = await get(url);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<ParesBiomag> posts = body
          .map(
            (dynamic item) => ParesBiomag.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Erro muito Erro";
    }
  }
}
