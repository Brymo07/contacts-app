// ignore_for_file: prefer_const_constructors

import 'package:contacts_app/new_contact.dart';
import 'package:contacts_app/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class Contacts extends StatelessWidget {
 const  Contacts({ Key? key }) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.white,
        leading:const Padding(
          padding: EdgeInsets.all(17.0),
          child: Text('Groups',
          style: TextStyle(
            fontSize: 17,
            color: Colors.blue
          ),),
        ) ,
        leadingWidth: 90,
        title:const Text('Contacts',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        titleSpacing: 70,
        actions: [
          IconButton(onPressed: (){
            Get.to(NewContact());
          }, 
          icon: const Icon(Icons.add,
          color: Colors.blue,))
        ],
         bottom: PreferredSize(
             preferredSize:const Size.fromHeight(90),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                   child: TextField(

                   decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                labelText: 'Search',
                labelStyle: const TextStyle(fontSize: 20),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.menu_open)     
                   ),
                   ),
                 ),
                ] ),
      ),
       ),
       body: ListView(
         children: [
           InkWell(
             onTap: (){
              Get.to( const Profile());
             } ,
             child:const ListTile(
               leading: CircleAvatar(
                 backgroundImage: NetworkImage('https://media.istockphoto.com/photos/fit-man-standing-outdoors-in-a-city-picture-id1299360127?b=1&k=20&m=1299360127&s=170667a&w=0&h=1Rvw_UPTnj1LkB543cuCjiLM0xbIdjjin0rw6yaL8bc='),
              radius: 30,
               ),
               title: Text('Brymo',
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),
               ),
               subtitle: Text('My Card'),
             ),
           ),
          const Padding(
             padding: EdgeInsets.all(8.0),
             child: Text('A',
             
             textAlign: TextAlign.start,),
             
           ),
           Divider(
             indent: 15,
             thickness: 1,
           ),
           InkWell(
             onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Abel',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
             },
             child: ListTile(
               leading: Text('Abel',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
           ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
            onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/positivity-puts-you-in-a-position-of-power-picture-id1299077582?b=1&k=20&m=1299077582&s=170667a&w=0&h=Esjqlg_WCWmTc83Dv6PLhwPFwYN9uXoclBn0cUhtS5I='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Abigail',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Abigail',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
            onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/excited-black-african-american-man-having-a-video-call-on-smartphone-picture-id1311088144?b=1&k=20&m=1311088144&s=170667a&w=0&h=mKa9ih4ts9WfGAEpXVQMl7mI4V-NcbWeBg3LtPxs1nU='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Adarkwah',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Adarkwah',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
            onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Aduful',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Aduful',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
              
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
            onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Adzo',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Adzo',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
            onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Afari',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Afari',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
             onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Ahmed',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Ahmed',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
             onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Aik',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Aik',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
             onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Akrashie',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Akrashie',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          InkWell(
             onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Akuffo',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
            child: ListTile(
               leading: Text('Akuffo',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
             ),
          ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
          Padding(
             padding: EdgeInsets.all(8.0),
             child: Text('B',
             
             textAlign: TextAlign.start,),
             
           ),
           Divider(
             indent: 15,
             thickness: 1,
           ),
            InkWell(
               onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/excited-woman-wearing-rainbow-cardigan-picture-id1327495437?b=1&k=20&m=1327495437&s=170667a&w=0&h=Vbl-XLyAnBoTkyGXXi-X1CFzuSHlNcn-dqB-sCosxFo='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Baaba',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
              child: ListTile(
               leading: Text('Baaba',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
                       ),
            ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
            InkWell(
               onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Babson',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
              child: ListTile(
               leading: Text('Babson',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
                       ),
            ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
            InkWell(
               onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Baflon',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
              child: ListTile(
               leading: Text('Baflon',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
                       ),
            ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
            InkWell(
               onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Becky',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
              child: ListTile(
               leading: Text('Becky',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
                       ),
            ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
            InkWell(
               onTap: (){
               showBarModalBottomSheet(context: context, 
              builder: (context){
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
                   image: NetworkImage('https://media.istockphoto.com/photos/hes-on-a-mission-picture-id1284284200?b=1&k=20&m=1284284200&s=170667a&w=0&h=beshLWS0FGCSQZN31KqOtGkrZVEqV3Mle2pGPZH9nvw='),
                  fit: BoxFit.cover, 
                   ),
               ),
               height: 115,
               width: 110,  
             ),
            const Text('Black',
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
      subtitle: Text('024 321 7845',
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
      subtitle: Text('+23324 321 7845',
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
      subtitle: Text('',
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
              });
            },
              child: ListTile(
               leading: Text('Black',
               style: TextStyle(
                 fontSize: 17,
               ),
               ),
                       ),
            ),
           Divider(
             thickness: 1,
             indent: 15,
             endIndent: 15,
           ),
         ],
       ),
       );
  }
}