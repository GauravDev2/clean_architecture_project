

import '../enitity/student_entity.dart';

abstract class StudentImpelement{
  Future<List<StudentEntity>> getStudentdataRepo();
}