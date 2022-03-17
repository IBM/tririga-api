# Space Class API


## Inbound

There is no Maximo to TRIRIGA integration

## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Space Class Save | [Payload](/docs/Payload_OUT_Save_SpaceClass.json) | triSpaceClass - APIC - HTTP Post | triSpaceClassCurrent | triSpaceClassCurrent - triSave - APIC Send Outbound using Integration Object
  
