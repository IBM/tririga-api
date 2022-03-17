# Request Class API


## Inbound

There is no Maximo to TRIRIGA integration

## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Request Class Save | [Payload](/docs/Payload_OUT_Save_RequestClass.json) | triRequestClass - APIC - HTTP Post | triRequestClass | triRequestClass - triSave - Send Outbound using Integration Object 
  
