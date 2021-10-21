import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiCall {
  void getData() async {
    http.Response response =
        await http.get(Uri.parse('https://inspiration.goprogram.ai/#'));

    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }

  void postQuestion(String question, String description) async {
    print("YO");
    var response =
        await http.post(Uri.parse('https://askusdev.herokuapp.com/question/'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(
              <String, String>{
                'title': question,
                'description': description,
              },
            ));
    print(question + " " + description);
  }
}
