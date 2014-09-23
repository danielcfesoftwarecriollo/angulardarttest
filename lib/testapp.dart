library testapp;


import 'dart:async';
import 'dart:html';



//import 'package:angular_ui/utils/injectable_service.dart';
import 'package:polymer/polymer.dart';
import 'package:angular/routing/module.dart';
import 'package:angular/application_factory.dart';
import 'package:angular_ui/angular_ui.dart';
import 'package:angular_node_bind/angular_node_bind.dart' show NodeBindModule;
import 'package:angular/angular.dart';


part 'controllers/testapp_controller.dart';
part 'routes/testapp_routes.dart';

class TestappModule extends Module {

  TestappModule() {
    type(RouteInitializerFn, implementedBy: TestappRouterInitializer);
    factory(NgRoutingUsePushState,(_) => new NgRoutingUsePushState.value(false));
    install(new AngularUIModule());
    bind(TestappController);
  }
}

@initMethod
start() {
  initPolymer().run((){
    applicationFactory()
    .addModule(new TestappModule())
    .addModule(new NodeBindModule()).run();
  });
}
