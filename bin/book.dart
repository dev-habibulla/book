class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book('1984', 'George Orwell', 1949, 100);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960, 50);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 30);
  Book book4 = Book('Sultana Dream', 'Rokeya Sakhawat Hossain', 1905, 20);

  book1.read(20);
  book2.read(10);
  book3.read(40);
  book4.read(15);

  print('Book 1: ${book1.getTitle()} by ${book1.getAuthor()}, published in ${book1.getPublicationYear()}, pages read: ${book1.getPagesRead()}, age: ${book1.getBookAge()} years');

  print('Book 2: ${book2.getTitle()} by ${book2.getAuthor()}, published in ${book2.getPublicationYear()}, pages read: ${book2.getPagesRead()}, age: ${book2.getBookAge()} years');

  print('Book 3: ${book3.getTitle()} by ${book3.getAuthor()}, published in ${book3.getPublicationYear()}, pages read: ${book3.getPagesRead()}, age: ${book3.getBookAge()} years');

  print('Book 4: ${book4.getTitle()} by ${book4.getAuthor()}, published in ${book4.getPublicationYear()}, pages read: ${book4.getPagesRead()}, age: ${book4.getBookAge()} years');

  print('Total number of books created: ${Book.totalBooks}');

}

