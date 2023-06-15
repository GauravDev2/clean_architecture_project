import '../model/student_response_model.dart';
import 'package:dio/dio.dart';

class StudentDao {
  Future<List<StudentResponseModel>> getStudentData() async {
    final dio = Dio();
    List<StudentResponseModel> studentResponseModelList = [];
    StudentResponseModel studentResponseModel = StudentResponseModel();
    try {
      Response response = await dio.get('https://hp-api.onrender.com/api/characters/students');
      if (response.statusCode == 200) {
        for (int i = 0; i < response.data.length; i++) {
          print('response.data ${response.data[i]['name']}');
          studentResponseModel =
              StudentResponseModel.fromJson(response.data[i]);
          studentResponseModelList.add(studentResponseModel);
        }
        studentResponseModel.isSuccessFull = true;
      } else {
        studentResponseModel.isSuccessFull = false;
      }
    } on DioError catch (e) {
      print('catch called');
      if (e.response == null) {
        studentResponseModel.isSuccessFull = false;
        studentResponseModel.errorMessage = 'No Internet';
      } else {
        studentResponseModel.isSuccessFull = false;
      }
    }
    return studentResponseModelList;
  }
}
