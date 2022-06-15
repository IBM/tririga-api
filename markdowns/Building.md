# Building API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICBuildingCF
  ```

- **Pre-requisite**
  
  - (Optional) Create Parent Property for the intended Building record.

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triNameTX = triNameTX of Building record to be retired
  Update | Payload's triNameTX = triNameTX of Building record to be updated
  
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
  Building Activate | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Building Retire | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triRetire - APIC Send Outbound using Integration Object 
  
  
## Outbound GET URL

```
{{tririga-url}}/oslc/spq/triAPICOutboundBuildingQC?oslc.select=*,spi:triAPICGroupName3LR{spi:triNameTX,spi:triAPICGroupName2LR{spi:triNameTX,spi:triAPICGroupName1LR{spi:triNameTX}}}&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
