part of 'product_bloc.dart';

abstract class ProductEvent {}

class FetchProductsEvent extends ProductEvent {
  final String categoryId;

  FetchProductsEvent({required this.categoryId});
}