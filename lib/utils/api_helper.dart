import 'dart:convert';
import 'package:exam/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class APIHelper
{
  Future<List?> shopAPICall()
  async {
       var api = "https://fakestoreapi.com/products"; 
       var response = await http.get(Uri.parse(api));

       if(response.statusCode == 200)
         {
           var data = jsonDecode(response.body);
           List modelData = data.map((e) => HomeModel.mapToModel(e)).toList();
           return modelData;
         }
       return null;
  }
}