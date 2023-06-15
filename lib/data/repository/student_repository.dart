import 'package:cleanarchdummy/domain/enitity/student_entity.dart';

import '../../domain/repositry/student_imp.dart';
import '../data_source/student_dio.dart';
import '../model/student_response_model.dart';

class StudentRepo implements StudentImpelement{
  StudentDao studentDao = StudentDao();

  Future<List<StudentEntity>> getStudentdataRepo()async{
    List<StudentResponseModel> getStudentModel = await  studentDao.getStudentData();
 List<StudentEntity> studentList = [];
    getStudentModel.forEach((element) {
      studentList.add(element.toEntity());
    });
  return studentList;
  }

}