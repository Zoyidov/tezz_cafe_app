part of 'category_bloc.dart';

class CategoryState {
  final List<CategoryModel> categories;
  final FormzSubmissionStatus status;
  final Failure? failure;

  const CategoryState({
    this.categories = const [],
    this.status = FormzSubmissionStatus.initial,
    this.failure,
  });

  CategoryState copyWith({
    List<CategoryModel>? categories,
    FormzSubmissionStatus? status,
    Failure? failure,
  }) {
    return CategoryState(
      categories: categories ?? this.categories,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}
