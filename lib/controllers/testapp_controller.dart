part of  testapp;

@Controller(selector: '[testapp-controller]', publishAs: 'ctrl')
class TestappController{
  List<Location> _locations;
    
  TestappController(){
    load_locations();
  }
 
  List<Location> get locations => this._locations;
  void load_locations(){
    this._locations = [];
  }
  
}