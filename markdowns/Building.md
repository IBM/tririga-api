# Building API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICBuildingCF
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

## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Building Activate | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Building Retire | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triRetire - APIC Send Outbound using Integration Object 
