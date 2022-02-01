import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class User extends ChangeNotifier {
  int _age;
  String _name;
  Dio _dio;
  User(this._name, this._age, this._dio);
  int get age => _age;
  String get name => _name;
  bool get isOld => _age > 24;
  void birthday() {
    _dio.get("google.com");
    _age++;
    notifyListeners();
  }

  void changeName(String newName) {
    _name = newName;
    notifyListeners();
  }
}
