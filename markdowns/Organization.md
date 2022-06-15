# Organization API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICOrganizationCF
  ```

- **Pre-requisite**
  
  N/A

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triNameTX = triNameTX of Organization record to be retired
  Update | Payload's triNameTX = triNameTX of Organization record to be updated
  
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
  Organization Activate | Organization - APIC - HTTP Post | Organization | Organization - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  
## Outbound - GET URL

```
{tririga-url}/oslc/spq/triAPICOrganizationQC?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
