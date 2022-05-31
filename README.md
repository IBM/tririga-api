# TRIRIGA APIs

### Resources

- [TRIRIGA APIs OM Package](/docs/ompackages/)
- [POSTMAN Collection](/docs/collection/)
- [TRIRIGA OSLC Cheat Sheet](/markdowns/oslccheatsheet.md)

### Sample JSON Payloads

Module | Business Object | Inbound Payload | Outbound Payload | Query Capability
---|---|---|---|---
Asset | [Building Equipment](/markdowns/Asset.md) | - [Create/Update](/docs/Payload_IN_Create_Asset.json) <br> - [Retire](/docs/Payload_IN_Retire_Asset.json) | [Activate](/docs/Payload_OUT_Asset.json) <br> [Retire](/docs/Payload_OUT_Asset.json) | triAPICAssetQC
Classification | [Request Class](/markdowns/RequestClass.md) | - | [Save](/docs/Payload_OUT_Save_RequestClass.json) | 
Classification | [Space Class Current](/markdowns/SpaceClass.md) | - | [Save](/docs/Payload_OUT_Save_SpaceClass.json) |
Classification | [Asset Spec Class](/markdowns/AssetSpecClass.md) | - | [Activate](/docs/Payload_OUT_AssetSpecClass.json) |
People | [People](/markdowns/People.md) | - [Create/Update](/docs/Payload_IN_Create_People.json) <br> - [Retire](/docs/Payload_IN_Retire_People.json) | [Activate](/docs/Payload_OUT_Activate_People.json) <br> [Retire](/docs/Payload_OUT_Retire_People.json) | triAPICPeopleQC
Location | [Property](/markdowns/Property.md) | - [Create/Update](/docs/Payload_IN_Create_Property.json) <br> - [Retire](/docs/Payload_IN_Retire_Property.json) | [Activate](/docs/Payload_OUT_Activate_Property.json) <br> [Retire](/docs/Payload_OUT_Retire_Property.json) | triAPICPropertyQC
Location | [Building](/markdowns/Building.md) | - [Create/Update](/docs/Payload_IN_Create_Building.json) <br> - [Retire](/docs/Payload_IN_Retire_Building.json) | [Activate](/docs/Payload_OUT_Activate_Building.json) <br> [Retire](/docs/Payload_OUT_Retire_Building.json) | triAPICBuildingQC
Location | [Floor](/markdowns/Floor.md) | - [Create/Update](/docs/Payload_IN_Create_Floor.json) <br> - [Retire](/docs/Payload_IN_Retire_Floor.json) | [Activate](/docs/Payload_OUT_Activate_Floor.json) <br> [Retire](/docs/Payload_OUT_Retire_Floor.json) | triAPICFloorQC
Location | [Space](/markdowns/Space.md) | - [Create/Update](/docs/Payload_IN_Create_Space.json) <br> - [Retire](/docs/Payload_IN_Retire_Space.json) | [Activate](/docs/Payload_OUT_Space.json) <br> [Retire](/docs/Payload_OUT_Space.json) | triAPICSpaceQC
Organization | [Organization](/markdowns/Organization.md) | - [Create/Update](/docs/Payload_IN_Create_Organization.json) <br> - [Retire](/docs/Payload_IN_Retire_Organization.json) | [Activate](/docs/Payload_OUT_Organization.json) <br> [Retire](/docs/Payload_OUT_Organization.json) | triAPICOrganizationQC
Request | [Service Request](/markdowns/ServiceRequest.md) | - [Create](/docs/Payload_IN_Create_ServiceRequest.json) <br> - [Retire](/docs/Payload_IN_Retire_ServiceRequest.json) | [Submit](/docs/Payload_OUT_Submit_ServiceRequest.json) <br> [Retire](/docs/Payload_OUT_Retire_ServiceRequest.json) | triAPICServiceRequestQC
Task | [Work Task](/markdowns/WorkTask.md) | - [Create/Update](/docs/Payload_IN_Create_WorkTask.json) | [Activate](/docs/Payload_OUT_WorkTask.json) | triAPICWorkTaskQC

### GET URL

```
{tririga-url}/oslc/spq/triAPICAssetQC?oslc.select=*
```
