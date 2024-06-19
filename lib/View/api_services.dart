import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiServices {
  Future<String?> apiCalling(String category) async {
    String api =
        'https://pixabay.com/api/?key=44453872-368ab6e5f25fb1895e430f554a0&q=$category&image_type=photo&per_page=50';
         Response response = await http.get(Uri.parse(api));

    if(response.statusCode ==  200)
      {
         return response.body;
      }
    return null;

  }
}