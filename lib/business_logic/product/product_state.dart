part of 'product_bloc.dart';

class ProductState {
  final FormzSubmissionStatus status;
  final List<ProductModel> products;
  final Failure? failure;

  const ProductState({
    this.status = FormzSubmissionStatus.initial,
    this.products = const [],
    this.failure,
  });

  ProductState copyWith({
    FormzSubmissionStatus? status,
    List<ProductModel>? products,
    Failure? failure,
  }) {
    return ProductState(
      status: status ?? this.status,
      products: products ?? this.products,
      failure: failure ?? this.failure,
    );
  }
}
