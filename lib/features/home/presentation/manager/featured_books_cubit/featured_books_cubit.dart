import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/useCases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber =0}) async {
    emit(FeaturedBooksLoading());

    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold(
      (error) {
        emit(
          FeaturedBooksError(error.message),
        );
      },
      (books) {
        emit(
          FeaturedBooksSuccess(books),
        );
      },
    );
  }
}
