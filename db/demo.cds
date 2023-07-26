// namespace MANAGEMENT;
using {managed} from '@sap/cds/common';

context MANAGEMENT {
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
  building_ID: Integer;
  building: Association to building on building.id = $self.building_ID; 
   building_type_ID: Integer;
  building_type: Association to building_type on building_type.id = $self.building_type_ID;
   building_floor_ID: Integer;
  building_floor: Association to building_floor on building_floor.id = $self.building_floor_ID;
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

entity building : managed{
  key id: Integer;
  name: String(100);
  address: Address;
 
}
 
entity building_type : managed{
  key id: Integer;
  building_type_name: String(100);
}

entity building_floor : managed{
  key id: Integer;
  floor_no: Integer;
  area: String(100);
  flat_no: Integer;
}

entity resident_type : managed{
  key id: Integer;
  resident_type_name: String(100);
}

}

@cds.persistence.exists 
@cds.persistence.calcview 
Entity MANAGEMENT_USERS {
key     CREATEDAT: Timestamp  @title: 'CREATEDAT: CREATEDAT' ; 
        CREATEDBY: String(255)  @title: 'CREATEDBY: CREATEDBY' ; 
        MODIFIEDAT: Timestamp  @title: 'MODIFIEDAT: MODIFIEDAT' ; 
        MODIFIEDBY: String(255)  @title: 'MODIFIEDBY: MODIFIEDBY' ; 
        ID: Integer  @title: 'ID: ID' ; 
        NAME: String(50)  @title: 'NAME: NAME' ; 
        EMAIL: String(30)  @title: 'EMAIL: EMAIL' ; 
        CONTACT: String(20)  @title: 'CONTACT: CONTACT' ; 
        GENDER: Integer  @title: 'GENDER: GENDER' ; 
        DOB: Date  @title: 'DOB: DOB' ; 
        CNIC: String(20)  @title: 'CNIC: CNIC' ; 
        BUILDING_TYPE_ID: Integer  @title: 'BUILDING_TYPE_ID: BUILDING_TYPE_ID' ; 
        BUILDING_FLOOR_ID: Integer  @title: 'BUILDING_FLOOR_ID: BUILDING_FLOOR_ID' ; 
        RESIDENT_TYPE_NAME: String(100)  @title: 'RESIDENT_TYPE_NAME: RESIDENT_TYPE_NAME' ; 
        NAME_1: String(100)  @title: 'NAME_1: NAME' ; 
        ADDRESS_STREET: String(100)  @title: 'ADDRESS_STREET: ADDRESS_STREET' ; 
        ADDRESS_CITY: String(100)  @title: 'ADDRESS_CITY: ADDRESS_CITY' ; 
        ADDRESS_STATE: String(100)  @title: 'ADDRESS_STATE: ADDRESS_STATE' ; 
        ADDRESS_ZIP: String(100)  @title: 'ADDRESS_ZIP: ADDRESS_ZIP' ; 
        BUILDING_TYPE_NAME: String(100)  @title: 'BUILDING_TYPE_NAME: BUILDING_TYPE_NAME' ; 
        FLOOR_NO: Integer  @title: 'FLOOR_NO: FLOOR_NO' ; 
        AREA: String(100)  @title: 'AREA: AREA' ; 
        FLAT_NO: Integer  @title: 'FLAT_NO: FLAT_NO' ; 
}
