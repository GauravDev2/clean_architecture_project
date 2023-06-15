

import 'package:cleanarchdummy/domain/enitity/student_entity.dart';

import '../../data/repository/student_repository.dart';

class StudentUsecase {
  StudentUsecase(this.studentRepo);
  StudentRepo studentRepo;

  Future<List<StudentEntity>> getstudentusecaseData()async{
    return studentRepo.getStudentdataRepo();
  }
}