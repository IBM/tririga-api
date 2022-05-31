# Work Task API


#### Endpoint
  ```
  http://tririga-url/oslc/so/triAPICWorkTaskCF
  ```

#### Pre-requisite
  
  - N/A

#### Primary Key Consideration

  Operation | Primary Key Validation
  ---|---
  Update | Payload's triNameTX = triNameTX of Work Task record to be updated
  
#### Rejection Criteria

  Error | Cause
  ---|---
  ERROR: Working Location does not exist | No Location record exists with the triPathTX value mentioned in triWorkingLocationTX field of the payload
  ERROR: Resource Person does not Exist | No People record exists with the triNameTX value mentioned in triResourceIdentifierTX field of the payload
  ERROR: Resource Asset Does not Exist | No Asset record exists with the triNameTX value mentioned in triResourceIdentifierTX field of the payload
  ERROR: Resource Location Does not Exist | No Location record exists with the triPathTX value mentioned in triResourceIdentifierTX field of the payload
  ERROR: Resource Organization Does not Exist | No Organization record exists with the triPathTX value mentioned in triResourceIdentifierTX field of the payload
  ERROR: Resource Role Does not Exist | No Role record exists with the triNameTX value mentioned in triResourceIdentifierTX field of the payload

## Outbound

- **Endpoint**
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Work Task Activate | triWorkTask - APIC - HTTP Post | triWorkTask | triWorkTask - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Work Task Complete | triWorkTask - APIC - HTTP Post | triWorkTask | triWorkTask - triCompleteFinalHidden - APIC Send Outbound using Integration Object
