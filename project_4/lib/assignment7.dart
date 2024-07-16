import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Profile Screen Scrollable"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: const Color.fromARGB(255, 234, 188, 202),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom:BorderSide(color: Colors.black))
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius:  const BorderRadius.all(Radius.circular(200)),
                              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
                              fit: BoxFit.cover),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            margin: const EdgeInsets.all(10),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Column(
                            children: [
                              Text("James Gosling",style: TextStyle(fontSize: 25),),
                              Text("Founder: Java",style: TextStyle(fontSize: 15),), 
                            ],
                          )
                        ],),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 300,
                        width: 250,
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
                        height: 300,
                        width: 250,
                        color: Colors.white,
                        margin: const EdgeInsets.all(10),
                        child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6",
                        fit:BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),),
        ),
      ),
    );
  }
}