# Building API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICBuildingCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_Building.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_Building.json)
  
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
  Building Activate | [Payload](/docs/Payload_OUT_Building.json) | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triActivate - Send Outbound using Integration Object 
  
