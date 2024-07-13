import 'package:flutter/material.dart';

class notes extends StatefulWidget {
  const notes({super.key});

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade300,
        actions: [
          Icon(Icons.push_pin_outlined,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.notification_add_outlined,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.archive_outlined,size: 30  ,),
          SizedBox(width: 20,),
        ],
      ),
      body:Container(
        color: Colors.yellow.shade300,
        height:double.infinity,
        width: double.infinity,
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  
                  hintText: 'Title',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 33),
                ),
              ),
              SizedBox(height: 5,),
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Note',
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                ),
              ),
              Expanded(child: Container()),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonBar(
                      alignment:MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){print("Home");}, icon: Icon(Icons.add_box_sharp)),
                        IconButton(onPressed: (){print("people");}, icon: Icon(Icons.color_lens_outlined)),
                        IconButton(onPressed: (){print("people");}, icon: Icon(Icons.sort_by_alpha_outlined)),
                        Text("Editted 3:50pm",style: TextStyle(color: Colors.grey.shade700),),
                        SizedBox(width: 20,),

                        IconButton(onPressed: (){print("more");}, icon: Icon(Icons.more_vert_outlined)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
