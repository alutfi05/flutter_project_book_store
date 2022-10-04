import 'package:flutter_project_book_store/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider.freezed.dart';
part 'slider.g.dart';

List<SliderModel> sliderFromJson(dynamic str) =>
    List<SliderModel>.from((str).map((x) => SliderModel.fromJson(x)));

@freezed
abstract class SliderModel with _$SliderModel {
  factory SliderModel({
    required String sliderName,
    required String sliderImage,
    required String sliderId,
  }) = _Slider;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}

extension SliderModelExt on SliderModel {
  String get fullImagePath => Config.imageURL + sliderImage;
}
