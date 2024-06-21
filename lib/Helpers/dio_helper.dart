import 'package:dio/dio.dart';
import '../api_const/end_points.dart';

class DioHelper {
  static late Dio dio;
  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl:EndPoints.baseUrl ,
      ),
    );
  }
}