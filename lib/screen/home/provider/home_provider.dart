import 'package:exam/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  List<dynamic>? dataList = [];
  List<dynamic>? addData = [];
  int? selcatedvalue = 0;

  Future<void> getAPI() async {
    APIHelper apiHelper = APIHelper();
    List? g1 = await apiHelper.shopAPICall();
    dataList = g1;
    notifyListeners();
  }

  void changeIndex(int index)
  {
    selcatedvalue = index;
    notifyListeners();
  }

  // void addDataList()
  // {
  //   List l1= addData!.add(selcatedvalue);
  // }
}
