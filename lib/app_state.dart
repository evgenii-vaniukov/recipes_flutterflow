import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('ff_apiResponse')) {
      try {
        _apiResponse = jsonDecode(prefs.getString('ff_apiResponse') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _searchParameter =
        prefs.getString('ff_searchParameter') ?? _searchParameter;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _apiResponse;
  dynamic get apiResponse => _apiResponse;
  set apiResponse(dynamic _value) {
    _apiResponse = _value;
    prefs.setString('ff_apiResponse', jsonEncode(_value));
  }

  String _searchParameter = '';
  String get searchParameter => _searchParameter;
  set searchParameter(String _value) {
    _searchParameter = _value;
    prefs.setString('ff_searchParameter', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
