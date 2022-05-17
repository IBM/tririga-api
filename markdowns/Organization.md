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
  Retire | Payload's triExternalReferenceTX = triRecordIdSY of Organization record to be retired
  Update | Payload's triExternalReferenceTX = triRecordIdSY of Organization record to be updated
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  N/A | N/A



## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Organization Activate | Organization - APIC - HTTP Post | Organization | Organization - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  
