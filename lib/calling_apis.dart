
import 'package:http/http.dart' as http;

class ApiCall {

  void getData() async{
    http.Response response= await http
        .get(Uri.parse('https://inspiration.goprogram.ai/#'));

    if(response.statusCode==200){
      print(response.body);
    }else{
        print(response.statusCode);
      }
  }

}
