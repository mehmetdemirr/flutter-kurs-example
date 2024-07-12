import 'package:json_annotation/json_annotation.dart';

part "post_model.g.dart";

@JsonSerializable()
class PostModel {
  @JsonKey(name: "userId")
  final int userId;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "body")
  final String body;

  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
