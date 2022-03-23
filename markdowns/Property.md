# Property API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICPropertyCF
  ```

- **Pre-requisite**
  
  - N/A

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triNameTX = triNameTX of Property record to be retired
  Update | Payload's triNameTX = triNameTX of Property record to be updated
  
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
  Property Activate | triProperty - APIC - HTTP Post | triProperty | triProperty - triActivate - Send Outbound using Integration Object 
  
