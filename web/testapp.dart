library testappApp;
//import 'package:polymer/builder.dart'; this import fails
@MirrorsUsed(targets: const['testapp'], override: '*')

import 'dart:mirrors';
import 'package:testapp/testapp.dart';


void main() {
  start();
}
