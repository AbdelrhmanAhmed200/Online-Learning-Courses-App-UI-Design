import 'package:flutter/material.dart';
import 'package:flutter_application_8/About_Course.dart';

class HomeScreen extends StatelessWidget{
  List pic =[
    "images/Web Design.png",
    "images/App Development.png",
    "images/UI Design.png",
    "images/Ecommerce.png"
  ];
  List corses =[
    "Web Design",
    "App Development",
    "UI Design",
    "Ecommerce"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 45, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Choose Your", style: TextStyle(fontSize: 18, color: Colors.grey),),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    
                  ),
                  child: ClipRRect(child: Image.asset("images/profile.jpg"),borderRadius: BorderRadius.circular(10),),
                ),
              ],
            ),
            Text("Desire Course", style:  TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(58, 174, 174, 174),
                borderRadius: BorderRadius.circular(10),
                ),
              
              child: TextFormField(
                decoration: InputDecoration(
                  
                  
                  labelText: "Search for Course",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search)                 
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Text("Category",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              
            Container(
              alignment: Alignment.center,
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 66, 164, 245),
                borderRadius: BorderRadius.circular(40)
              ),
              child: Text("UI/UX",style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),),
            ),
            
            Container(
              alignment: Alignment.center,
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(40),
                border: Border(
                  left: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  right: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  top: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  bottom: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                )
              ),
              child: Text("Codding",style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 30, 190, 235)
              ),),
            ),
            
            Container(
              alignment: Alignment.center,
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(40),
                border: Border(
                  left: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  right: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  top: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                  bottom: BorderSide(color: const Color.fromARGB(255, 30, 190, 235), width: 1.0),
                )
              ),
              child: Text("App Design",style: TextStyle(
                fontSize: 15,
                color: const Color.fromARGB(255, 30, 190, 235)
              ),),
            ),
              ]
            ),
            SizedBox(height: 40,),
            SizedBox(height: 130,
            child: ListView.builder(
              itemCount: pic.length ,
              scrollDirection: Axis.horizontal,
              itemBuilder: 
              (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 70,
                  width: 215,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 240, 240),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Image.asset(pic[index] , height: 70,width: 80, fit: BoxFit.cover,),
                        SizedBox(width: 6,),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(corses[index],style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("24 lesson",style: TextStyle(color: Colors.grey,fontSize: 14),),
                                SizedBox(width: 10,),
                                Text("4.3"),
                                Icon(Icons.star,color: const Color.fromARGB(255, 41, 181, 246),size: 15,)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$25", style: TextStyle(color: const Color.fromARGB(255, 94, 195, 246),fontSize: 14),),
                                SizedBox(width: 25,),
                                Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 94, 195, 246),
                                    borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white,),
                                )
                              ],
                            )
                    
                          ],
                    
                        )
                    
                      ],
                    ),
                  ),
                  
                );
              }
            ),
            ),
            SizedBox(height: 20,),
            Text("Populer Course", style: TextStyle(
              fontSize: 18,fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutCourse(pic: pic[0], name: corses[0],)));
                    
                  },
                  child: Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Web Design", style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,
                      
                          ),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("24 lesson",),
                              SizedBox(width: 30,),
                              Text("4.3",),
                              Icon(Icons.star,color: Colors.blueAccent,size: 18,)
                  
                  
                            ]
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 90,
                              child: Image.asset(pic[0],)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutCourse(pic: pic[1], name: corses[1],)));
                    
                  },
                  child: Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("App Development", style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.bold,
                      
                          ),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("24 lesson",),
                              SizedBox(width: 30,),
                              Text("4.3",),
                              Icon(Icons.star,color: Colors.blueAccent,size: 18,)
                  
                  
                            ]
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 90,
                              child: Image.asset(pic[1],)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutCourse(pic: pic[2], name: corses[2],)));
                    
                  },
                  child: Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ui Design", style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,
                      
                          ),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("24 lesson",),
                              SizedBox(width: 30,),
                              Text("4.3",),
                              Icon(Icons.star,color: Colors.blueAccent,size: 18,)
                  
                  
                            ]
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 90,
                              child: Image.asset(pic[2],)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25,),
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutCourse(pic: pic[3], name: corses[3],)));
                    
                  },
                  child: Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ecommerce", style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,
                      
                          ),),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("24 lesson",),
                              SizedBox(width: 30,),
                              Text("4.3",),
                              Icon(Icons.star,color: Colors.blueAccent,size: 18,)
                  
                  
                            ]
                          ),
                          Center(
                            child: Container(
                              width: 100,
                              height: 90,
                              child: Image.asset(pic[3],)),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
        
        
        ),
      ),
    );

  }
  

}