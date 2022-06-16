import 'dart:convert';
import 'package:http/http.dart' as http;


Future <dynamic> getAd() async {
  print('ENTRO AL METODO');
  var url = Uri.parse('http://desarrollovan-tis.dedyn.io:4030/GetImagesCarousel');
  final json = {'idChannel' : 1 };
  var body = jsonEncode(json);
  print(body);
  var response = await http.post(url, body: body);

  if(response.statusCode == 200){
    return jsonDecode(response.body);
  } else {
    print('ERROR REQUEST');
  }
}

