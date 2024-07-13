import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:udemy_projects/notes.dart';
import 'package:udemy_projects/page_work.dart';
import 'package:udemy_projects/searchscreen.dart';
import 'package:udemy_projects/page_home.dart';


class homescreen extends StatelessWidget {
  const homescreen({super.key});

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
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text("Easy Notes",style: TextStyle(color: Colors.blue,fontSize: 35),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.document_scanner_outlined,size: 35,),
              title: Text('All notes',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.calendar_today_outlined,size: 35,),
              title: Text('Calender',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.alarm_on_outlined,size: 35,),
              title: Text('Reminders',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.archive_outlined,size: 35,),
              title: Text('Archieve',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.delete_outline,size: 35,),
              title: Text('Trash',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.star_border_outlined,size: 35,),
              title: Text('Favourites',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.save,size: 35,),
              title: Text('Category',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.home_outlined,size: 35,),
              title: Text('Tags',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.grid_view,size: 35,),
              title: Text('Widget',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.cloud_upload_outlined,size: 35,),
              title: Text('Sync & Backup',style: TextStyle(fontSize: 18,),),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.settings_outlined,size: 35,),
              title: Text('Settings',style: TextStyle(fontSize: 18,),),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Chip(label: Text('All',style: TextStyle(color: Colors.white),),side: BorderSide.none,backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
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
                      child: Chip(label: Text('Work',style: TextStyle(color: Colors.black),),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
                  Chip(label: Icon(Icons.save_as_outlined),side: BorderSide.none,backgroundColor: Colors.grey.withOpacity(0.1),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                ],
              ),
              SizedBox(height: 30,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Card(
                     color: Colors.yellow.shade400,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Container(
                       height: 150,
                       width: double.infinity,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         titleTextStyle: TextStyle(color: Colors.black,letterSpacing: 3,fontSize: 20),

                         title: Text("kahuvhc",),
                         trailing: Icon(Icons.delete_outline,size: 35,),
                         subtitle: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8.0),
                           child: RichText(
                             text: TextSpan(
                               text: "kadh",
                                 style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                               children: <TextSpan>[
                                 TextSpan(
                                   text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                   style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 ),
                                 TextSpan(
                                   text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                   style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 ),
                                 TextSpan(
                                   text: 'dsfnugkcgjlkjklnvknfkjn',
                                   style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 ),
                                 TextSpan(
                                   text: '2024-05-06',
                                   style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 ),
                               ]
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Card(
                     color: Colors.yellow.shade400,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Container(
                       height: 150,
                       width: double.infinity,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         titleTextStyle: TextStyle(color: Colors.black,letterSpacing: 3,fontSize: 20),

                         title: Text("kahuvhc",),
                         trailing: Icon(Icons.delete_outline,size: 35,),
                         subtitle: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8.0),
                           child: RichText(
                             text: TextSpan(
                                 text: "kadh",
                                 style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 children: <TextSpan>[
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                 ]
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Card(
                     color: Colors.yellow.shade400,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Container(
                       height: 150,
                       width: double.infinity,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         titleTextStyle: TextStyle(color: Colors.black,letterSpacing: 3,fontSize: 20),

                         title: Text("kahuvhc",),
                         trailing: Icon(Icons.delete_outline,size: 35,),
                         subtitle: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8.0),
                           child: RichText(
                             text: TextSpan(
                                 text: "kadh",
                                 style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 children: <TextSpan>[
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                 ]
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Card(
                     color: Colors.yellow.shade400,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Container(
                       height: 150,
                       width: double.infinity,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         titleTextStyle: TextStyle(color: Colors.black,letterSpacing: 3,fontSize: 20),

                         title: Text("kahuvhc",),
                         trailing: Icon(Icons.delete_outline,size: 35,),
                         subtitle: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8.0),
                           child: RichText(
                             text: TextSpan(
                                 text: "kadh",
                                 style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 children: <TextSpan>[
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                 ]
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   Card(
                     color: Colors.yellow.shade400,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                     ),
                     child: Container(
                       height: 150,
                       width: double.infinity,
                       child: ListTile(
                         contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                         titleTextStyle: TextStyle(color: Colors.black,letterSpacing: 3,fontSize: 20),

                         title: Text("kahuvhc",),
                         trailing: Icon(Icons.delete_outline,size: 35,),
                         subtitle: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 8.0),
                           child: RichText(
                             text: TextSpan(
                                 text: "kadh",
                                 style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                 children: <TextSpan>[
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                   TextSpan(
                                     text: 'dsfnugkcgjlkjklnvknfkjnknknnkmkcn',
                                     style:TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),
                                   ),
                                 ]
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),
              ],
          ),
        ),
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


