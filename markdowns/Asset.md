# Asset API


## Inbound

- **Endpoint**
  ```
  http://9.30.43.110:8001/oslc/so/triAPICAssetCF
  ```

- Supported Operations | Payload 
  ---|---
  Create/Update | [Sample Payload](/docs/Payload_IN_Create_Asset.json) 
  Retire | [Sample Payload](/docs/Payload_IN_Retire_Asset.json)
  
- **Validations**

  Type | Operation | Field | Description
  ---|---|---|---


## Outbound

- **Endpoint**
  ```
  https://noderedpuri.mybluemix.net/tririga-outbound
  ```
  
- Trigger | Payload/Schema |IO Record | Workflow Module | Workflow Name 
  ---|---|---|---|---
  Building Equipment Activate | [Payload](/docs/Payload_OUT_Asset.json) <br> [Schema](/docs/Schema_OUT_Asset.json) | triBuilding Equipment - APIC - HTTP Post | triAsset | triBuildingEquipment - triActivate - Send Outbound using Integration Object 
  
