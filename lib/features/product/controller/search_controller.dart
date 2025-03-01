import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shuvautsavapp/app/app_states/appstate.dart';
import 'package:shuvautsavapp/features/product/model/sub_child_categories_model.dart';
import 'package:shuvautsavapp/network/failure.dart';
import 'package:shuvautsavapp/network/network_client.dart';

final subfilterCategoryProvider = StateNotifierProvider.autoDispose<
    SubCategoryFilterNotifier,
    AppState<SubChildCategoriesResponse, NetworkFailure>>((ref) {
  return SubCategoryFilterNotifier();
});

final childfilterCategoryProvider = StateNotifierProvider.autoDispose<
    SubCategoryFilterNotifier,
    AppState<SubChildCategoriesResponse, NetworkFailure>>((ref) {
  return SubCategoryFilterNotifier();
});

class SubCategoryFilterNotifier extends StateNotifier<
    AppState<SubChildCategoriesResponse, NetworkFailure>> {
  SubCategoryFilterNotifier() : super(AppState.initial());

  Future<void> getSubCategory(String category) async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService().get(RequestApi(
          endPath: 'https://shuvautsav.com/api/v1/$category/sub-categories'));
      state = AppState.loading(false);

      if (response is Response) {
        final data = SubChildCategoriesResponse.fromJson(response.data);

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

  Future<void> getChildCategory(String slug) async {
    state = AppState.loading(true);
    try {
      final response = await NetworkService().get(RequestApi(
          endPath: 'https://shuvautsav.com/api/v1/$slug/child-categories'));
      state = AppState.loading(false);

      if (response is Response) {
        final data = SubChildCategoriesResponse.fromJson(response.data);

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
