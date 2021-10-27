# Work Task API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICWorkTaskCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_WorkTask.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_WorkTask.json)
  
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
  Work Task Activate | [Payload](/docs/Payload_OUT_WorkTask.json) | triWorkTask - APIC - HTTP Post | triWorkTask | triWorkTask - triActivate - Send Outbound using Integration Object 
  
