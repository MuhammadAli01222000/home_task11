import 'package:home_task11/model/models.dart';
import 'package:home_task11/services/data_source.dart';

class AppController{
  AppController._();
  static final _instance=AppController._();
  factory AppController()=>_instance;
  Future<List<ModelProduct>> readData()async{
    final data =await DataSource.readJson();
    return data.map((item)=>ModelProduct.fromJson(item)).toList();
  }
}