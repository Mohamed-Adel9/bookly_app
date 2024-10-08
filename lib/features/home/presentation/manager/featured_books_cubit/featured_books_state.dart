part of 'featured_books_cubit.dart';


abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books ;

  FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksError extends FeaturedBooksState {
  final String error ;

  FeaturedBooksError(this.error);
}
