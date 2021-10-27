# Service Request API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICServiceRequestCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_ServiceRequest.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_ServiceRequest.json)
  
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
  Service Request Activate | [Payload](/docs/Payload_OUT_ServiceRequest.json) | triServiceRequest - APIC - HTTP Post | triServiceRequest | triServiceRequest - triActivate - Send Outbound using Integration Object 
  
