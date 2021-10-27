# Property API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICPropertyCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_Property.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_Propertye.json)
  
- **Validations**

  Type | Operation | Field | Description
  ---|---|---|---


## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Property Activate | [Payload](/docs/Payload_OUT_Property.json) | triProperty - APIC - HTTP Post | triProperty | triProperty - triActivate - Send Outbound using Integration Object 
  
