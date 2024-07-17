import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Netflix"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("Movies")
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/12th-fail-et00363787-1698316138.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("Webseries")
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ4hMKV3CqK3GusuXEhupqTTmusBjDwg8UQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ4hMKV3CqK3GusuXEhupqTTmusBjDwg8UQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ4hMKV3CqK3GusuXEhupqTTmusBjDwg8UQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ4hMKV3CqK3GusuXEhupqTTmusBjDwg8UQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJ4hMKV3CqK3GusuXEhupqTTmusBjDwg8UQ&s"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("Popular")
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BZGZiMjU2ZjUtZjQzNi00NzlkLWFhNTQtOGVjNTJmN2ExY2E2XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                      child: Image.network("https://m.media-amazon.com/images/M/MV5BZGZiMjU2ZjUtZjQzNi00NzlkLWFhNTQtOGVjNTJmN2ExY2E2XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BZGZiMjU2ZjUtZjQzNi00NzlkLWFhNTQtOGVjNTJmN2ExY2E2XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BZGZiMjU2ZjUtZjQzNi00NzlkLWFhNTQtOGVjNTJmN2ExY2E2XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://m.media-amazon.com/images/M/MV5BZGZiMjU2ZjUtZjQzNi00NzlkLWFhNTQtOGVjNTJmN2ExY2E2XkEyXkFqcGdeQXVyNDI3NjU1NzQ@._V1_.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text("Action")
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_JsgH7Iez6PDzOgsHQ2Bkg-Fxs2UZZdkVQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_JsgH7Iez6PDzOgsHQ2Bkg-Fxs2UZZdkVQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_JsgH7Iez6PDzOgsHQ2Bkg-Fxs2UZZdkVQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_JsgH7Iez6PDzOgsHQ2Bkg-Fxs2UZZdkVQ&s"),
                      ),
                      Container(
                        height: 150,
                        width: 90,
                        padding: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy_JsgH7Iez6PDzOgsHQ2Bkg-Fxs2UZZdkVQ&s"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}