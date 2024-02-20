part of 'product_bloc.dart';

class ProductState {
  final FormzSubmissionStatus status;
  final List<ProductModel> products;
  final Failure? failure;
  final int count;

  const ProductState({
    this.status = FormzSubmissionStatus.initial,
    this.products = const [],
    this.failure,
    this.count = 1,
  });

  ProductState copyWith({
    FormzSubmissionStatus? status,
    List<ProductModel>? products,
    Failure? failure,
    int? count,
  }) {
    return ProductState(
      status: status ?? this.status,
      products: products ?? this.products,
      failure: failure ?? this.failure,
      count: count ?? this.count,
    );
  }
}
