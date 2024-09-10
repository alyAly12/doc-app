
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsHelper{
  SharedPrefsHelper._();


  /// remove a value from shared preferences with given key
  static removeData(String key)async{
    debugPrint('Shared Pref helper : data with key:$key has been removed');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove(key);
  }

  /// remove all keys and values from shared preferences
  static clearAllData()async{
    debugPrint('Shared Pref helper : all data has been removed');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }

  ///   save a vale with a key in shared preferences
  static setData(String key ,String value)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint('Shared Pref helper : data with key:$key and value:$value has been saved');
    switch(value.runtimeType){
      case String :
        await sharedPreferences.setString(key, value);
        break;
      case int:
        await sharedPreferences.setInt(key, value as int);
        break;
      case double:
        await sharedPreferences.setDouble(key, value as double);
        break;
      case bool:
        await sharedPreferences.setBool(key, value as bool);
        break;
      default:
        return null;
    }
  }
  static getBool(String key)async{
    debugPrint('Shared Pref helper : get bool with key:$key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key)??false;
  }
  static getInt(String key)async{
    debugPrint('Shared Pref helper : get int with key:$key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(key)??0;
  }
  static getDouble(String key)async{
    debugPrint('Shared Pref helper : get double with key:$key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getDouble(key)??0.0;
  }
  static getString(String key)async{
    debugPrint('Shared Pref helper : get string with key:$key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key)??'';
  }
  /// set secure string
  static setSecureString(String key ,String value)async{
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('flutterSecureStorage : data with key:$key and value:$value has been saved');
    await flutterSecureStorage.write(key: key, value: value);
  }

  /// get secure string
  static Future<String?> getSecureString(String key)async{
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('flutterSecureStorage : get string with key:$key');
    return await flutterSecureStorage.read(key: key);
  }
  ///clear all secured data
  static clearAllSecureData()async{
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('flutterSecureStorage : all data has been removed');
    await flutterSecureStorage.deleteAll();
  }
}