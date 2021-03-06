import 'package:polymer/polymer.dart';
//import '../../showcase/item.dart';
import 'dart:html';
import 'package:html_components/html_components.dart' show DatatableComponent, GrowlComponent;
import 'package:testapp/car.dart' as data;

@CustomTag('datatable-sort-demo')
class DatatableSortDemo extends PolymerElement {
  
  @observable List<data.Car> cars = toObservable(data.cars);
  
  DatatableSortDemo.created() : super.created();
  
  void onColumnSorted(CustomEvent event, var detail, DatatableComponent target) {
    GrowlComponent.postMessage('Sorted column:', detail);
  }
  
}