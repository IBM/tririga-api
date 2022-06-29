# Building API


## Inbound

- **Endpoint**
  ```
  http://tririga-url/oslc/so/triAPICBuildingCF
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

## Outbound - Integration Object

- **Endpoint**
  ```
  https://webhook.site/cd95c8b8-2f7c-4c77-b474-326bbd5b3e33
  ```
  
- Trigger | IO Record | Workflow Module | Workflow Name 
  ---|---|---|---
  Building Activate | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triFinalApprovalHidden - APIC Send Outbound using Integration Object 
  Building Retire | triBuilding - APIC - HTTP Post | triBuilding | triBuilding - triRetire - APIC Send Outbound using Integration Object 
  
  
## Outbound - GET URL

```
{{tririga-url}}/oslc/spq/triAPICOutboundBuildingQC?oslc.select=*,spi:triAPICBuildingParent3LR{spi:triNameTX,spi:triAPICBuildingParent2LR{spi:triNameTX,spi:triAPICBuildingParent1LR{spi:triNameTX}}}&oslc.paging=true&oslc.page=1&oslc.pageSize=2
```

## Outbound - Load Sheet

AppConnect can also generate csv based Load Sheets from the above GET URL. Below is the mapping for Load Sheet header with JSON Payload


#### Load Sheet - 1

Load Sheet Header | JSON Property from OSLC GET
---|---
Organization Name | spi:triLegalNameTX
GROUPNAME1 | spi:triAPICBuildingParent3LR{spi:triNameTX,spi:triAPICBuildingParent2LR{spi:triNameTX,spi:triAPICBuildingParent1LR{spi:triNameTX}}}
GROUPNAME2 | spi:triAPICBuildingParent3LR{spi:triNameTX,spi:triAPICBuildingParent2LR{spi:triNameTX}}
GROUPNAME3 | spi:triAPICBuildingParent3LR{spi:triNameTX}
LOCATION | spi:triNameTX
LOCATIONID | spi:triIdTX
DESCRIPTION | spi:triDescriptionTX
STREETADDRESS | spi:triAddressTX
CITY	| spi:triCityTX
STATEPROVINCE	| spi:triStateProvTX
POSTALCODE	 | spi:triZipPostalTX
COUNTRY	| spi:triCountryTX
LATITUDEY	| spi:triGisLatitudeNU
LONGITUDEX	| spi:triGisLongitudeNU
LOCATIONCLOSEDATE | spi:triActiveEndDA

#### Load Sheet - 2

Load Sheet Header | JSON Property from OSLC GET
---|---
LOCATION | spi:triNameTX
LOCATIONID | spi:triIdTX
HEADCOUNT	| spi:triHeadcountNU
FLOORAREA | spi:triTotalAreaCalcNU

									
