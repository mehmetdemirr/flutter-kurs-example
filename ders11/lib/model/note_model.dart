// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive_flutter/hive_flutter.dart';

part "note_model.g.dart";

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String title;
  @HiveField(2)
  String description; //bu notun açıklaması
  @HiveField(3)
  bool status; // bu notun tamamlandı mı , tamamlanmadı mı değeridir!
  @HiveField(4)
  DateTime createAtDatetime;

  NoteModel({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.createAtDatetime,
  });
}
