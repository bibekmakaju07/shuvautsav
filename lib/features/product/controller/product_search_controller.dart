import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/features/product/controller/product_controller.dart';
import 'package:shuvautsavapp/features/product/model/category_product_model.dart';
import 'package:shuvautsavapp/features/product/model/search_filter_data_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final productSearchProvider =
    StateNotifierProvider.autoDispose<ProductSearchController, PaginationState>(
        (ref) {
  return ProductSearchController();
});

class ProductSearchController extends StateNotifier<PaginationState> {
  ProductSearchController() : super(PaginationState());
  int page = 0;
  FilteredDataModel? savedfilterData;
  Future<void> searchProduct(FilteredDataModel fillterData) async {
    CategoryProductResponse? savedResponse = state.productResponse;
    if (savedfilterData != fillterData) {
      page = 0;
      savedResponse = null;
      state = state.copyWith(
        isLoading: true,
        productResponse: null,
      );
    } else if (state.isLoading || state.isPageEnd) {
      return;
    }
    savedfilterData = fillterData;
    ++page;
    try {
      String url = 'https://shuvautsav.com/api/v1/search/product';

      final response = await NetworkService().get(
        RequestApi(
          endPath: url,
          queryParams: {
            ...fillterData.toJson(),
            "page": page,
            "per_page": '10',
          },
        ),
      );

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
          productResponse: CategoryProductResponse(),
          isLoading: false,
          isPageEnd: false,
          error: NetworkFailure(
            statusCode: -1,
            message: 'Something went wrong',
          ),
        );
      }
    } catch (e) {
      state = state.copyWith(
        productResponse: CategoryProductResponse(),
        isLoading: false,
        error: NetworkFailure(
          statusCode: -1,
          message: 'Something went wrong',
        ),
      );
    }
  }
}
