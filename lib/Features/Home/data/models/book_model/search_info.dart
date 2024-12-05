import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromJson(Map<String, Object?> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, Object?> toJson() => {
        'textSnippet': textSnippet,
      };

  @override
  List<Object?> get props => [textSnippet];
}
