import 'package:social_media_app/socail_media_app/domain/entities/response_entity.dart';

class ResponseModel extends ResponseEntity {
  const ResponseModel({
    required super.isSuccess,
    required super.message,
  });

  static const empty = ResponseModel(
    isSuccess: false,
    message: "",
  );

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      isSuccess: map['isSuccess'] ?? false,
      message: map["message"] ?? "",
    );
  }

  factory ResponseModel.fromEntity(ResponseEntity entity) {
    return ResponseModel(
      isSuccess: entity.isSuccess,
      message: entity.message,
    );
  }

  @override
  ResponseModel copyWith({
    bool? isSuccess,
    String? message,
  }) {
    return ResponseModel(
      isSuccess: isSuccess ?? this.isSuccess,
      message: message ?? this.message,
    );
  }

  ResponseEntity toEntity() {
    return ResponseEntity(
      isSuccess: isSuccess,
      message: message,
    );
  }

  @override
  List<Object?> get props => [isSuccess, message];
}
