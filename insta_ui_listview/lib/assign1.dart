import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui_listview/post.dart';


class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  
  @override
  State<Assignment1> createState() => _Assignment1State();
}
  bool colorStory1=true;
  bool colorStory2=true;
  bool colorStory3=true;
  bool colorStory4=true;
  bool colorStory5=true;
  bool colorStory6=true;
  bool colorStory7=true;

class _Assignment1State extends State<Assignment1> {
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
                            color: Colors.white,
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(50),
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title:Text(
          "Instagram",style:GoogleFonts.lindenHill(textStyle:const TextStyle(
            color: Colors.pinkAccent,         // Change font color
            fontSize: 28.0,            // Change font size
          )),
        ),
        actions: const [Icon(Icons.favorite_border_outlined,size: 20,),SizedBox(width: 10),Icon(Icons.message_outlined,size: 20,),SizedBox(width: 5)],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                    margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5,left: 1),
                    padding: const EdgeInsets.all(2),
                    decoration:BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(1000)),
                      border: Border.all(
                        color: info[index].color, // Border color
                        width: 2.5,         // Border width
                      ), 
                    ),
                    child: ClipOval(     
                      child: Image.network(
                        width: 60,
                        height: 60,
                        info[index].imgUrl,fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(info[index].name,style: const TextStyle(color: Colors.white),),
                  ],
                );
              },
            ),
          ),
          const InstagramFeed(),
        ],
      ),
    );
  }
}