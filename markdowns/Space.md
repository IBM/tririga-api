# Space API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICSpaceCF
  ```

- **Pre-requisite**
  
  - Create Floor record under which Space record is intended to be added

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triExternalReferenceTX = triRecordIdSY of Space record to be retired
  Update | Payload's triExternalReferenceTX = triRecordIdSY of Space record to be updated
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  ERROR: Parent Floor Does Not Exist | Floor under which the space needs to be created does not exist



## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Space Activate | triSpace - APIC - HTTP Post | triSpace | triSpace - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Space Retire | triSpace - APIC - HTTP Post | triSpace | triSpace - triRetire - APIC Send Outbound using Integration Object 
  
