class Book {
  String title;
  String auther;
  String isbn;
  bool isAvailable;

  Book({ required this.title,required this.auther,required this.isbn,required this.isAvailable, });

void printdetails(Book book){
  print ('title : $title , auther: $auther , isbn :$isbn ,isAvailable:$isAvailable');
  
}
}
