# TRIRIGA APIs

### Downloads
 - [TRIRIGA OM Package](/docs/ompackages/)
 - [Postman Collection of JSON Payloads](/docs/APIConnect_v2.postman_collection.json)

### Sample JSON Payloads

S.No. | Business Object | Inbound Payload | Outbound Payload
---|---|---|---
1 | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json)
2 | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Property.json) 
3 | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Building.json) 
4 | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Floor.json) 
5 | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) 
6 | [Asset](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) 
7 | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Issue](/docs/Payload_OUT_WorkTask.json) | inbound_flow
8 | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Issue](/docs/Payload_OUT_ServiceRequest.json) 


## TRIRIGA GET APIs

   S.No. | Business Object | GET URL
   ---|---|---
   1 | Work Task | http://<host>/oslc/spq/triAPICWorkTaskQC?oslc.select=*
   2 | People | http://<host>/oslc/spq/triAPICPeopleQC?oslc.select=*
   3 | Space  | http://<host>/oslc/spq/triAPICSpaceQC?oslc.select=*
   4 | Organization | http://<host>/oslc/spq/triAPICOrganizationQC?oslc.select=*

   > More information on SPARQL Based GET Requests is available [here](https://github.ibm.com/sumit-puri/oslctraining/blob/master/markdowns/oslccommands.md#sparql-based-get-requests).
   
### Resources

 - [TRIRIGA DTO Approach Overview](/docs/TRIRIGA_DTO.pdf)



