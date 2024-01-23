import 'package:flutter/material.dart';

class Homework1 extends StatefulWidget {
  const Homework1({super.key});

  @override
  State<Homework1> createState() => _Homework1State();
}

class _Homework1State extends State<Homework1> {


  int count=0;
  int count1=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
     color: Colors.black,
        child: Column(
          children: [
            Expanded(
                child: Container(
            child: Row(
              children: [
                Expanded(
              flex: 3,
                    child: Container(
                      child: Text('Count++',style: TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic, ),)),
                    ),
                Expanded(

                    child: Container(child: Icon(Icons.contrast,size: 30,color: Colors.white,),)),
                Expanded(

                    child: Container(child: Icon(Icons.share_outlined,size: 30,color: Colors.white),)),

                Expanded(

                    child: Container(child: Icon(Icons.more_vert,size: 30, color: Colors.white,),)),
              ],
            )
            )),
            Expanded(child: Container(
          // color: Colors.white,
              child: Column(
                children: [
                  Expanded(child: Container(
                  child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text('Name',style: TextStyle(fontSize: 20,color: Colors.white54,fontStyle: FontStyle.italic,),),
                      Container(
                        width: 200,
                        child: Divider(
                          thickness: 4,
                          color: Colors.white54,
                        ),
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                  )
                  ),
                ],
              ),

             // color: Colors.white54,
            )),


            Expanded(
              flex: 2,
                child: Container(
               child: Text('$count',style: TextStyle(fontSize: 100,color: Colors.white),),
            )),

            Expanded(child: Container(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [


                 Container(
                  // width: 300,
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(
                         width: 50,
                       ),
                       Container(
                         width: 300,
                        child:  Divider(
                          thickness: 4,
                          color: Colors.purple,
                        ),
                      ),
                       SizedBox(
                         width: 30,
                       ),
                       Text('10',style: TextStyle(fontSize: 15,color: Colors.white),)
                     ],
                   )
                 ),

                 Text('Round: $count1',style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,),),
                 

               ],
             )
            )),



            Expanded(
              flex: 3,
                child: Container(

                  width: 350,
            //  color: Colors.pink.shade300,
                 child: InkWell(

                   onTap: (){
                    setState(() {

                      if(count<=32){
                       count++;
                      count1++;
                      }

                     else{
                       count=0;
                       count1++;
                      }

                      if(count1<100){
                        count1++;
                       }

                      else{
                        count1=0;
                      }

                    });
                   },


                   child:  Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(10),
                             topRight: Radius.circular(10),
                             bottomRight: Radius.circular(10),
                             bottomLeft: Radius.circular(10)
                         ),
                         color: Colors.pink.shade300,
                       ),
                       child: Icon(Icons.plus_one,size: 100,color: Colors.black,fill: 1,),
                   )
                 )


            )),


            Expanded(child: Container(

              child: InkWell(
            onTap: () {
            setState(() {

              count=0;

            });
           },
                child: Column(
                  children: [
                    Expanded(child: Container(color: Colors.black,)),
                    Expanded(

                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5)
                            ),
                            color: Colors.white54,
                          ),
                          child: Text('Reset',style: TextStyle(fontStyle: FontStyle.italic,),),
                          alignment: Alignment.center,
                        )),



                    Expanded(child: Container(color: Colors.black,))
                  ],
                )
            )
            )
            )
          ],
        ),
      )
    );
  }
}
