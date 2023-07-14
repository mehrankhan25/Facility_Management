using app from '../db/demo';


service CatalogService {
 entity demo
    as projection on app.demo;
 
}
