import 'dart:async';
import 'dart:convert';
// ignore: depend_on_referenced_packages, library_prefixes
import 'package:http/http.dart' as httpClient;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ApiProvider {
  static httpClient.Client? http = httpClient.Client();
  String? baseUrl = 'https://api.escuelajs.co/api/v1';

  ApiProvider() {
    EasyLoading.instance.indicatorType = EasyLoadingIndicatorType.fadingFour;
    EasyLoading.instance.maskType = EasyLoadingMaskType.black;
    EasyLoading.instance.loadingStyle = EasyLoadingStyle.dark;
  }

  Future<dynamic> get(String url) async {
    // var token = await UserService().jwtOrEmpty;
    var respJson;
    httpClient.Response resp;
    try {
      // EasyLoading.show(status: 'Loading ...');
      resp = await http!.get(
        Uri.parse(baseUrl! + url),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
      );
      // EasyLoading.dismiss();
      print(resp);
      if (resp != null) respJson = _resp(url, resp);
      return respJson;
    } catch (e) {
      print(e);
      // throw e;
      // throw 'Could not connect to the server';
    }
  }

  dynamic _resp(String url, resp) {
    print(resp.body);
    int statusCode = resp.statusCode;
    print('status code: ');
    print(statusCode);
    if ([200, 201].contains(statusCode)) {
      // if (resp.body is Map) {
      var respJson = json.decode(resp.body.toString());
      return respJson;
      // }

      // return true;
    } else if (statusCode == 403) {
      print('403 ...');
      throw 'An error has occured, retry';
      // throw 'You are not authorized to access this endpoint';
    
    } else if (statusCode == 404) {
      print('404 ...');
      throw 'Not found';
    } else {
      var respJson = json.decode(resp.body.toString());
      throw (respJson);
    }
  }
}
