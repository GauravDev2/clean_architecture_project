
import 'package:cleanarchdummy/data/model/model_wrapper.dart';
import 'package:cleanarchdummy/domain/enitity/student_entity.dart';

class StudentResponseModel extends ModelWrapper{
  String? id;
  String? name;
  List<String>? alternateNames;
  String? species;
  String? gender;
  String? house;
  String? dateOfBirth;
  var yearOfBirth;
  bool? wizard;
  String? ancestry;
  String? eyeColour;
  String? hairColour;
  Wand? wand;
  String? patronus;
  bool? hogwartsStudent;
  bool? hogwartsStaff;
  String? actor;
  bool? alive;
  String? image;

  StudentResponseModel(
      {this.id,
        this.name,
        this.alternateNames,
        this.species,
        this.gender,
        this.house,
        this.dateOfBirth,
        this.yearOfBirth,
        this.wizard,
        this.ancestry,
        this.eyeColour,
        this.hairColour,
        this.wand,
        this.patronus,
        this.hogwartsStudent,
        this.hogwartsStaff,
        this.actor,
        this.alive,
        this.image});

  StudentResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternateNames = json['alternate_names'].cast<String>();
    species = json['species'];
    gender = json['gender'];
    house = json['house'];
    dateOfBirth = json['dateOfBirth'];
    yearOfBirth = json['yearOfBirth'];
    wizard = json['wizard'];
    ancestry = json['ancestry'];
    eyeColour = json['eyeColour'];
    hairColour = json['hairColour'];
    wand = json['wand'] != null ? new Wand.fromJson(json['wand']) : null;
    patronus = json['patronus'];
    hogwartsStudent = json['hogwartsStudent'];
    hogwartsStaff = json['hogwartsStaff'];
    actor = json['actor'];
    alive = json['alive'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternate_names'] = this.alternateNames;
    data['species'] = this.species;
    data['gender'] = this.gender;
    data['house'] = this.house;
    data['dateOfBirth'] = this.dateOfBirth;
    data['yearOfBirth'] = this.yearOfBirth;
    data['wizard'] = this.wizard;
    data['ancestry'] = this.ancestry;
    data['eyeColour'] = this.eyeColour;
    data['hairColour'] = this.hairColour;
    if (this.wand != null) {
      data['wand'] = this.wand!.toJson();
    }
    data['patronus'] = this.patronus;
    data['hogwartsStudent'] = this.hogwartsStudent;
    data['hogwartsStaff'] = this.hogwartsStaff;
    data['actor'] = this.actor;
    data['alive'] = this.alive;
    data['image'] = this.image;
    return data;
  }

  StudentEntity toEntity() => StudentEntity(
    name: name,
    status: alive,
    gender: gender,
    image: image,
    data: data != null ? data!.map((x) => x.toEntity()).toList() : null,
      );


}

class Wand {
  String? wood;
  String? core;
  var length;

  Wand({this.wood, this.core, this.length});

  Wand.fromJson(Map<String, dynamic> json) {
    wood = json['wood'];
    core = json['core'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wood'] = this.wood;
    data['core'] = this.core;
    data['length'] = this.length;
    return data;
  }
}