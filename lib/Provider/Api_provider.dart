import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../View/api_services.dart';

class  Homeproivder extends ChangeNotifier{
  Map data = {};
  bool isloading = true;







  
  Future<void> fetchData(String category) async{
    isloading = true;
    notifyListeners();

    String? json = await ApiServices().apiCalling(category);
    if(json != null)
      {
        data = jsonDecode(json);

      }
    else
    {

    }
    isloading = true;
    notifyListeners();

  }
  Homeproivder(){
    fetchData('car');
  }
}