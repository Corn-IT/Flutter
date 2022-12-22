// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';

class AuthProvider extends ChangeNotifier {
  final bool _isLogin = false;

  bool get isLogin => _isLogin;

  @override
  String toString() => 'AuthProvider(_isLogin: $_isLogin)';
}
