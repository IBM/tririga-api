# TRIRIGA APIs

Download the [TRIRIGA OM Package](/docs/ompackages/) that consists of below TRIRIGA APIs.

### Sample JSON Payloads

Module | Business Object | Inbound Payload | Outbound Payload
---|---|---|---
Asset | [Building Equipment](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) <br> [Retire](/docs/Payload_OUT_Asset.json)
Classification | [Request Class](/markdowns/RequestClass.md) | - | [Save](/docs/Payload_OUT_Save_RequestClass.json) 
Classification | [Space Class Current](/markdowns/SpaceClass.md) | - | [Save](/docs/Payload_OUT_Save_SpaceClass.json)
Classification | [Asset Spec Class](/markdowns/AssetSpecClass.md) | - | [Activate](/docs/Payload_OUT_AssetSpecClass.json)
People | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json)
Location | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Property.json) <br> [Retire](/docs/Payload_OUT_Property.json) 
Location | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Building.json) <br> [Retire](/docs/Payload_OUT_Building.json) 
Location | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Floor.json) <br> [Retire](/docs/Payload_OUT_Floor.json)
Location | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) <br> [Retire](/docs/Payload_OUT_Space.json)
Organization | [Organization](/markdowns/Organization.md) | - | [Activate](/docs/Payload_OUT_Organization.json)
Request | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Issue](/docs/Payload_OUT_ServiceRequest.json) <br> [Retire](/docs/Payload_OUT_ServiceRequest.json)
Task | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Issue](/docs/Payload_OUT_WorkTask.json) | inbound_flow





These JSON Sample Payloads are available in a [Postman Collection](/docs/APIConnect_v2.postman_collection.json) as well.

## TRIRIGA GET APIs

   S.No. | Business Object | GET URL
   ---|---|---
   1 | Work Task | http://url/oslc/spq/triAPICWorkTaskQC?oslc.select=*
   2 | People | http://url/oslc/spq/triAPICPeopleQC?oslc.select=*
   3 | Space  | http://url/oslc/spq/triAPICSpaceQC?oslc.select=*
   4 | Organization | http://url/oslc/spq/triAPICOrganizationQC?oslc.select=*
   
### Resources
 
 - [OSLC Cheat Sheet](/markdowns/oslccheatsheet.md)



