import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:TextField(

          decoration: InputDecoration(
              fillColor:Colors.blue.withOpacity(0.1),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search,color: Colors.grey),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child:Text("Cancel",style: TextStyle(color: Colors.blue,fontSize: 20),) ,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text("Colors",style: TextStyle(color: Colors.blue,fontSize: 20),) ,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow.shade400,),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue.shade400,),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade400,),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple.shade400,),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent.shade400,),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black.withOpacity(0.3),),
                        ),
                      SizedBox(width: 10,),
          
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink.shade400,),
                      ),
          
          
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Types",style: TextStyle(color: Colors.blue,fontSize: 20),) ,
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                        ),
                        Icon(Icons.note_outlined,size: 40,),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                        ),
                        Icon(Icons.color_lens_outlined,size: 40,),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                        ),
                        Icon(Icons.image_outlined,size: 40,),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                        ),
                        Icon(Icons.alarm,size: 40,),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                        ),
                        Icon(Icons.edit_outlined,size: 40,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.withOpacity(0.1),),
                          ),
                          Icon(Icons.mic_none_outlined,size: 40,),
                        ],
                      ),
          
          
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Category",style: TextStyle(color: Colors.blue,fontSize: 20),) ,
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Row(
                    children: [
                      Chip(label: Text('Home'),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Chip(label: Text('Work'),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                      ),
                      Chip(label: Text('Uncategorized'),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                    ],
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}
