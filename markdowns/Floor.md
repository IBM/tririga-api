# Floor API

## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICFloorCF
  ```

- **Pre-requisite**
  
  - Create Parent Building for the intended Floor record

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triNameTX = triNameTX of Floor record to be retired
  Update | Payload's triNameTX = triNameTX of Floor record to be updated
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  ERROR: Parent Building Does Not Exist | The Building under which Floor record is intended to be child of does not exist


## Outbound - Integration Object

- **Endpoint**
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Floor Activate | triFloor - APIC - HTTP Post | triFloor | triFloor - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Floor Retire | triFloor - APIC - HTTP Post | triFloor | triFloor - triRetire - APIC Send Outbound using Integration Object 
  
## Outbound - GET URL

```
{tririga-url}/oslc/spq/triAPICFloorQC?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
  
