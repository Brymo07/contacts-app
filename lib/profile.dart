import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 0,
       iconTheme:const IconThemeData(
         color: Colors.blue
       ),
       backgroundColor: Colors.grey.shade200,
       titleSpacing: 105,
       title:const Text('Contact',
       style: TextStyle(
         fontSize: 18,
         color: Colors.blue
       ) ,
       ),
       actions:const [
         Padding(
           padding: EdgeInsets.all(15.0),
           child: Text('Edit',
           style:TextStyle(
             fontSize: 18,
             color: Colors.blue
           ) ,
           ),
         ),
       ],
       bottom:  PreferredSize(
             preferredSize:const Size.fromHeight(215),
             child:Column(
               children: [
                  Container(
               decoration: const BoxDecoration(
                 shape: BoxShape.circle,                
                 image: DecorationImage(
                   image: NetworkImage('https://media.istockphoto.com/photos/fit-man-standing-outdoors-in-a-city-picture-id1299360127?b=1&k=20&m=1299360127&s=170667a&w=0&h=1Rvw_UPTnj1LkB543cuCjiLM0xbIdjjin0rw6yaL8bc='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Brymo',
            style: TextStyle(
              fontSize: 23
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [               
                  Container(
                   child: Column(
                     children: [
                     IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.message_rounded,
                    color: Colors.blue,
                    )),
                    const Text('message',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),)
                     ],
                   ),
                   height: 65,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                  ),
                 const Spacer(),
                  Container(
                   child: Column(
                     children: [
                     IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.phone,
                    color: Colors.blue,
                    )),
                    const Text('call',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),)
                     ],
                   ),
                   height: 65,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                  ),
                  const Spacer(),
                   Container(
                   child: Column(
                     children: [
                     IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.videocam_rounded,
                    color: Colors.blue,
                    )),
                    const Text('video',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),)
                     ],
                   ),
                   height: 65,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                  ),
                  const Spacer(),
                   Container(
                   child: Column(
                     children: [
                     IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.mail,
                    color: Colors.blue,
                    )),
                    const Text('mail',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),)
                     ],
                   ),
                   height: 65,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                  ), 
                ],
              ),
            )
               ],
             )
     ),  
    ),
    body: ListView(
      children: const [
         ListTile(
      title: Text('work'),
      subtitle: Text('024 174 5623',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 15
      ),
      ),
    ),
    Divider(
      indent: 15,
    ),
     ListTile(
      title: Text('Phone'),
      subtitle: Text('+23324 174 5623',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 15
      ),
      ),
    ),
     Divider(
      indent: 15,
     ),
      ListTile(
      title: Text('Video Call',
      style: TextStyle(
        fontSize: 15
      ),
      ),
      trailing:
       CircleAvatar(
         backgroundColor: Color.fromRGBO(178, 180, 181, 150),
        child: Icon(Icons.videocam_rounded),
        
      ),
    ),
     Divider(
      indent: 15,
     ),
      ListTile(
      title: Text('home'),
      subtitle: Text('brymo.official@gmail.com',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 15,
      ),
      ),
      ), 
       Divider(
      indent: 15,
     ),
     Padding(
       padding: EdgeInsets.all(12.0),
       child: TextField(
         decoration: InputDecoration(
           labelText: 'Note',
           labelStyle: TextStyle(
             fontSize: 15,
             color: Colors.black
           )
         ),

       ),
     ),
      Divider(
      indent: 15,
     ),
      ListTile(
      title: Text('Message',
      style: TextStyle(
        fontSize: 15,
        color: Colors.blue
      ),
      ),
      ),
       Divider(
      indent: 15,
     ),
      ListTile(
      title: Text('Share Contact',
      style: TextStyle(
        fontSize: 15,
        color: Colors.blue
      ),
      ),
      ),
       Divider(
      indent: 15,
     ),
      ListTile(
      title: Text('Add to Favourites',
      style: TextStyle(
        fontSize: 15,
        color: Colors.blue
      ),
      ),
      ),
      ],
    ),
      
    );
  }
}