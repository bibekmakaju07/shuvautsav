// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'
    as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'app/storage/product_model.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 178116145946145308),
      name: 'ProductDetailsEntity',
      lastPropertyId: const obx_int.IdUid(20, 6761234443061168611),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(
            id: const obx_int.IdUid(1, 6227673733124928738),
            name: 'id',
            type: 6,
            flags: 129),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 4556222269764280270),
            name: 'title',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(3, 3935778492120884238),
            name: 'offer',
            type: 8,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(4, 7743134080054047429),
            name: 'description',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(5, 6737909884402416798),
            name: 'qty',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(6, 4320822751781435045),
            name: 'preferredDateStatus',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(7, 7716852438555997505),
            name: 'preferredMessageStatus',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(8, 2754411693253525880),
            name: 'brand',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(9, 3029232824756067890),
            name: 'categoryCount',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(10, 5949951601422899637),
            name: 'categories',
            type: 30,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(11, 4757911764719018788),
            name: 'videoUrl',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(12, 482499811683056774),
            name: 'shippingPolicy',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(13, 6560531564057275154),
            name: 'colorCheck',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(14, 7823056142102770415),
            name: 'limit',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(15, 7267134253566987881),
            name: 'productColorImage',
            type: 30,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(16, 2539598840133467740),
            name: 'image1',
            type: 9,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(17, 2391387301550237042),
            name: 'quantity',
            type: 6,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(18, 6026087938795675690),
            name: 'price',
            type: 8,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(19, 1673185212301538805),
            name: 'totalPrice',
            type: 8,
            flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(20, 6761234443061168611),
            name: 'weight',
            type: 8,
            flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(1, 178116145946145308),
      lastIndexId: const obx_int.IdUid(0, 0),
      lastRelationId: const obx_int.IdUid(0, 0),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    ProductDetailsEntity: obx_int.EntityDefinition<ProductDetailsEntity>(
        model: _entities[0],
        toOneRelations: (ProductDetailsEntity object) => [],
        toManyRelations: (ProductDetailsEntity object) => {},
        getId: (ProductDetailsEntity object) => object.id,
        setId: (ProductDetailsEntity object, int id) {
          object.id = id;
        },
        objectToFB: (ProductDetailsEntity object, fb.Builder fbb) {
          final titleOffset = fbb.writeString(object.title);
          final descriptionOffset = fbb.writeString(object.description);
          final brandOffset = fbb.writeString(object.brand);
          final categoriesOffset = fbb.writeList(
              object.categories.map(fbb.writeString).toList(growable: false));
          final videoUrlOffset = fbb.writeString(object.videoUrl);
          final shippingPolicyOffset = fbb.writeString(object.shippingPolicy);
          final colorCheckOffset = fbb.writeString(object.colorCheck);
          final productColorImageOffset = fbb.writeList(object.productColorImage
              .map(fbb.writeString)
              .toList(growable: false));
          final image1Offset = fbb.writeString(object.image1);
          fbb.startTable(21);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, titleOffset);
          fbb.addFloat64(2, object.offer);
          fbb.addOffset(3, descriptionOffset);
          fbb.addInt64(4, object.qty);
          fbb.addInt64(5, object.preferredDateStatus);
          fbb.addInt64(6, object.preferredMessageStatus);
          fbb.addOffset(7, brandOffset);
          fbb.addInt64(8, object.categoryCount);
          fbb.addOffset(9, categoriesOffset);
          fbb.addOffset(10, videoUrlOffset);
          fbb.addOffset(11, shippingPolicyOffset);
          fbb.addOffset(12, colorCheckOffset);
          fbb.addInt64(13, object.limit);
          fbb.addOffset(14, productColorImageOffset);
          fbb.addOffset(15, image1Offset);
          fbb.addInt64(16, object.quantity);
          fbb.addFloat64(17, object.price);
          fbb.addFloat64(18, object.totalPrice);
          fbb.addFloat64(19, object.weight);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final titleParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 6, '');
          final offerParam =
              const fb.Float64Reader().vTableGet(buffer, rootOffset, 8, 0);
          final priceParam =
              const fb.Float64Reader().vTableGet(buffer, rootOffset, 38, 0);
          final totalPriceParam =
              const fb.Float64Reader().vTableGet(buffer, rootOffset, 40, 0);
          final quantityParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 36, 0);
          final descriptionParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, '');
          final qtyParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0);
          final weightParam = const fb.Float64Reader()
              .vTableGetNullable(buffer, rootOffset, 42);
          final preferredDateStatusParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 14, 0);
          final preferredMessageStatusParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0);
          final brandParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 18, '');
          final categoryCountParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0);
          final categoriesParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 22, []);
          final videoUrlParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 24, '');
          final shippingPolicyParam =
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 26, '');
          final colorCheckParam = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 28, '');
          final limitParam =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 30, 0);
          final productColorImageParam = const fb.ListReader<String>(
                  fb.StringReader(asciiOptimization: true),
                  lazy: false)
              .vTableGet(buffer, rootOffset, 32, []);
          final image1Param = const fb.StringReader(asciiOptimization: true)
              .vTableGet(buffer, rootOffset, 34, '');
          final object = ProductDetailsEntity(
              id: idParam,
              title: titleParam,
              offer: offerParam,
              price: priceParam,
              totalPrice: totalPriceParam,
              quantity: quantityParam,
              description: descriptionParam,
              qty: qtyParam,
              weight: weightParam,
              preferredDateStatus: preferredDateStatusParam,
              preferredMessageStatus: preferredMessageStatusParam,
              brand: brandParam,
              categoryCount: categoryCountParam,
              categories: categoriesParam,
              videoUrl: videoUrlParam,
              shippingPolicy: shippingPolicyParam,
              colorCheck: colorCheckParam,
              limit: limitParam,
              productColorImage: productColorImageParam,
              image1: image1Param);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [ProductDetailsEntity] entity fields to define ObjectBox queries.
class ProductDetailsEntity_ {
  /// See [ProductDetailsEntity.id].
  static final id = obx.QueryIntegerProperty<ProductDetailsEntity>(
      _entities[0].properties[0]);

  /// See [ProductDetailsEntity.title].
  static final title =
      obx.QueryStringProperty<ProductDetailsEntity>(_entities[0].properties[1]);

  /// See [ProductDetailsEntity.offer].
  static final offer =
      obx.QueryDoubleProperty<ProductDetailsEntity>(_entities[0].properties[2]);

  /// See [ProductDetailsEntity.description].
  static final description =
      obx.QueryStringProperty<ProductDetailsEntity>(_entities[0].properties[3]);

  /// See [ProductDetailsEntity.qty].
  static final qty = obx.QueryIntegerProperty<ProductDetailsEntity>(
      _entities[0].properties[4]);

  /// See [ProductDetailsEntity.preferredDateStatus].
  static final preferredDateStatus =
      obx.QueryIntegerProperty<ProductDetailsEntity>(
          _entities[0].properties[5]);

  /// See [ProductDetailsEntity.preferredMessageStatus].
  static final preferredMessageStatus =
      obx.QueryIntegerProperty<ProductDetailsEntity>(
          _entities[0].properties[6]);

  /// See [ProductDetailsEntity.brand].
  static final brand =
      obx.QueryStringProperty<ProductDetailsEntity>(_entities[0].properties[7]);

  /// See [ProductDetailsEntity.categoryCount].
  static final categoryCount = obx.QueryIntegerProperty<ProductDetailsEntity>(
      _entities[0].properties[8]);

  /// See [ProductDetailsEntity.categories].
  static final categories = obx.QueryStringVectorProperty<ProductDetailsEntity>(
      _entities[0].properties[9]);

  /// See [ProductDetailsEntity.videoUrl].
  static final videoUrl = obx.QueryStringProperty<ProductDetailsEntity>(
      _entities[0].properties[10]);

  /// See [ProductDetailsEntity.shippingPolicy].
  static final shippingPolicy = obx.QueryStringProperty<ProductDetailsEntity>(
      _entities[0].properties[11]);

  /// See [ProductDetailsEntity.colorCheck].
  static final colorCheck = obx.QueryStringProperty<ProductDetailsEntity>(
      _entities[0].properties[12]);

  /// See [ProductDetailsEntity.limit].
  static final limit = obx.QueryIntegerProperty<ProductDetailsEntity>(
      _entities[0].properties[13]);

  /// See [ProductDetailsEntity.productColorImage].
  static final productColorImage =
      obx.QueryStringVectorProperty<ProductDetailsEntity>(
          _entities[0].properties[14]);

  /// See [ProductDetailsEntity.image1].
  static final image1 = obx.QueryStringProperty<ProductDetailsEntity>(
      _entities[0].properties[15]);

  /// See [ProductDetailsEntity.quantity].
  static final quantity = obx.QueryIntegerProperty<ProductDetailsEntity>(
      _entities[0].properties[16]);

  /// See [ProductDetailsEntity.price].
  static final price = obx.QueryDoubleProperty<ProductDetailsEntity>(
      _entities[0].properties[17]);

  /// See [ProductDetailsEntity.totalPrice].
  static final totalPrice = obx.QueryDoubleProperty<ProductDetailsEntity>(
      _entities[0].properties[18]);

  /// See [ProductDetailsEntity.weight].
  static final weight = obx.QueryDoubleProperty<ProductDetailsEntity>(
      _entities[0].properties[19]);
}