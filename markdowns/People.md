# People API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICPeopleCF
  ```
  
- **Basic Authentication** <br>
  User: `apiuser` <br>
  Password: `1Password*`

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_People.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_People.json)
  
- **TRIRIGA Pre-Work**
  - Create Locations in TRIRIGA
    - \Locations\Maximo Property
    - \Locations\Maximo Property\Maximo Bldg
  - Create Organization in TRIRIGA
    - \Organizations\Maximo Org
  
- **Validations**

  Type | Operation | Field | Description
  ---|---|---|---
  App Connect | Create/Update | `spi:triPrimaryOrgPathTX` | Primary Organization Path should exist in TRIRIGA
  TRIRIGA | Create/Update | `spi:triPrimaryLocPathTX` | Primary Location Path should exist in TRIRIGA
  TRIRIGA | Retire | - | People record does not exist if combination of `spi:triIdTX`, `spi:triFirstNameTX`, `spi:triLastNameTX` does not match


## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  People Activate | [Payload](/docs/Payload_OUT_People.json) | triPeople - APIC - HTTP Post | triPeople | triPeople - triActivate - Send Outbound using Integration Object 
  
