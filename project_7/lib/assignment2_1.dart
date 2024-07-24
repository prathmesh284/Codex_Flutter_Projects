import 'package:flutter/material.dart';
import 'package:project_7/assignment2_2.dart';

class Ass2Screen1 extends StatelessWidget {
  const Ass2Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("8:00",style: TextStyle(color: Colors.white,fontSize: 12)),
        backgroundColor: Colors.black,
        actions: [Icon(Icons.network_cell_outlined,color: Colors.white,size: 12,),SizedBox(width: 10),Icon(Icons.wifi,color: Colors.white,size: 12),SizedBox(width: 10),Icon(Icons.battery_4_bar_outlined,color: Colors.white,size: 12),SizedBox(width: 10),],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Center(
          child: Stack(
            children: [
              Positioned.fill(
                child:Image.asset("images/image2.jpg",fit: BoxFit.fitWidth),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.55),
                ),
              ),
              const Positioned(
                top: 35,
                left: 20,
                child: Text("Rent a House \nfor you.",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
              ),
              Positioned(
                bottom: 0,
                child:ClipRect(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 20,
                    child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: const BorderRadius.only(topLeft: Radius.elliptical(100,30),topRight: Radius.elliptical(100,20)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Reservation Now",style:TextStyle(color: Colors.black)),
                        InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const Ass2Screen2())),
                          child: Container(
                            height: 30,
                            width: 100,
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(child: Text("Book Now",style:TextStyle(color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                                  ),
                  ),
                )
              )
            ],
          ),
          ),
      ),
      );
  }
}
