import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/useCases/fetch_newest_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());

    var result = await newestBooksUseCase.call();
    result.fold(
      (error) {
        emit(
          NewestBooksError(error.message),
        );
      },
      (books) {
        emit(
          NewestBooksSuccess(books),
        );
      },
    );
  }
}
