
import 'package:cleanarchdummy/data/model/student_response_model.dart';

class StudentEntity{
  final bool? status;
  final String? name;
  final String? gender;
  final String? image;
  final List<StudentResponseModel>? data;
  const StudentEntity({ this.status,
    this.name,
    this.data,
    this.gender,
    this.image,
  });

}