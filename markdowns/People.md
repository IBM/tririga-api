# People API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICPeopleCF
  ```

- **Pre-requisite**
  
  - Create People Template record with user profile intended to be applied
  - Create an Organization record for the intended person
  - Create a Location record for the intended person

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



## Outbound - Integration Object

- **Test Endpoint**
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Activate | triPeople - APIC - HTTP Post | triPeople | triPeople - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Retire | triPeople - APIC - HTTP Post | triPeople | triPeople - triRetire - APIC Send Outbound using Integration Object 
  
## Outbound - GET URL

```
{tririga-url}/oslc/spq/triAPICOutboundPeopleQC?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
