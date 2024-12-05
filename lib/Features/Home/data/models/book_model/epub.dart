import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromJson(Map<String, Object?> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
      );

  Map<String, Object?> toJson() => {
        'isAvailable': isAvailable,
      };

  @override
  List<Object?> get props => [isAvailable];
}
