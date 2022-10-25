import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // padding: EdgeInsets.fromLTRB(12, 12, 12, 6),
              decoration: const BoxDecoration(
                // color: Colors.amber
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  CircleAvatar(
                    maxRadius: 46,
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/logo-renda.png'),
                  ),

                  const SizedBox(width: 12,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Juan Carlos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                      Text("Administrador", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                    ],
                  )
                  
                ],
              )
            ),
            ListTile(
              title: const Text('Cuenta'),
              leading: const Icon(Icons.person_outline),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Cerrar Sesión'),
              leading: const Icon(Icons.logout_outlined),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}