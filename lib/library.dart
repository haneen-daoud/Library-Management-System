import 'package:book_task/book.dart';
class LibraryBook {
  List<Book> books = [];
  void addBook(Book book) {
    books.add(book);
    print('book:${book.title} added successfully');
  }

//function to remove book by isbn
  void removeBook(String isbn) {
    final findbookresult = findBook(isbn);
    if (findbookresult != null) {
      books.remove(findbookresult);
      print(
          'The book with ISBN $isbn has been successfully deleted from your library');
    } else {
      print(
          'Book Not Found :We couldn’t find the book you are trying to delete');
    }
  }

  Book? findBook(String isbn) {
    for (var book in books) {
      // ignore: unrelated_type_equality_checks
      if (book.isbn == isbn) {
        return book;
      }
    }
    return null;
  }

  void showList() {
    if (books.isEmpty) {
      print('no book in library');
    } else {
      for (var book in books) {
        book.printdetails(book);
      }
    }
  }

  void checkoutBook(String isbn) {
    final book = findBook(isbn);
    if (book != null && book.isAvailable) {
      print('Great news! The book you want to borrow is available');
      book.isAvailable = false;
    } else {
      print(
          'We’re sorry, but the book you want to borrow is currently not available');
    }
  }

  void returnBook(String isbn) {
    final book = findBook(isbn);
    if (book?.isAvailable == false) {
      book?.isAvailable = true;
      print(
          'Thank you for returning the book with $isbn ! Its availability status has been updated');
    } else {
      print(
          'It looks like the book you are trying to return is already in our library');
    }
  }
}
