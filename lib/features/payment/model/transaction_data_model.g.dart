// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataModelImpl _$$TransactionDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataModelImpl(
      data: json['data'] == null
          ? const Data()
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$TransactionDataModelImplToJson(
        _$TransactionDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'token': instance.token,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      MERCHANTID: (json['MERCHANTID'] as num?)?.toInt() ?? -1,
      APPID: json['APPID'] as String? ?? '',
      APPNAME: json['APPNAME'] as String? ?? '',
      TXNID: (json['TXNID'] as num?)?.toInt() ?? -1,
      TXNDATE: json['TXNDATE'] as String? ?? '',
      TXNCRNCY: json['TXNCRNCY'] as String? ?? '',
      TXNAMT: (json['TXNAMT'] as num?)?.toInt() ?? 0,
      REFERENCEID: (json['REFERENCEID'] as num?)?.toInt() ?? 0,
      REMARKS: json['REMARKS'] as String? ?? '',
      PARTICULARS: json['PARTICULARS'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'MERCHANTID': instance.MERCHANTID,
      'APPID': instance.APPID,
      'APPNAME': instance.APPNAME,
      'TXNID': instance.TXNID,
      'TXNDATE': instance.TXNDATE,
      'TXNCRNCY': instance.TXNCRNCY,
      'TXNAMT': instance.TXNAMT,
      'REFERENCEID': instance.REFERENCEID,
      'REMARKS': instance.REMARKS,
      'PARTICULARS': instance.PARTICULARS,
    };
