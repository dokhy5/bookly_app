import 'package:bloc/bloc.dart';
import 'package:task1/detales_page/data/models/ProductModel.dart';
import 'package:task1/detales_page/data/repos/ProductRepo.dart';
import 'package:equatable/equatable.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo repo;
  ProductCubit(this.repo) : super(ProductInitial());

  /// جلب كل المنتجات
  Future<void> fetchAllProducts() async {
    emit(ProductLoading());
    final result = await repo.fetchAllProducts();
    result.fold(
      (failure) => emit(ProductFailure(failure.errMessage)),
      (products) => emit(ProductSuccess(products)),
    );
  }

  /// جلب تفاصيل منتج معين
  Future<void> fetchProductDetails(int id) async {
    emit(ProductLoading());
    final result = await repo.fetchProductDetails(id: id);
    result.fold(
      (failure) => emit(ProductFailure(failure.errMessage)),
      (product) => emit(ProductDetailsSuccess(product)),
    );
  }

  /// جلب المنتجات حسب الفئة
  Future<void> fetchProductsByCategory(String category) async {
    emit(ProductLoading());
    final result = await repo.fetchProductsByCategory(category: category);
    result.fold(
      (failure) => emit(ProductFailure(failure.errMessage)),
      (products) => emit(ProductSuccess(products)),
    );
  }
}
