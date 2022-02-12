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
  Request Class Create | [Payload](/docs/Payload_OUT_RequestClass.json) | triRequestClass - APIC - HTTP Post | triRequestClass | triRequestClass - triFinalApprovalHidden - Send Outbound using Integration Object 
  
