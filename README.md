# TRIRIGA APIs

Download the [TRIRIGA OM Package](/docs/ompackages/) that consists of below TRIRIGA APIs.

### Sample JSON Payloads

Module | Business Object | Inbound Payload | Outbound Payload | GET url
---|---|---|---|---
Asset | [Building Equipment](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) <br> [Retire](/docs/Payload_OUT_Asset.json) | /oslc/spq/triAPICAssetQC?oslc.select=*
Classification | [Request Class](/markdowns/RequestClass.md) | - | [Save](/docs/Payload_OUT_Save_RequestClass.json) | 
Classification | [Space Class Current](/markdowns/SpaceClass.md) | - | [Save](/docs/Payload_OUT_Save_SpaceClass.json) |
Classification | [Asset Spec Class](/markdowns/AssetSpecClass.md) | - | [Activate](/docs/Payload_OUT_AssetSpecClass.json) |
People | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json) | /oslc/spq/triAPICPeopleQC?oslc.select=*
Location | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Activate_Property.json) <br> [Retire](/docs/Payload_OUT_Retire_Property.json) | /oslc/spq/triAPICPropertyQC?oslc.select=*
Location | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Activate_Building.json) <br> [Retire](/docs/Payload_OUT_Retire_Building.json) | /oslc/spq/triAPICBuildingQC?oslc.select=*
Location | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Activate_Floor.json) <br> [Retire](/docs/Payload_OUT_Retire_Floor.json) | /oslc/spq/triAPICFloorQC?oslc.select=*
Location | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) <br> [Retire](/docs/Payload_OUT_Space.json) | /oslc/spq/triAPICSpaceQC?oslc.select=*
Organization | [Organization](/markdowns/Organization.md) | - [Create/Update](/docs/Payload_IN_Create_Organization.json) <br> - [Retire](/docs/Payload_IN_Retire_Organization.json) | [Activate](/docs/Payload_OUT_Organization.json) <br> [Retire](/docs/Payload_OUT_Organization.json) | /oslc/spq/triAPICOrganizationQC?oslc.select=*
Request | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Submit](/docs/Payload_OUT_Submit_ServiceRequest.json) <br> [Retire](/docs/Payload_OUT_Retire_ServiceRequest.json) | /oslc/spq/triAPICServiceRequestQC?oslc.select=*
Task | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Activate](/docs/Payload_OUT_WorkTask.json) | /oslc/spq/triAPICWorkTaskQC?oslc.select=*





These JSON Sample Payloads are available in a [Postman Collection](/docs/collection/) as well.

## TRIRIGA GET APIs

   S.No. | Business Object | GET URL
   ---|---|---
   1 | Work Task | http://url/oslc/spq/triAPICWorkTaskQC?oslc.select=*
   2 | People | http://url/oslc/spq/triAPICPeopleQC?oslc.select=*
   3 | Space  | http://url/oslc/spq/triAPICSpaceQC?oslc.select=*
   4 | Organization | http://url/oslc/spq/triAPICOrganizationQC?oslc.select=*
   5 | Floor | http://url/oslc/spq/triAPICFloorQC?oslc.select=*
   
### Resources
 
 - [OSLC Cheat Sheet](/markdowns/oslccheatsheet.md)



