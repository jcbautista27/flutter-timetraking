

import 'package:flutter/material.dart';
import 'package:time_traking/pages/compensar_page.dart';
import 'package:time_traking/pages/extra_page.dart';
import 'package:time_traking/pages/home_page.dart';
import 'package:time_traking/pages/loading_page.dart';
import 'package:time_traking/pages/resumen_page.dart';

final Map<String, Widget Function(BuildContext)> appRouter = {

  'loading'   : ( _ ) => const LoadingPage(),
  'home'      : ( _ ) => const HomePage(),
  'extra'     : ( _ ) =>  ExtraPage(),
  'compensar' : ( _ ) => const CompensarPage(),
  'resumen'   : ( _ ) => const ResumenPage()

};