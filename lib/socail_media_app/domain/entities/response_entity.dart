// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ResponseEntity extends Equatable {
  final bool isSuccess;
  final String message;

  const ResponseEntity({
    required this.isSuccess,
    required this.message,
  });

  static const empty = ResponseEntity(
    isSuccess: false,
    message: "",
  );

  ResponseEntity copyWith({
    bool? isSuccess,
    String? message,
  }) {
    return ResponseEntity(
      isSuccess: isSuccess ?? this.isSuccess,
      message: message ?? this.message,
    );
  }

  Map<String, Object?> toMap() {
    return {
      'isSuccess': isSuccess,
      'message': message,
    };
  }

  static ResponseEntity fromMap(Map<String, dynamic> map) {
    return ResponseEntity(
      isSuccess: map['isSuccess'] ?? false,
      message: map["message"] ?? "",
    );
  }

  @override
  List<Object?> get props => [isSuccess, message];
}
