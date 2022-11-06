import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_traking/pages/compensar_page.dart';
import 'package:time_traking/pages/extra_page.dart';
import 'package:time_traking/pages/resumen_page.dart';
import 'package:time_traking/providers/ui_provider.dart';
import 'package:time_traking/widgets/custom_drawer.dart';

import 'package:time_traking/widgets/custom_navigatorbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // static const textAppBar = 'Hour Traking';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xffEFEFEF),
        elevation: 0,
        // title: Text(textAppBar.toString(),),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.more_vert_outlined, color: Colors.black,),
            onPressed: () => Scaffold.of(context).openDrawer(),
          )
            
        ),
      ),
      
      body: _HomePageBody(),
      backgroundColor: const Color(0xffEFEFEF),
      bottomNavigationBar: const CustomNavigatorBar(),
      // floatingActionButton: const CustomFloatingButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
   );
  }
}

// ignore: unused_element
class _HomePageBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectMenuOpt;

    switch (currentIndex) {
      case 0:
        return ExtraPage();
      case 1:
        return const ResumenPage();
      case 2:
        return const CompensarPage();
        
        
      default:
        return const ResumenPage();
    }
    
  }
}