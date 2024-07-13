import 'package:flutter/material.dart';
import 'package:udemy_projects/homescreen.dart';
import 'package:udemy_projects/notes.dart';
import 'package:udemy_projects/page_home.dart';
import 'package:udemy_projects/searchscreen.dart';
class page_work extends StatefulWidget {
  const page_work({super.key});

  @override
  State<page_work> createState() => _page_workState();
}

class _page_workState extends State<page_work> {
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
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_home()));
                  },
                  child: Chip(label: Text('Home',),
                    backgroundColor: Colors.grey.withOpacity(0.1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: BorderSide.none,)),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page_work()));
                  },
                  child: Chip(label: Text('Work',style: TextStyle(color: Colors.white),),side: BorderSide.none,backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
              Chip(label: Icon(Icons.save_as_outlined),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              
            ],
          ),
          SizedBox(height: 60,),
          Container(
            height: 400,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("img/stock-vector-online-courses-vector-illustration-flat-person-learn-virtual-concept-modern-knowledge-development-1833653281.jpg"))
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
