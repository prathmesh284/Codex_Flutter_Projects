import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key,required this.imgUrl,required this.name,required this.icon, required this.counter,});
  final String name;
  final String imgUrl;
  final Icon icon;
  final int counter;
  
  @override
  State<Assignment3> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment3> {

  Widget story({String? text,String? imgurl,required Color color}){
    return SizedBox(
      width:80,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5,top: 5,bottom: 5),
            padding: const EdgeInsets.all(2),
            decoration:BoxDecoration(
              //color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(1000)),
              border: Border.all(
                color: color, // Border color
                width: 2.5,         // Border width
              ), 
            ),
            child: ClipOval(     
              child: Image.network(
                width: 60,
                height: 60,
                "$imgurl",fit: BoxFit.cover,
              ),
            ),
          ),
          Text("$text",style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
  }

  Widget profilePostBar({required String imgUrl,required String name}){
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(1),
      decoration: const BoxDecoration(
        color: Colors.black,
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(109, 158, 158, 158),
            width: 1,
          ),
        ),
      ),
      child:Row(
        children: [
          Container(
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: const BorderRadius.all(Radius.circular(1000)),
              border: Border.all(
                color: Colors.green, // Border color
                width: 1,         // Border width
              ), 
            ),
            child: ClipOval(     
              child: Image.network(
                width: 25,
                height: 25,
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(name,style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
  }

  Widget post({required String imgUrl}){
    return SizedBox(
      width: double.infinity,
      child: Container(
        //height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black, // Border color
            width: 0.5,         // Border width
          ), 
        ),
        child: Image.network(
          imgUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget likeSection({required Icon icon}){
    return Container(
      color: Colors.black,
      margin:const EdgeInsets.only(top: 5,left: 10),
      child:  Row(
        children: [
          Container(
            child: icon,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.comment_outlined,color: Colors.white,size: 20,),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.send_outlined,color: Colors.white,size: 20,),
          const SizedBox(
            width: 205,
          ),
          const Icon(Icons.bookmark_outline,color: Colors.white,size: 20,),
        ],
      ),
    );
  }

  Widget commentSection({required String name}){
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("$counter likes",style: const TextStyle(color: Colors.white,fontWeight:FontWeight.bold)),
        RichText(
          text:TextSpan(
            style: const TextStyle(),
            children: [
              TextSpan(text:'$name\t',style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              const TextSpan(text:'Namskaar!Mere Pyare Deshwasiyo! Aaj suno mere maan ki baat.',style:TextStyle(color: Colors.grey,)),
            ]
          ),
        ),
        const Text("View all 8 comments",style: TextStyle(color: Colors.grey,)),
        const Text("6 days ago",style: TextStyle(color: Colors.grey,)),
        ],
      ),
    );
  }

  bool colorStory1=true;
  bool colorStory2=true;
  bool colorStory3=true;
  bool colorStory4=true;
  bool colorStory5=true;
  bool colorStory6=true;
  bool colorStory7=true;

  int num=0;
  int counter=68;
  int max=69;
  Icon iconFav1=const Icon(Icons.favorite_border,color: Colors.white,);
  Icon iconFav2=const Icon(Icons.favorite_border,color: Colors.white,);
  bool changedIcon1=false;
  bool changedIcon2=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text(
          "Instagram",style:GoogleFonts.lindenHill(textStyle:const TextStyle(
            color: Colors.pinkAccent,         // Change font color
            fontSize: 28.0,            // Change font size
            //fontWeight: FontWeight.bold,
          )),
          /*style: TextStyle(
              //fontFamily: "Playwrite BE VLG",
              color: Colors.pinkAccent,         // Change font color
              fontSize: 24.0,            // Change font size
              fontWeight: FontWeight.bold,  // Change font weight
              //fontStyle: FontStyle.italic,
          ),*/
          //style:GoogleFonts.lindenHill(textStyle:TextStyle(color:Colors.white)),
        ),
        actions: const [Icon(Icons.favorite_border_outlined,color: Colors.white,size: 20,),SizedBox(width: 10),Icon(Icons.message_outlined,color: Colors.white,size: 20,),SizedBox(width: 5)],
      ),
      body:SizedBox( //changed with container
        width: 500,
        child: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Column(
              children: [
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory1=false;
                        }
                        else{
                          colorStory1=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtML-PNknoMimfxqKc-YGvgycRGuWNslOjSg&s",
                        text:"Your Story",
                        color: colorStory1?Colors.red:Colors.grey.shade600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory2=false;
                        }
                        else{
                          colorStory2=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                        text: "PM Modi",
                        color: colorStory2?Colors.green:Colors.grey.shade600
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory3=false;
                        }
                        else{
                          colorStory3=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'https://images.news18.com/webstories/uploads/2024/07/1-2024-07-856363c8f517186611da2f30b56e8d5e.png',
                        text:"Baba Venga",
                        color: colorStory3?Colors.red:Colors.grey.shade600
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory4=false;
                        }
                        else{
                          colorStory4=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                        text: "babubhai",
                        color: colorStory4?Colors.red:Colors.grey.shade600
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory5=false;
                        }
                        else{
                          colorStory5=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'https://pp.userapi.com/c626921/v626921569/331c7/0_LF_1qRA0c.jpg',
                        text: "mr.shak's",
                        color: colorStory5?Colors.red:Colors.grey.shade600
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory6=false;
                        }
                        else{
                          colorStory6=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'data:image/jpeg;base64,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',
                        text: "uday shetty",
                        color: colorStory6?Colors.red:Colors.grey.shade600
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(num>0){
                          colorStory7=false;
                        }
                        else{
                          colorStory7=true;
                        }
                        num++;
                        setState(() {});
                      },
                      child: story(
                        imgurl: 'data:image/jpeg;base64,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',
                        text: "Payal",
                        color: colorStory7?Colors.red:Colors.grey.shade600            
                      ),
                    ),
                    ],
                ),
              ),
              Column(
                children: [
                  profilePostBar(
                    imgUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s',
                    name: "mi_baburao_ganpatrao_apte",
                    ),
                  post(
                    imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZRlcZFpTy7aL1J_zyShDr5iEd_fhi18QAIg&s'
                  ),
                  InkWell(
                    onTap: (){
                      if(changedIcon1){
                        changedIcon1=false;
                        counter--;
                      }else{
                        changedIcon1=true;
                        counter++;
                      }
                      iconFav1=changedIcon1?const Icon(Icons.favorite,color: Colors.red,):const Icon(Icons.favorite_border,color: Colors.white,);
                      setState(() {});
                    },
                    child: likeSection(
                      icon: iconFav1,
                    ),
                  ),
                  commentSection(name: "mi_baburao_ganpatrao_apte")
                ],
              ),
              Column(
                children: [
                  profilePostBar(
                    imgUrl:'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg',
                    name: "shri.narendra_damodardas_modi",
                    ),
                  post(
                    imgUrl: 'https://images.news18.com/ibnlive/uploads/2022/08/narendra-modi-2.jpg'
                  ),
                  InkWell(
                    onTap: (){
                      if(changedIcon2){
                        changedIcon2=false;
                        counter--;
                      }else{
                        changedIcon2=true;
                        counter++;
                      }
                      iconFav1=changedIcon2?const Icon(Icons.favorite,color: Colors.red,):const Icon(Icons.favorite_border,color: Colors.white,);
                      setState(() {});
                    },
                    child: likeSection(
                      icon: iconFav2=changedIcon2?const Icon(Icons.favorite,color: Colors.red,):const Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                  ),
                  commentSection(name: "shri.narendra_damodardas_modi")
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}