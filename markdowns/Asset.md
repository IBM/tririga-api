# Asset API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICAssetCF
  ```

- **Pre-requisite**
  
  - Create Building Equipment Specification record to which the intended Asset record would be associated to.

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triExternalReferenceTX = triRecordIdSY of Asset record to be retired
  Update | Payload's triExternalReferenceTX = triRecordIdSY of Asset record to be updated
  
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
  Building Equipment Activate | triBuilding Equipment - APIC - HTTP Post | triAsset | triBuildingEquipment - triActivate - Send Outbound using Integration Object 
  Building Equipment Retire | triBuilding Equipment - APIC - HTTP Post | triAsset | triBuildingEquipment - triRetire - APIC Send Outbound using Integration Object  
  
  
## Outbound - GET URL

```
{tririga-url}/oslc/spq/{Query Capability}?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=100
```
