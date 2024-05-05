import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/config/constants/base_strings.dart';
import 'package:social_media_app/socail_media_app/data/models/response_model.dart';

class AuthServices {
  final Dio _dio = Dio();

  //TODO: REGİSTER İŞLEMİ DÜZENLE
  Future<ResponseModel> register({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      String url = "${BaseStrings.baseUrl}/register";

      Map<String, dynamic> data = {
        "username": username,
        "email": email,
        "password": password,
      };

      var response = await _dio.post(url, data: data);

      if (response.statusCode == 200) {
        //Giden istek başarılı
        if (response.data["status"] == "OK") {
          
          //KAYIT İŞLEMİ BAŞARILI
          //USERID VE TOKEN KAYDET
          //GERİ BAŞARILI BİR DEĞER DÖNDÜR
        }
        //BÜYÜK İHTİMALLE KULLANICI MEVCUT VEYA ŞİFRE HATALI
        //GELEN MESSAGE DEĞERİNİ GERİ DÖNDÜR
      }
      //SERVİS İSTEĞİ HATALI!!!
      //GELEN MESSAGE DEĞERİNİ GERİ DÖNDÜR

      return ResponseModel(isSuccess: true, message: response.data["message"]);
    } catch (e) {
      debugPrint(e.toString());
      return const ResponseModel(isSuccess: false, message: "");
    }
  }
}
