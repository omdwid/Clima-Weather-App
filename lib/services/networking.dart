import 'package:http/http.dart' as http;
import 'location.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;

  Future<dynamic> getData() async {
    http.Response responce = await http.get(Uri.parse(url));
    if (responce.statusCode == 200) {
      String data = responce.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print('something went wrong');
    }
  }
}
