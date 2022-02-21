# TRIRIGA APIs

Download the [TRIRIGA OM Package](/docs/ompackages/) that consists of below TRIRIGA APIs.

### Sample JSON Payloads

S.No. | Business Object | Inbound Payload | Outbound Payload
---|---|---|---
1 | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json)
2 | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate/Retire](/docs/Payload_OUT_Property.json) 
3 | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate/Retire](/docs/Payload_OUT_Building.json) 
4 | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate/Retire](/docs/Payload_OUT_Floor.json) 
5 | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate/Retire](/docs/Payload_OUT_Space.json) 
6 | [Asset](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate/Retire](/docs/Payload_OUT_Asset.json) 
7 | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Issue/Retire](/docs/Payload_OUT_ServiceRequest.json)
8 | [Request Class](/markdowns/RequestClass.md) | - | [Create](/docs/Payload_OUT_RequestClass.json) 
9 | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Issue](/docs/Payload_OUT_WorkTask.json) | inbound_flow


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



