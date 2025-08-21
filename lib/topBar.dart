import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Cool Calculator',
          style:TextStyle(color: Colors.amber),),
          iconTheme: IconThemeData(
            color: Colors.amber,
          ),
        );
  }




   @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Default AppBar height

  Widget get child => this; // This widget is the AppBar itself
}