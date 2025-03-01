import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_data_model.freezed.dart';
part 'transaction_data_model.g.dart';

@freezed
class TransactionDataModel with _$TransactionDataModel {
  const factory TransactionDataModel({
    @Default(Data()) Data data,
    @Default('') String token,
  }) = _TransactionDataModel;

  factory TransactionDataModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default(-1) int MERCHANTID,
    @Default('') String APPID,
    @Default('') String APPNAME,
    @Default(-1) int TXNID,
    @Default('') String TXNDATE,
    @Default('') String TXNCRNCY,
    @Default(0) int TXNAMT,
    @Default(0) int REFERENCEID,
    @Default('') String REMARKS,
    @Default('') String PARTICULARS,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
