using MANAGEMENT as my from '../db/demo';
using MANAGEMENT_USERS from '../db/demo';

service CatalogService @(requires: 'authenticated-user') {

  entity Users @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grant: 'CREATE', to: 'Add'}
  ]) as projection on my.User;


  entity MANAGEMENT_Users @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grant: 'CREATE', to: 'Add'}
  ]) as projection on MANAGEMENT_USERS;

 
  entity building @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grand: 'CREATE', to: 'Add'}
  ]) as projection on my.building;

 entity building_type @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grand: 'CREATE', to: 'Add'}
  ])  as projection on my.building_type ;

 entity building_floor @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grand: 'CREATE', to: 'Add'}
  ]) as projection on my.building_floor ;

 entity resident_type @(restrict: [
    { grant: ['*'], to: 'Admin' },
    { grant: 'READ', to: 'View' },
    {grand: 'CREATE', to: 'Add'}
  ]) as projection on my.resident_type ;

 
}
