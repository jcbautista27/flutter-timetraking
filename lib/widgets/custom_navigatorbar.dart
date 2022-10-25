import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_traking/providers/ui_provider.dart';


class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectMenuOpt = i,
      elevation: 0,
      currentIndex: currentIndex,
      items: const[
        BottomNavigationBarItem(
          icon: Icon(Icons.call_made_outlined),
          label: 'Extra'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pending_actions_outlined),
          label: 'Resumen'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.call_received_sharp),
          label: 'Compesar'
        ),
        

      ]
    );
  }
}