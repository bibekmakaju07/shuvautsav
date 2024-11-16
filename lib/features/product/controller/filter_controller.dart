import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/category/model/category_model.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final filterCategoryProvider = StateNotifierProvider.autoDispose<
    ProductFilterNotifier, AppState<List<Category>, NetworkFailure>>((ref) {
  return ProductFilterNotifier();
});

class ProductFilterNotifier
    extends StateNotifier<AppState<List<Category>, NetworkFailure>> {
  ProductFilterNotifier() : super(AppState.initial());

  Future<void> getCategory() async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService()
          .get(RequestApi(endPath: 'https://shuvautsav.com/api/v1/category'));
      state = AppState.loading(false);

      final data = CategoryResponse.fromJson(response.data);
      if (data.data.categories.isNotEmpty) {
        state = AppState.success(data.data.categories);
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }
}

final filterSubCategoryProvider = StateNotifierProvider.autoDispose.family<
    ProductCategoryFilterNotifier,
    AppState<CategoryProductResponse, NetworkFailure>,
    String>((ref, id) {
  return ProductCategoryFilterNotifier();
});

class ProductCategoryFilterNotifier
    extends StateNotifier<AppState<CategoryProductResponse, NetworkFailure>> {
  ProductCategoryFilterNotifier() : super(AppState.initial());

  Future<void> getSubCategory(String category) async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService().get(RequestApi(
          endPath:
              'https://shuvautsav.com/api/v1/category/$category/products?per_page=1'));
      state = AppState.loading(false);

      if (response is Response) {
        final data = CategoryProductResponse.fromJson(response.data);

        state = AppState.success(data);
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }

  Future<void> getChildCategory(String subcategory, {String ?url}) async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService().get(RequestApi(
          endPath:
             url?? 'https://shuvautsav.com/api/v1/subcategory/$subcategory/products?per_page=2'));
      state = AppState.loading(false);

      if (response is Response) {
        final data = CategoryProductResponse.fromJson(response.data);

        state = AppState.success(data);
      } else {
        state = AppState.error(
            const NetworkFailure(statusCode: -1, message: 'Error'));
      }
    } catch (e) {
      state = AppState.loading(false);
      state = AppState.error(
          const NetworkFailure(statusCode: -1, message: 'Error'));
    }
  }
}
