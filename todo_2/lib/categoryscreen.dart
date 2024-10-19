import 'package:todo_2/taskscreen.dart';
import 'package:flutter/material.dart';
import 'package:todo_2/category.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // created a categories collection on firestore
    final CollectionReference categoriesRef =
        FirebaseFirestore.instance.collection('categories');

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: StreamBuilder<QuerySnapshot>(
        stream: categoriesRef.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }


          // coverted firestore data(documetapshot data) ito our model class Category
          final List<Category> categories = snapshot.data!.docs
              .map((doc) => Category.fromSnapshot(doc))
              .toList();

          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return ListTile(
                title: Text(category.name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TaskList(categoryId: category.id,categoryName: category.name),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showBottomSheet(context, categoriesRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBottomSheet(
      BuildContext context, CollectionReference categoriesRef) {
    final TextEditingController _controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter category name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  String categoryName = _controller.text.trim();
                  if (categoryName.isNotEmpty) {
                    await categoriesRef.add({
                      'name': categoryName,
                      'timestamp': FieldValue
                          .serverTimestamp(), // Add the timestamp field
                    });

                    Navigator.pop(context);
                  }
                },
                child: const Text('Add Category'),
              ),
            ],
          ),
        );
      },
    );
  }
}