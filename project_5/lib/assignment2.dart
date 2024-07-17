import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Cointainer"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 234, 188, 202),
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 300,
                  width: 400,
                  //color: Colors.white,
                  child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                  fit:BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                  "James Gosling OC (born 19 May 1955) is a Canadian computer scientist, best known as the founder and lead designer behind the Java programming language.[3],"
                  "Gosling was elected a member of the National Academy of Engineering in 2004 for the conception and development of the architecture for the Java programming language and for contributions to window systems."
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}