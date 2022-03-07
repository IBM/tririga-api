# Organization API


## Inbound

There is no Maximo to TRIRIGA integration

## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Organization Activate | [Payload](/docs/Payload_OUT_Organization.json) | Organization - APIC - HTTP Post | Organization | Organization - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  
