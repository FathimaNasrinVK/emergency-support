import 'package:emergency_support/Emergencyappui/view/page2.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Page3(),));
}

class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var title = ["James Parker","Ashish g",'safa','Salih','Nitha Parveen',"Fathima Mubashira",'Naseefa','Fathima Nasrin vk'];
    var num = [ "5446476565","46465657","565755657","5465656575",'09098787686',"243543545","545545456","54464646"];
    var images = [
      "assets/images/albert-vincent-wu-AkqnZZR1oL4-unsplash.jpg",
      "assets/images/boxed-water-is-better-jbcY_yvsDzk-unsplash.jpg",
    "assets/images/explore-with-joshua-ljFOTdPxbW8-unsplash.jpg",
      "assets/images/girls (1).jpg",
    "assets/images/josh-hild-_TuI8tZHlk4-unsplash.jpg",
      "assets/images/london.jpg",
      "assets/images/albert-vincent-wu-AkqnZZR1oL4-unsplash.jpg",
      "assets/images/boxed-water-is-better-jbcY_yvsDzk-unsplash.jpg",
    ];
    return Scaffold(
body: Column(
  children: [
     SizedBox(height:  25,),
    Container(height: 76,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.red[800]
      ),
      child:Row(
        children: [
          SizedBox(width: 10,),
          InkWell(onTap: (){
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Emergency2()));
          },
              child: Icon(Icons.arrow_back,color: Colors.white,)),
          SizedBox(
            width: 40,
          ),
          Text("Emergency Contact List ",style: TextStyle(fontSize: 20,color: Colors.white),),
          SizedBox(width: 30,),
          Icon(Icons.add_circle_outline_outlined,color: Colors.white,)
        ],
      )
    ),

    SizedBox(height: 5,),
    Expanded(child: ListView.builder(itemCount: title.length,
        itemBuilder:(context,index)=>SizedBox(height: 100,
          child: Card(color: Colors.white,
            elevation: 2,
                child:Center(
                  child: ListTile(
                            leading: CircleAvatar(radius: 26,
                              backgroundImage:AssetImage(images[index])
                            ),
                    title:  Text(title[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(num[index]),
                    trailing: PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(child: Text("1")),
                          const PopupMenuItem(child: Text("2")),
                          const PopupMenuItem(child: Text("3")),
                        ];
                      },
                    )
                  ),
                ) ,
              ),
        )))
  ],
),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child:Icon(Icons.star,color: Colors.white,) ,backgroundColor: Colors.red,shape: CircleBorder(),
      ),floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_outlined,color: Colors.grey,),
            Icon(Icons.calendar_today_outlined,color: Colors.grey,),
            Icon(Icons.folder_copy_outlined,color: Colors.grey,),
            Icon(Icons.person,color: Colors.grey,),

          ],
        ),
      ),

    );
  }
}
