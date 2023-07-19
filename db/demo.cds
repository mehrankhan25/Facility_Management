namespace app;
using {managed} from '@sap/cds/common';

entity demo {
    key ID : Integer;
    name : String(50);

}

entity User : managed {
  key ID: Integer;
  name: String(50);
  email: String(30);
  contact: String(20);
  gender: Gender;
  dob: Date @cds.format.date;
  cnic: String(20);
  resident_type_ID: Integer;
  resident_type: Association to resident_type on resident_type.id = $self.resident_type_ID; 
}

type Gender : Integer enum {
  Female = 1;
  Male = 2;
  Other = 3;
}

type Address {
  street: String(100);
  city: String(100);
  state: String(100);
  zip: String(100);
}

entity building {
  key id: Integer;
  name: String(100);
  address: Address;
  building_type_ID: Integer;
  building_type: Association to building_type on building_type.id = $self.building_type_ID;
}

entity building_type {
  key id: Integer;
  type_name: String(100);
  buildings: Association to building on buildings.building_type_ID = $self.id;
}

entity building_floor {
  key id: Integer;
  floor_no: Integer;
  area: String(100);
  rooms_no: Integer;
  // Foreign key referencing the 'building' entity
  building_ID: Integer;
  building: Association to building on building.id = building_ID;
}

entity resident_type {
  key id: Integer;
  type_name: String(100);
  // Foreign key referencing the 'building' entity
  building_ID: Integer;
  building: Association to building on building.id = building_ID;
}