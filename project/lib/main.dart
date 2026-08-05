import 'dart:io';

class Book {
  String Title;
  String Author;
  int PageCount;
  bool _BorrowingStatus;

  Book(this.Title, this.Author, this.PageCount, this._BorrowingStatus);

  void borrowBook() {
    if (this._BorrowingStatus) {
      this._BorrowingStatus = false;
      print("You borrowed $Title");
    } else {
      print("Unavailable for borrowing :( ");
    }
  }

  void returnBook() {
    this._BorrowingStatus = true;
  }

  void displayDetailes() {
    print(
      "Title: $Title \nAuthor: $Author \nPageCount: $PageCount \nAvailability status: $_BorrowingStatus",
    );
  }
}

class EBook extends Book {
  double fileSizeMB;

  EBook(
    String Title,
    String Author,
    int PageCount,
    bool BorrowingStatus,
    this.fileSizeMB,
  ) : super(Title, Author, PageCount, BorrowingStatus);

  @override
  void displayDetailes() {
    super.displayDetailes();
    print("Size: $fileSizeMB");
  }
}

class PrintedBook extends Book {
  double weightInGrams;

  PrintedBook(
    String Title,
    String Author,
    int PageCount,
    bool BorrowingStatus,
    this.weightInGrams,
  ) : super(Title, Author, PageCount, BorrowingStatus);

  @override
  void displayDetailes() {
    super.displayDetailes();
    print("Size: $weightInGrams");
  }
}

List<Book> books = [];
void main() {
  int choice;
  do {
    print(
      "1.Add a new book to the library. \n2.Remove a book from the library.\n3.Borrow a book if available \n4.Return a book if borrowed \n5.Display all book titles.\n6.Exit the program.",
    );
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addNewBook();
        break;

      case 2:
        removeBook();
        break;

      case 3:
        borrowABook();
        break;

      case 4:
        returnBook();
        break;
      case 5:
        displayTitles();
        break;
    }
  } while (choice != 6);
}

void addNewBook() {
  print("\n1.Ebook or 2.Printed Book\n");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("\nEnter book title:");
      String Title = stdin.readLineSync()!;
      print("\nEnter book author:");
      String Author = stdin.readLineSync()!;
      print("\nEnter Page count:");
      int PageCount = int.parse(stdin.readLineSync()!);
      bool Status = true;
      print("\nEnter File size in MB:\n");
      double FileSize = double.parse(stdin.readLineSync()!);

      EBook addition = EBook(Title, Author, PageCount, Status, FileSize);
      books.add(addition);
      break;

    case 2:
      print("\nEnter book title:");
      String Title = stdin.readLineSync()!;
      print("\nEnter book author:");
      String Author = stdin.readLineSync()!;
      print("\nEnter Page count:");
      int PageCount = int.parse(stdin.readLineSync()!);
      bool Status = true;
      print("\nEnter weight:\n");
      double weight = double.parse(stdin.readLineSync()!);

      PrintedBook addition = PrintedBook(
        Title,
        Author,
        PageCount,
        Status,
        weight,
      );
      books.add(addition);
      break;
  }
  print("\nBook added succesfuly");
}

void removeBook() {
  print("\nEnter book title you want to remove:");
  String Title = stdin.readLineSync()!;

  for (int i = 0; i < books.length; i++) {
    if (books[i].Title == Title) {
      books.removeAt(i);
      print("Book removed successfully : )");
      return;
    }
  }
  print("Book not found.");
}

void borrowABook() {
  print("\nEnter name of book you want to borrow:");
  String Title = stdin.readLineSync()!;

  for (Book book in books) {
    if (book.Title == Title) {
      book.borrowBook();
      return;
    }
  }
  print("Book not in library!");
}

void returnBook() {
  print("\nEnter book title you want to return:");
  String Title = stdin.readLineSync()!;

  for (Book book in books) {
    if (book.Title == Title) {
      if (book._BorrowingStatus) {
        print('Book was not borrowed');
        break;
      } else {
        book.returnBook();
        print("Book returned successfully : )");
        break;
      }
    } else {
      print("Book not in library!");
      break;
    }
  }
}

void displayTitles() {
  for (Book book in books) {
    print(book.Title);
    print('\n');
  }
}
