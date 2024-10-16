import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books Being Read'),
      ),
      body: Column(
        children: [
          Text('Books Being Read', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          BookItem(title: 'Book 1', currentPage: 123, totalPages: 300),
          BookItem(title: 'Book 2', currentPage: 45, totalPages: 150),
          BookItem(title: 'Book 3', currentPage: 78, totalPages: 200),
          BookItem(title: 'Book 4', currentPage: 200, totalPages: 400),
          BookItem(title: 'Book 5', currentPage: 150, totalPages: 250),
          SizedBox(height: 20),
          Text('Books Pending to be Read', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          PendingBookItem(title: 'Book 6'),
          PendingBookItem(title: 'Book 7'),
          PendingBookItem(title: 'Book 8'),
        ],
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String title;
  final int currentPage;
  final int totalPages;

  BookItem({required this.title, required this.currentPage, required this.totalPages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text('Page $currentPage of $totalPages'),
    );
  }
}

class PendingBookItem extends StatelessWidget {
  final String title;

  PendingBookItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text('Pending to be read'),
    );
  }
}