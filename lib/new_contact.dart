import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:contacts_app/contacts.dart';
import 'package:get/get.dart';



class NewContact extends StatelessWidget {
   NewContact({ Key? key }) : super(key: key);

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _addnumberController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.grey.shade200,
      leading: InkWell(
        onTap: (){
        Get.to(const Contacts());
        },
        child: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text('Cancel',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 19,
          ),
          ),
        ),
      ),
     leadingWidth: 100, 
     title: const Text('New Contact',
     style:TextStyle(
       color: Colors.black
     ) ,
     ),
     titleSpacing: 40,
     actions: const [
       Padding(
         padding: EdgeInsets.all(14.0),
         child: Text('Done',
         style: TextStyle(
           color: Colors.grey,
           fontSize: 19
         ),
         ),
       )
     ],
    ),
    body: ListView(
      children: [
        Container(
          child: const Icon(UniconsLine.user_circle,
          size: 200,
          color: Colors.grey,
          ),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),           
          ),        
        ),
        const SizedBox(
          height: 40,
        ),
      const Text('Add photo',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue
      ),
      ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
      controller: _firstnameController,
          maxLines: 1,
               decoration: const InputDecoration(
               label: Text('First Name',
               style: TextStyle(fontSize: 18,),
               ),
      ),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
      controller: _lastnameController,
          maxLines: 1,
               decoration: const InputDecoration(
               label: Text('Last Name',
               style: TextStyle(fontSize: 18,),
               ),
      ),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
      controller: _companyController,
          maxLines: 1,
               decoration: const InputDecoration(
               label: Text('Company',
               style: TextStyle(fontSize: 18,),
               ),
      ),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
      controller: _addnumberController,
          maxLines: 1,
               decoration: const InputDecoration(
               label: Text('add number',
               style: TextStyle(fontSize: 15,),
               ),
      prefixIcon: Icon(Icons.add_box_rounded,
      color: Colors.green,
      )
      ),
         ),
       ),
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
      controller: _addnumberController,
          maxLines: 1,
               decoration: const InputDecoration(
               label: Text('add email',
               style: TextStyle(fontSize: 15,),
               ),
      prefixIcon: Icon(Icons.add_box_rounded,
      color: Colors.green,
      )
      ),
         ),
       ),
       
      const ListTile(
         leading: Padding(
           padding: EdgeInsets.all(1.0),
           child: Text('Ringtone',
           style: TextStyle(
             fontSize: 16
           ),
           ),
         ),
         title: Padding(
           padding: EdgeInsets.all(14.0),
           child: Text('Default',
           style: TextStyle(
             color: Colors.blue
           ),
           ),
         ),
       )
      ],
    ),
    );
  }
}