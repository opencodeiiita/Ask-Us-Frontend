import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCall extends StatelessWidget {

  void getData() async{
    http.Response response= await http
        .get(Uri.parse('https://inspiration.goprogram.ai/#'));

    if(response.statusCode==200){
      print(response.body);
    }else{
        print(response.statusCode);
      }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
