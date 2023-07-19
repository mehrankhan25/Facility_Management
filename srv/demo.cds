using app from '../db/demo';


service CatalogService {

 entity Users as projection on app.User;
 entity building  as projection on app.building ;
 entity building_type  as projection on app.building_type ;
 entity building_floor  as projection on app.building_floor ;
 entity resident_type  as projection on app.resident_type ;

// @requires: 'Admin'
// @restrict: [{ grant: 'READ', where: 'name = ''test4'''}]
 
}
