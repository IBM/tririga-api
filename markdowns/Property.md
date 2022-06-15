# Property API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICPropertyCF
  ```

- **Pre-requisite**
  
  - N/A

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triNameTX = triNameTX of Property record to be retired
  Update | Payload's triNameTX = triNameTX of Property record to be updated
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  N/A | N/A


## Outbound - Integration Object

- **Endpoint**
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Property Activate | triProperty - APIC - HTTP Post | triProperty | triProperty - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Property Retire | triProperty - APIC - HTTP Post | triProperty | triProperty - triRetire - APIC Send Outbound using Integration Object 

## Outbound - GET URL

```
{tririga-url}/oslc/spq/{Query Capability}?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
