import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_projects/homescreen.dart';
import 'package:udemy_projects/notes.dart';
import 'package:udemy_projects/page_work.dart';
import 'package:udemy_projects/searchscreen.dart';

class page_home extends StatefulWidget {
  const page_home({super.key});

  @override
  State<page_home> createState() => _page_homeState();
}

class _page_homeState extends State<page_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Easy Notes",style: TextStyle(color: Colors.blue,fontSize: 35),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>searchscreen()));
          }, icon:Icon(Icons.search_outlined)),
          PopupMenuButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),itemBuilder: (context)=>[
            PopupMenuItem(child:ListTile(
              leading: Icon(Icons.grid_view_outlined),
              title: Text('List view'),
            )),
            PopupMenuItem(child:ListTile(
              leading: Icon(Icons.note_alt_sharp),
              title: Text('Select'),
            )),
            PopupMenuItem(child:ListTile(
              leading: Icon(Icons.sort),
              title: Text('sort'),
            )),
            PopupMenuItem(child:ListTile(
              leading: Icon(Icons.sync),
              title: Text('Sync'),
            )),
          ])



        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homescreen()));
                  },
                  child: Chip(label: Text('All',),
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: BorderSide.none,)),
              Chip(label: Text('Home',style: TextStyle(color: Colors.white),),side: BorderSide.none,backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_work()));
                  },
                  child: Chip(label: Text('Work',style: TextStyle(color: Colors.black),),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
              Chip(label: Icon(Icons.save_as_outlined),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            ],
          ),
          SizedBox(height: 60,),
          Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("img/stock-vector-young-girl-with-tablet-women-working-on-project-remote-employee-or-freelancer-modern-2216160813.jpg"))
            ),
          ),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>notes()));
        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
