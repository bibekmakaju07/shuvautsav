// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

part 'product_controller.freezed.dart';

enum CategoriesType { catSlug, childCatSlug, subCatSlug, product }

final productProvider = StateNotifierProvider.autoDispose.family<
    ProductController,
    AppState<CategoryProductResponse, NetworkFailure>,
    String>((ref, id) {
  return ProductController();
});

class ProductController
    extends StateNotifier<AppState<CategoryProductResponse, NetworkFailure>> {
  ProductController() : super(AppState.initial());

  CategoryProductResponse? savedResponse;

  Future<void> getProduct(
      {CategoriesType type = CategoriesType.product, String? slug}) async {
    if (state == AppState.loading(true)) {
      return;
    }
    state = AppState.loading(true);
    try {
      String url = 'https://shuvautsav.com/api/v1/products';
      if (type == CategoriesType.childCatSlug) {
        url =
            'https://shuvautsav.com/api/v1/childcategory/$slug/products?per_page=10';
      } else if (type == CategoriesType.subCatSlug) {
        url =
            'https://shuvautsav.com/api/v1/subcategory/$slug/products?per_page=10';
      } else if (type == CategoriesType.catSlug) {
        url =
            'https://shuvautsav.com/api/v1/category/$slug/products?per_page=10';
      }
      final response = await NetworkService().get(RequestApi(endPath: url));
      state = AppState.loading(false);

      if (response is Response) {
        final currentResponse = CategoryProductResponse.fromJson(response.data);
        if (savedResponse != null) {
          savedResponse = savedResponse!.copyWith(
              data: savedResponse!.data.copyWith(products: [
            ...savedResponse!.data.products,
            ...currentResponse.data.products
          ]));
        } else {
          savedResponse = currentResponse;
        }

        state = AppState.success(savedResponse!);
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

final productPaginationProvider = StateNotifierProvider.family<
    ProductPaginatedController, PaginationState, String>((ref, id) {
  return ProductPaginatedController();
});

class ProductPaginatedController extends StateNotifier<PaginationState> {
  ProductPaginatedController() : super(PaginationState());
  int page = 0;

  Future<void> getProduct(
      {CategoriesType type = CategoriesType.product, String? slug}) async {
    if (state.isLoading&&state.isPageEnd) {
      return;
    }
    state = state.copyWith(isLoading: true);
    CategoryProductResponse? savedResponse = state.productResponse;
    ++page;
    try {
      String url = 'https://shuvautsav.com/api/v1/products';
      if (type == CategoriesType.childCatSlug) {
        url =
            'https://shuvautsav.com/api/v1/childcategory/$slug/products?per_page=10&page=$page';
      } else if (type == CategoriesType.subCatSlug) {
        url =
            'https://shuvautsav.com/api/v1/subcategory/$slug/products?per_page=10&page=$page';
      } else if (type == CategoriesType.catSlug) {
        url =
            'https://shuvautsav.com/api/v1/category/$slug/products?per_page=10&page=$page';
      }
      final response = await NetworkService().get(RequestApi(endPath: url));

      if (response is Response) {
        final currentResponse = CategoryProductResponse.fromJson(response.data);
        if (savedResponse != null) {
          savedResponse = savedResponse.copyWith(
              data: savedResponse.data.copyWith(products: [
            ...savedResponse.data.products,
            ...currentResponse.data.products
          ]));
        } else {
          savedResponse = currentResponse;
        }

        state = state.copyWith(
            productResponse: savedResponse,
            isLoading: false,
            error: null,
            isPageEnd: currentResponse.data.products.length < 10);
      } else {
        state = state.copyWith(
          productResponse: savedResponse,
          isLoading: false,
          isPageEnd: false,
          error: NetworkFailure(
            statusCode: -1,
            message: 'Failure to launch app',
          ),
        );
      }
    } catch (e) {
      state = state.copyWith(
        productResponse: savedResponse,
        isLoading: false,
        error: NetworkFailure(
          statusCode: -1,
          message: 'Failure to launch app',
        ),
      );
    }
  }
}

@freezed
class PaginationState with _$PaginationState {
  const factory PaginationState({
    @Default(false) bool isLoading,
    CategoryProductResponse? productResponse,
    NetworkFailure? error,
    @Default(false) bool isPageEnd,
  }) = _PaginationState;
}
