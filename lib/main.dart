import 'package:book_task/library.dart';
import 'package:book_task/book.dart';
import 'dart:io';

void main() {
  /*comment :when i trying
  Book book = Book(title: 'ameer al thel', auther: 'abdallah', isbn: '1', isAvailable: true);
  book.printdetails(book);
  LibraryBook library =LibraryBook();
  library.addBook(Book(title: 'robn', auther: 'haneen', isbn: '2', isAvailable: true));
  library.addBook(Book(title: 'hamas', auther: 'qasam', isbn: '3', isAvailable: false));
  library.showList();
  library.checkoutBook('3');
  library.checkoutBook('1');
  library.returnBook('3');
  library.showList();
   */
  LibraryBook library = LibraryBook();

  bool exit = true;
  while (exit) {
    print('1. Add a book');
    print('2. Remove a book');
    print('3. Search for a book');
    print('4. List all books');
    print('5. Checkout a book');
    print('6. Return a book');
    print('7. Exit');
    stdout.write('Enter your choice: ');

    String? choice = stdin.readLineSync();
    if (choice == '1') {
      stdout.write('Enter the title: ');
      String? title = stdin.readLineSync();

      stdout.write('Enter the author: ');
      String? author = stdin.readLineSync();

      stdout.write('Enter the ISBN: ');
      String? isbn = stdin.readLineSync();

      if (title != null && author != null && isbn != null) {
        library.addBook(
            Book(title: title, auther: author, isbn: isbn, isAvailable: true));
      } else {
        print('Invalid input. Please try again.');
      }
    } else if (choice == '2') {
      stdout.write('Enter the isbn for book : ');
      String? isbn = stdin.readLineSync();
      library.removeBook(isbn!);
    } else if (choice == '3') {
      stdout.write('Enter the isbn for book : ');
      String? isbn = stdin.readLineSync();
      var book = library.findBook(isbn!);
      if (book != null) {
        book.printdetails(book);
        
      } else {
        print('Book not found.');
      }
    } else if (choice == '4') {
      library.showList();

    } else if (choice == '5') {
      stdout.write('Enter the ISBN of the book to checkout: ');
      String? isbn = stdin.readLineSync();
      library.checkoutBook(isbn!);

    } else if (choice == '6') {
      stdout.write('Enter the ISBN of the book to return: ');
      String? isbn = stdin.readLineSync();
      library.returnBook(isbn!);

    } else if (choice == '7') {
      stdout.write('Would you like to confirm that you want to exit? Y/N ');
      String? yORn = stdin.readLineSync();
      if (yORn == 'Y') {
        exit = false;
      }
      print('Exiting the system');
    } else {
      print('Invalid choice. Please try again.');
    }
  }
}
