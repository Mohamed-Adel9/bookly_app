part of 'newest_books_cubit.dart';


abstract class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books ;

  NewestBooksSuccess(this.books);
}
final class NewestBooksError extends NewestBooksState {
  final String error ;

  NewestBooksError(this.error);
}
