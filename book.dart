class Book {
  // Static property to track total number of books created
  static int totalBooks = 0;

  // Instance properties
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear) {
    totalBooks++;  // Increment the totalBooks when a new Book object is created
  }

  // Method to add pages read
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter for pagesRead
  int getPagesRead() {
    return pagesRead;
  }

  // Getter for title
  String getTitle() {
    return title;
  }

  // Getter for author
  String getAuthor() {
    return author;
  }

  // Getter for publicationYear
  int getPublicationYear() {
    return publicationYear;
  }

  // Method to calculate book age
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  // Create 3 Book objects
  Book book1 = Book('1984', 'George Orwell', 1949);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

  // Simulate reading pages for each book
  book1.read(100);
  book2.read(50);
  book3.read(75);

  // Print details for each book
  List<Book> books = [book1, book2, book3];
  for (var book in books) {
    print('Title: ${book.getTitle()}');
    print('Author: ${book.getAuthor()}');
    print('Publication Year: ${book.getPublicationYear()}');
    print('Pages Read: ${book.getPagesRead()}');
    print('Book Age: ${book.getBookAge()} years\n');
  }

  // Print total number of books created
  print('Total number of books created: ${Book.totalBooks}');
}
