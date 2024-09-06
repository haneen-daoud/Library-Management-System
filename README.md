

# ***Library Management System in Dart***

## ***Project Description***

This is a simple command-line based **Library Management System** built using the **Dart** programming language. The system allows users to manage a collection of books by performing operations such as adding, removing, searching for books, and checking out or returning them.

## ***Features***

- Add new books to the library.
- Remove books from the library using their ISBN.
- Search for a book by its ISBN.
- List all available books in the library.
- Borrow (checkout) a book and mark it as unavailable.
- Return a borrowed book and mark it as available.
- Error handling for invalid operations such as attempting to remove or borrow a book that doesn't exist.

## ***Getting Started***


### ***Project Structure***

```bash
lib/
│
├── book.dart         # Book class definition
├── library.dart      # Library class definition
├── main.dart         # Main entry point of the application
.gitignore            # Gitignore file to exclude unnecessary files
README.md             # Project documentation
pubspec.yaml          # Dart project configuration
```

### ***How to Run***

1. Clone the repository:

   ```bash
   git clone https://github.com/haneen-daoud/Library-Management-System.git
   ```

2. Navigate to the project directory:

   ```bash
   cd library-management-dart
   ```

3. Run the program using Dart:

   ```bash
   dart run lib/main.dart
   ```

### ***Example Usage***

1. The program will prompt you to choose an option:

```
Library Management System:
1. Add a new book
2. Remove a book by ISBN
3. Search for a book by ISBN
4. List all books
5. Checkout a book
6. Return a book
7. Exit
Enter your choice:
```

2. Follow the prompts to perform any action like adding, removing, searching, or listing books.

### ***Error Handling***

- The system will display appropriate messages if you attempt to:
  - Remove a book that doesn't exist.
  - Checkout a book that is already borrowed.
  - Return a book that is not borrowed.

## ***Built With***

- **Dart** - A programming language designed for client development, such as for the web and mobile apps.
