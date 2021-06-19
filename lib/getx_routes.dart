import 'package:get/get.dart';
import 'package:learngetx/counter_scree.dart';
import 'package:learngetx/unknown_screen.dart';

import 'counter_scree.dart';
import 'home_screen.dart';

final myGetxRoutes = [
  GetPage(name: "/", page: () => HomeScreen()),
  GetPage(name: "/counterscreen", page: () => CounterScreen()),
];

final unKownRoute = GetPage(name: "/unkownroute", page: () => UnKownRoute());
