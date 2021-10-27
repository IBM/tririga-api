# Space API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICSpaceCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_Space.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_Space.json)
  
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
  Space Activate | [Payload](/docs/Payload_OUT_Space.json) | triSpace - APIC - HTTP Post | triSpace | triSpace - triActivate - Send Outbound using Integration Object 
  
