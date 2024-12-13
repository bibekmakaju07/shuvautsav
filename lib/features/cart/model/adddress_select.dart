import 'package:freezed_annotation/freezed_annotation.dart';

part 'adddress_select.freezed.dart';
part 'adddress_select.g.dart';

@freezed
class CPDM with _$CPDM {
  factory CPDM({
    @Default('') String countryId,
     @Default('') String provinceId,
     @Default('') String areasId,
     @Default('') String cityId,
  }) = _CPDM;

  factory CPDM.fromJson(Map<String, dynamic> json) => _$CPDMFromJson(json);
}
