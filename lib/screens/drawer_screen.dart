import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
         const DrawerHeader(child: CircleAvatar(
            maxRadius: 60,
            backgroundImage: AssetImage('assets/image/Tab.png'),
          )),
         const SizedBox(
            height: 40,
          ),
          Card(
            color:const Color(0xffE5E5E5),
            child: ListTile(leading:const Icon(Icons.person),
            title:const Text('Profile'),
            onTap: ()
            {},
            ),
          ),
          const SizedBox(height:10),
          Card(
            color:const Color(0xffE5E5E5),
            child: ListTile(leading:const Icon(Icons.favorite),
            title:const Text('Favourite'),
            onTap: ()
            {
            },
            ), 
          ),
          const SizedBox(height:10),
          Card(
            color:const Color(0xffE5E5E5),
            child: ListTile(leading:const Icon(Icons.settings),
            title:const Text('Setting'),
            onTap: ()
            {
            
            },
            ),
          ),
         const SizedBox(height:10),
          Card(
            color:const Color(0xffE5E5E5),
            child: ListTile(leading:const Icon(Icons.logout),
            title:const Text('LogOut'),
            onTap: ()
            {
            
            },
            ),
          ),
        ],
      ),
    );
  }
}