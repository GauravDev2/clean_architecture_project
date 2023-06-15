

import 'package:cleanarchdummy/domain/enitity/student_entity.dart';
import 'package:cleanarchdummy/domain/usecase/student_usecase.dart';

import '../../data/model/student_response_model.dart';
import '../../data/repository/student_repository.dart';
import 'package:rxdart/rxdart.dart';

class StudentBloc{

  final studentBS = BehaviorSubject<List<StudentEntity>>();
  get valueStream  => studentBS.stream;


  Future getStudentData() async{
    StudentRepo studentRepo = StudentRepo();
    StudentUsecase studentUsecase = StudentUsecase(studentRepo);
    List<StudentEntity> studentResponseModel  = await
    studentUsecase.getstudentusecaseData();
    if(studentResponseModel != null){
      studentBS.sink.add(studentResponseModel);
    }
  }
}