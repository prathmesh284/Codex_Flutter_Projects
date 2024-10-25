import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("P r o f i l e",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10,top: 10),
                          padding: const EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            //image: DecorationImage(image: NetworkImage(info[0].imgUrl)),
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                            //image: DecorationImage(image: image),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("pratham",style: TextStyle(color:Colors.white),),
                            const SizedBox(width: 1,),
                            Icon(Icons.edit,color: Colors.grey.shade600,size: 16,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined,color: Colors.white,),
                onTap: (){},
                title: const Text("Home",style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: const Icon(Icons.settings_outlined,color: Colors.white,),
                onTap: (){},
                title: const Text("Setting",style: TextStyle(color: Colors.white),),
              ),
              ListTile(
                leading: const Icon(Icons.logout,color: Colors.white,),
                onTap: (){},
                title: const Text("Logout",style: TextStyle(color: Colors.white),),
              ),
            ],
        ),
      ), 
      drawerScrimColor: Colors.grey.shade700,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title:Text(
          "Instagram",style:TextStyle(
            color: Colors.pinkAccent,         // Change font color
            fontSize: 28.0,            // Change font size
          )),
        actions: const [Icon(Icons.favorite_border_outlined,size: 20,),]
      ),
      body:Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            child: Image.network("src"),
          ),
        ],
      )
    );
  }
}