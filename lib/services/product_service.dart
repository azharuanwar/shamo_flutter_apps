import 'package:http/http.dart' as http;
// import 'product';

class ProductService {
    String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

    Future<List<ProductModel>> getProducts() async {
      var url = '$baseUrl/register';

      var headers = {'Content-Type': 'application/json'};

      var response = await http.get(url, headers: headers);

      print(response.body);

      if(respinse.statuscode == 200) {
        
      }
    }
}