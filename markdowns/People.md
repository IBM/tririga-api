# People API


## Inbound

- **Endpoint**
  ```
  http://<tririga-url>/oslc/so/triAPICPeopleCF
  ```

- **Pre-requisite**
  
  - Create People Template record with user profile intended to be applied

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triExternalReferenceTX = triRecordIdSY of People record to be retired
  Update | Payload's triUserNameTX = triUserNameTX of People record to be updated
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  ERROR: Multiple People exist with same username | Multiple People with same usernames are not allowed in TRIRIGA
  ERROR: People record does not exist | People intended to be retired does not exist with the triRecordIdSY passed in triExternalReferenceTX



## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  People Activate | [Payload](/docs/Payload_OUT_People.json) | triPeople - APIC - HTTP Post | triPeople | triPeople - triActivate - Send Outbound using Integration Object 
  
