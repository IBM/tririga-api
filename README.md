# TRIRIGA APIs

### Resources

Name | Description
---|---
[TRIRIGA APIs OM Package](/docs/ompackages/) | TRIRIGA Object Migration package that provides all APIs listed here
[POSTMAN Collection](/docs/collection/) | POSTMAN Collection that can be imported in POSTMAN 
[TRIRIGA OSLC Cheat Sheet](/markdowns/oslccheatsheet.md) | Useful OSLC Commands

### Sample JSON Payloads

Module | Business Object | Inbound Payload | Outbound Payload | Outbound Payload using GET
---|---|---|---|---
Asset | [Building Equipment](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) <br> [Retire](/docs/Payload_OUT_Asset.json) | [triAPICOutboundAssetQC](/docs/GET-Payloads/GET-Asset.json)
Classification | [Request Class](/markdowns/RequestClass.md) | - | [Save](/docs/Payload_OUT_Save_RequestClass.json) | 
Classification | [Space Class Current](/markdowns/SpaceClass.md) | - | [Save](/docs/Payload_OUT_Save_SpaceClass.json) |
Classification | [Asset Spec Class](/markdowns/AssetSpecClass.md) | - | [Activate](/docs/Payload_OUT_AssetSpecClass.json) |
People | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json) | [triAPICOutboundPeopleQC](/docs/GET-Payloads/GET-People.json)
Location | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Activate_Property.json) <br> [Retire](/docs/Payload_OUT_Retire_Property.json) | [triAPICOutboundPropertyQC](/docs/GET-Payloads/GET-Property.json)
Location | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Activate_Building.json) <br> [Retire](/docs/Payload_OUT_Retire_Building.json) | [triAPICOutboundBuildingQC](/docs/GET-Payloads/GET-Building.json)
Location | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Activate_Floor.json) <br> [Retire](/docs/Payload_OUT_Retire_Floor.json) | [triAPICOutboundFloorQC](/docs/GET-Payloads/GET-Floor.json)
Location | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) <br> [Retire](/docs/Payload_OUT_Space.json) | [triAPICOutboundSpaceQC](/docs/GET-Payloads/GET-Space.json)
Organization | [Organization](/markdowns/Organization.md) | - [Create/Update](/docs/Payload_IN_Create_Organization.json) <br> - [Retire](/docs/Payload_IN_Retire_Organization.json) | [Activate](/docs/Payload_OUT_Organization.json) <br> [Retire](/docs/Payload_OUT_Organization.json) | [triAPICOutboundOrganizationQC](/docs/GET-Payloads/GET-Organization.json)
Request | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Submit](/docs/Payload_OUT_Submit_ServiceRequest.json) <br> [Retire](/docs/Payload_OUT_Retire_ServiceRequest.json) | [triAPICOutboundServiceRequestQC](/docs/GET-Payloads/GET-ServiceRequest.json)
Task | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Activate](/docs/Payload_OUT_WorkTask.json) | [triAPICOutboundWorkTaskQC](/docs/GET-Payloads/GET-WorkTask.json)


