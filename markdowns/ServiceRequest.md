# Service Request API

## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICServiceRequestCF
  ```

- **Pre-requisite**
  
  - N/A

- **Primary Key Consideration**

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triExternalReferenceTX = triIdTX of Service Request record to be retired
  
- **Rejection Criteria**

  Error | Cause
  ---|---
  ERROR: Requested For Does not Exist | No People record exists with the triIdTX value mentioned in triRequestedForTX field of the payload
  ERROR: Requested By Does not Exist | No People record exists with the triIdTX value mentioned in triRequestedByTX field of the payload
  ERROR: Building Does not Exist | No Building record exists with the triNameTX value mentioned in triBuildingTX field of the payload
  ERROR: Request Class Does not Exist | No Request Class record exists with the triNameTX value mentioned in triRequestClassCL field of the payload
  ERROR: Organization Does not Exist | No Organization record exists with the triPathTX value mentioned in triCustomerOrgTX field of the payload
  ERROR: Service Request Does not Exist | No Service Request record exists with the triIdTX value mentioned in triExternalReferenceTX field of the payload


## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Service Request Activate | [Payload](/docs/Payload_OUT_ServiceRequest.json) | triServiceRequest - APIC - HTTP Post | triServiceRequest | triServiceRequest - triActivate - Send Outbound using Integration Object 
  
