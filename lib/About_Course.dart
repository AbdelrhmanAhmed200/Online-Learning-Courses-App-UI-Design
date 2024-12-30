import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutCourse extends StatelessWidget {
  final String pic;
  final String name;

  AboutCourse({required this.pic, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width, // Responsive width
                  height: 300,
                  child: Image.asset(
                    pic,
                    fit: BoxFit.contain,
                  ),
                ),
                 // Add spacing between image and content
                Stack(
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30), // Adjust for positioning
                      child: Container(
                        height: 420,
                        width: 500,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),

                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                            Text("Course", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("\$25,99",style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                   color: Colors.blueAccent
                                ),),
                                Spacer(),
                                Text("4.3",style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),),
                                Icon(Icons.star, color: Colors.blue,)
                              ],
                            ),
                            SizedBox(height: 20,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey, width: 1)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("24", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                                        Text("classes", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      ],
                                    ),
                                ),
                                Container(
                                  height: 80,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey, width: 1)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("2 Hours", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                                        Text("time", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      ],
                                    ),
                                ),
                                Container(
                                  height: 90,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey, width: 1)
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("100", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent),),
                                        Text("Seats", style: TextStyle(fontSize: 15, color: Colors.grey),)
                                      ],
                                    ),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting  standard dummy text ever since the 1500s"),

                            SizedBox(height: 80,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.grey, width: 1)

                                  ),
                                  child: Icon(CupertinoIcons.multiply),
                                ),
                                ),
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                     

                                  ),
                                  child: Text("Join Course",style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ),
                                )
                              ],
                            )
                          ],
                        ),
                        
                      ),
                        
                         
                  
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width/1.4,
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            boxShadow: 
                            [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 6,
                                spreadRadius: 4,
                              )
                            ]
                          
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  ]
                    ),
                   
                  ],
                ),
              
            ),
          ),
        ),
      );
    
  }
}
