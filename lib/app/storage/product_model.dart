import 'package:objectbox/objectbox.dart';

@Entity()
class ProductDetailsEntity {
  @Id(assignable: true)
  int id; // Primary key
  int quantity;
  String title;
  double offer;
  double price;
  double totalPrice;
  String description;
  int qty;
  double? weight;
  int preferredDateStatus;
  int preferredMessageStatus;
  String brand;
  int categoryCount;
  List<String> categories; // Convert to List<String> if necessary
  String videoUrl;
  String shippingPolicy;
  String colorCheck;
  int limit;
  String currency;
  List<String> productColorImage; // Convert to List<String> if necessary
  String image1;

  ProductDetailsEntity({
    this.id = 0,
    this.title = '',
    this.offer = 0,
    this.price = 0,
    this.currency='',
    this.totalPrice = 0,
    this.quantity = 0,
    this.description = '',
    this.qty = 0,
    this.weight,
    this.preferredDateStatus = 0,
    this.preferredMessageStatus = 0,
    this.brand = '',
    this.categoryCount = 0,
    this.categories = const [],
    this.videoUrl = '',
    this.shippingPolicy = '',
    this.colorCheck = '',
    this.limit = 0,
    this.productColorImage = const [],
    this.image1 = '',
  });
}
