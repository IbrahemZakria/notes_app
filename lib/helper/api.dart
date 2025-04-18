// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shop_app/helper/component/UserMessage.dart';

// class Api {
//   Future<dynamic> getData(String url) async {
//     Dio dio = Dio();
//     try {
//       Response response = await dio.get(url);
//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception('Failed to load data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Failed to load data: $e');
//     }
//   }

//   //////////////////////////////////////////////////////////////////////////////
//   Future<dynamic> postData({
//     required String url,
//     @required Map<String, dynamic>? data,
//     String? token,
//   }) async {
//     Dio dio = Dio();
//     Map<String, String> headers = {
//       'Content-Type': 'application/x-www-form-urlencoded',
//       'Accept': 'application/json',
//     };
//     if (token != null) {
//       headers.addAll({"Authorization": "Bearer $token"});
//     }
//     try {
//       Response response = await dio.post(
//         url,
//         data: data,
//         options: Options(headers: headers),
//       );
//       if (response.statusCode == 200) {
//         return response.data;
//       } else {
//         throw Exception('Failed to post data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Failed to post data: $e');
//     }
//   } //////////////////////////////////////////////////////////////////////////////

//   Future<dynamic> updatetData({
//     required String url,
//     @required Map<String, dynamic>? data,
//     String? token,
//   }) async {
//     Dio dio = Dio();
//     Map<String, String> headers = {
//       'Content-Type': 'application/x-www-form-urlencoded',
//       'Accept': '*/*',
//     };
//     if (token != null) {
//       headers.addAll({"Authorization": "Bearer $token"});
//     }
//     try {
//       Response response = await dio.put(
//         url,
//         data: data,
//         options: Options(headers: headers),
//       );
//       if (response.statusCode == 200) {
//         Usermessage.show(
//           message: "updated sucssesfully",
//           backgroundColor: Colors.green,
//         );
//         Map<String, dynamic> responseData =
//             response.data as Map<String, dynamic>;

//         return responseData;
//       } else {
//         throw Exception('Failed to update  data: ${response.statusCode}');
//       }
//     } catch (e) {
//       throw Exception('Failed to update  data: $e');
//     }
//   }
// }
