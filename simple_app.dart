import 'package:flutter/material.dart';

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple app")
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/img_1.png'),
                    )
                  ),
                ),
                Positioned(
                  left: 20,
                    top: 60,
                    child: Text("Discover Bangladesh..",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold ),)),
                Positioned(
                  top: 130,
                    left: 20,
                    right: 20,
                    child: TextField(
                      decoration: InputDecoration(
                        prefix: Icon(Icons.search),
                        hintText: "Search destination......",
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        ),
                    ),

                ))
              ],
            ),
            ///heading complete

            SizedBox(height: 20),
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Visiting Places..",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),

                  GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Stack(
                        children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: AssetImage('asset/img_2.png'),
                          ),
                        ),
                      ), Positioned(
                              bottom: 50,
                              left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                color: Colors.black54,
                                child: Text("Cox's Bazar",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              )),
                      ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/img_4.png'),
                              ),
                            ),
                          ), Positioned(
                              bottom: 50,
                              left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                color: Colors.black54,
                                child: Text("Sylhet",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),

                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/img_5.png'),
                              ),
                            ),
                          ), Positioned(
                              bottom: 50,
                              left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                color: Colors.black54,
                                child: Text("Rangamati",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),

                              )),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('asset/img_6.png'),
                              ),
                            ),
                          ), Positioned(
                              bottom: 50,
                              left: 8,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                                color: Colors.black54,
                                child: Text("Dhaka",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),

                              )),
                        ],
                      ),

                    ],
                  ),
                  Text("Trending Pakages...",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,width: 1
                            )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                              
                            ),
                            child: Image.network("https://lh3.googleusercontent.com/gps-cs-s/AC9h4npTZxjpBymPrMpZQdAOHygcbaqYBl6AwqBhDrS0qzLp2ozMRys3qxDKhFdwTI5jxDJ_zyb_GR9j0tDOnd4djFzsXujtgyhVGN7pjGzlX2-TiZhqiEwQFTTxawMuHeIF4UlM98Wi=s680-w680-h510-rw"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                          top: 8,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Cox's Bazar Tour.",style: TextStyle(
                                color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold
                              ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.watch_later_outlined,size: 20,),
                                  Text("4 night * 5 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                ],
                              )
                            ],
                          ),
                      ),
                      Positioned(
                        top: 70,
                          left: 170,
                          child: Text("\$500",style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20
                          ),)
                      ),
                      Positioned(
                        bottom: 10,
                          right: 10,
                          child: Container(
                            height: 35,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                      )
                    ],
                  ),

                  Stack(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black,width: 1
                              )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),

                            ),
                            child: Image.network("https://media.tacdn.com/media/attractions-splice-spp-674x446/0e/8f/87/63.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 8,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Sylhet Tour.",style: TextStyle(
                                color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,size: 20,),
                                Text("3 night * 2 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 70,
                          left: 170,
                          child: Text("\$720",style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20
                          ),)
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),

                  Stack(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black,width: 1
                              )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),

                            ),
                            child: Image.network("https://www.bangladeshscenictours.com/wp-content/uploads/2024/07/Hanging-Bridge-1024x576.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180,
                        top: 8,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rangamati Tour.",style: TextStyle(
                                color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,size: 20,),
                                Text("3 night * 2 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 70,
                          left: 180,
                          child: Text("\$499",style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20
                          ),)
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),

                  Stack(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.black,width: 1
                              )
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),

                            ),
                            child: Image.network("https://media.tacdn.com/media/attractions-splice-spp-674x446/15/c0/f3/e1.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 170,
                        top: 8,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Dhaka Tour.",style: TextStyle(
                                color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold
                            ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.watch_later_outlined,size: 20,),
                                Text("4 night * 5 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 70,
                          left: 170,
                          child: Text("\$399",style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 20
                          ),)
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          height: 35,
                          width: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  )





            ],
              ),
            ),


          ],
        ),
      ),


  );

  }
}
