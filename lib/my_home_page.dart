//https://bt19cse136-pinterest-ui.web.app

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var f=0.0,inf=-1;
  bool hov=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(

                              image: DecorationImage(
                                image :AssetImage(
                                        "assets/pinterest.png"),
                                fit: BoxFit.fill,
                              ),
          ),
        ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: Row(
        children: [       
                            Container(
                              decoration: BoxDecoration(
                             // color: Colors.grey.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(40),
                              ),
                              width: 80,
                              child: InkWell(
                                onTap: (){
                                },
                                onHover: (value){
                                //  print(value);
                                },                                
                                      child: Center(
                                        child: Text('Home',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                ),
                                      ),
                              ),
                            ),
                             Padding(padding: EdgeInsets.all(10)),
                            Container(
                              decoration: BoxDecoration(
                             // color: Colors.grey.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(40),
                              ),
                              width: 80,
                              child: InkWell(
                                onTap: (){
                                },
                                onHover: (value){
                                //  print(value);
                                },                                
                                      child: Text('Today',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                ),
                              ),
                            ),
                          
                             Padding(padding: EdgeInsets.all(10)),
                            Expanded(

                               child: Container(
                                    width: 1000,              
                                child: TextField(
                                decoration: InputDecoration(
                                hintText: "Search",
                                border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                               borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                borderSide: BorderSide.none,
                                 ),
                                  focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                  borderSide: BorderSide.none,
                                     ),
                                    contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 4.0,
                                        ),
                                  filled: true,
                                    prefix: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                 ),
                                  ),
                                ),
                               ),
                                Padding(padding: EdgeInsets.all(10)),
                                InkWell(
                                  onTap: (){},
                                  onHover: (value){},
                                  child: Icon(
                                  Icons.notifications_active,
                                  size: 30,
                                  color: Colors.black,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
                                InkWell(
                                  onTap: (){},
                                  onHover: (value){},
                                 child: Icon(
                                  Icons.chat,
                                  size: 30,
                                  color: Colors.black,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
                                InkWell(
                                  onTap: (){},
                                  onHover: (value){},
                                                                  child: Icon(
                                  Icons.login_outlined,
                                  size: 30,
                                  color: Colors.black,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
                                InkWell(
                                  onTap: (){},
                                  onHover: (value){},
                                                                  child: Icon(
                                  Icons.expand_more,
                                  size: 30,
                                  color: Colors.black,
                                    ),
                                ),
                                Padding(padding: EdgeInsets.all(10)),
        ],
      ), 
      ),
      body: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              itemCount: 23,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(15))
                  ),
                  child: InkWell(   

                    onTap: (){},
                    onHover: (value){
                      
                      setState(() {
                      hov=value; 
                      inf=index; 
                      });

                    },
                    //hoverColor: Colors.red.withOpacity(0.75),
                    child: (hov==true && inf==index) ? ClipRRect(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)),
                        child: Stack(
  
                          children: <Widget>[
                            Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image :(index!=1) ? AssetImage("assets/$index.jfif") : NetworkImage('https://media.giphy.com/media/ZwDS38ojwTcFFjezzz/giphy.gif'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.35),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              child: Column(children: [
                              Row(mainAxisSize : MainAxisSize.min,
                              children: [
                              Expanded(
                               child: TextField(
                               // controller: searchController,
                                decoration: InputDecoration(
                                hintText: "Save to...",
                                border: InputBorder.none),
                                )),
                                Icon(
                                Icons.expand_more,
                                size: 20,
                                color: Colors.black,
                                  ),
                              OutlinedButton(
                              style: OutlinedButton.styleFrom(onSurface: Colors.red),
                              onPressed: (){}, 
                              child: Text('Save',
                              ),
                            ),
                            ],),
                        Spacer(flex: 1),
                        Row(children: [
                          Spacer(flex: 1),
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.5),
                          radius: 20,
                                  child: Icon(
                                  Icons.share,
                                  size: 20,
                                  color: Colors.black,     
                                  ),
                            ),
                          Padding(padding: EdgeInsets.all(1)),
                          CircleAvatar(
                          backgroundColor: Colors.white30.withOpacity(0.5),
                          radius: 20,
                              child: Icon(
                              Icons.file_upload,
                              size: 20,
                              color: Colors.black,
                                ),
                          ),
                          Padding(padding: EdgeInsets.all(1)),
                          CircleAvatar(
                            backgroundColor: Colors.white30.withOpacity(0.5),
                          radius: 20,
                                  child: Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                  color: Colors.black,     
                                  ),
                            ),
                        ],)
                      ],)
                  
                              ),

                          ],
                          ),
                          
                        ):
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image :(index!=1) ? AssetImage("assets/$index.jfif") : NetworkImage('https://media.giphy.com/media/ZwDS38ojwTcFFjezzz/giphy.gif'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                        ),
                      ),
                );
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven?1.2:1.8);
              }),
    );
  }
}
