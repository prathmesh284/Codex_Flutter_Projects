import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Cointainer Image with hori scroll"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 234, 188, 202),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection:Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 220,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                    fit:BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                    fit:BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),),
        ),
      ),
    );
  }
}