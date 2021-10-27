# TRIRIGA APIs

<img src="/docs/Architecture.jpg" width=600>


<details><summary><b>Environment Details</b></summary>
 
## TRIRIGA Environment
http://9.30.43.110:8001/index.html <br>
Username: `apiuser` <br>
Password: `1Password*` <br>

## Maximo Environment

http://sportive1.fyre.ibm.com:9080/maximo/webclient/login/login.jsp <br>
Username: `wilson` <br>
Password: `wilson` <br>

http://obturate1.fyre.ibm.com:9080/maximo/webclient/login/login.jsp <br>
Username: `wilson` <br>
Password: `wilson` <br>

http://9.30.51.107:9080/maximo-x/ <br>
Username: `maxadmin` <br>
Password: `maxadmin` <br>

## App Connect Environment
https://r05s72a2f-bluemix.appconnect.ibmcloud.com/home <br>

</details>

[TRIRIGA Field Mapping](https://ibm.box.com/s/x8qmyykjbxsujyi8g93pnjmgva072jw3)

### Downloads
 - [TRIRIGA OM Package](/docs/ompackages/)

## Table of Contents

S.No. | Business Object | Inbound Payload | Outbound Payload | App Connect Flow
---|---|---|---|---
1 | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json)| [inbound_flow](/docs/flows/CMMXPerson2TRI.yaml) <br> outbound_flow
2 | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Property.json) | -
3 | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Building.json) | -
4 | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Floor.json) | -
5 | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) | inbound_flow
6 | [Asset](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) | inbound_flow
7 | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Issue](/docs/Payload_OUT_WorkTask.json) | inbound_flow
8 | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Issue](/docs/Payload_OUT_ServiceRequest.json) | inbound_flow


 - [Postman Collection](/docs/APIConnect_v2.postman_collection.json)

### Automated Schema Generation

   - Import [Schema Generator OM Package](/docs/APICSchemaGenerator.zip)
   - Endpoint to GET Query Capabilities: <br>
   ```
   http://localhost:8008/oslc/spq/apicgetschemaQC?oslc.select=spi:triNameTX,spi:apicresourceLR{spi:apicpropertyLR{*}}&oslc.where=spi:triNameTX="triAllWorkTasksQC"
   ```
   - Endpoint to GET Creation Factories: <br>
   ```
   http://localhost:8008/oslc/spq/apicpostschemaQC?oslc.select=spi:triNameTX,spi:apicresourceLR{spi:apicpropertyLR{*}}&oslc.where=spi:triNameTX="triBIMAssetCF"
   ```

## Node-Red Test Link
```
https://noderedpuri.mybluemix.net/tririga-outbound
```

## TRIRIGA GET APIs

   S.No. | Business Object | GET URL
   ---|---|---
   1 | Work Task | http://localhost:8008/oslc/spq/triAPICWorkTaskQC?oslc.select=*
   2 | People | http://localhost:8008/oslc/spq/triAPICPeopleQC?oslc.select=*
   3 | Space  | http://9.30.43.110:8001/oslc/spq/triAPICSpaceQC?oslc.select=*
   4 | Organization | http://9.30.43.110:8001/oslc/spq/triAPICOrganizationQC?oslc.select=*

   > More information on SPARQL Based GET Requests is available [here](https://github.ibm.com/sumit-puri/oslctraining/blob/master/markdowns/oslccommands.md#sparql-based-get-requests).
   
### Resources
 - [Maximo-Workday Documentation](https://ibm.ent.box.com/file/772399071696?s=mc6c4scdbbfh4psydwtrm8ku288qmxuu)

 - [TRIRIGA DTO Approach Overview](/docs/TRIRIGA_DTO.pdf)



