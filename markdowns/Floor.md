# Floor API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICFloorCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_Floor.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_Floor.json)
  
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
  Floor Activate | [Payload](/docs/Payload_OUT_Floor.json) | triFloor - APIC - HTTP Post | triFloor | triFloor - triActivate - Send Outbound using Integration Object 
  
