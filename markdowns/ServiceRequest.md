# Service Request API

## Inbound

#### Endpoint
  ```
  http://tririga-url/oslc/so/triAPICServiceRequestCF
  ```

#### Pre-requisite
  
  - N/A

#### Primary Key Consideration

  Operation | Primary Key Validation
  ---|---
  Retire | Payload's triExternalReferenceTX = triIdTX of Service Request record to be retired
  
#### Rejection Criteria

  Error | Cause
  ---|---
  ERROR: Requested For Does not Exist | No People record exists with the triIdTX value mentioned in triRequestedForTX field of the payload
  ERROR: Requested By Does not Exist | No People record exists with the triIdTX value mentioned in triRequestedByTX field of the payload
  ERROR: Building Does not Exist | No Building record exists with the triNameTX value mentioned in triBuildingTX field of the payload
  ERROR: Request Class Does not Exist | No Request Class record exists with the triNameTX value mentioned in triRequestClassCL field of the payload
  ERROR: Organization Does not Exist | No Organization record exists with the triPathTX value mentioned in triCustomerOrgTX field of the payload
  ERROR: Service Request Does not Exist | No Service Request record exists with the triIdTX value mentioned in triExternalReferenceTX field of the payload


## Outbound - Integration Object

#### Endpoint
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```

#### Pre-requisite
  
  - Update filters in query `triAPICServiceRequest - OSLC - Outbound` to trigger the Outbound for selected Request Classes. <br> Current filter is set to Request Class not null.
  
#### Outbound Workflows

Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Service Request Submit | triServiceRequest - APIC - HTTP Post | triServiceRequest | triServiceRequest - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Service Request Retire | triServiceRequest - APIC - HTTP Post | triServiceRequest | triServiceRequest - triRetire - APIC Send Outbound using Integration Object 
  
## Outbound - GET URL

```
{tririga-url}/oslc/spq/triAPICServiceRequestQC?oslc.select=*&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```
