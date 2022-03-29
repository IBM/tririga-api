echo "Test People Creation..."
curl -H "Content-Type: application/json" -X POST -d '@docs/Payload_IN_Create_People.json' http://9.30.43.110:8001/oslc/so/triAPICPeopleCF

echo "Test Asset Creation..."
curl -H "Content-Type: application/json" -X POST -d '@docs/Payload_IN_Create_Asset.json' http://9.30.43.110:8001/oslc/so/triAPICAssetCF

echo "Test Property Creation..."
curl -H "Content-Type: application/json" -X POST -d '@docs/Payload_IN_Create_Property.json' http://9.30.43.110:8001/oslc/so/triAPICPropertyCF

echo "Test Building Creation..."
curl -H "Content-Type: application/json" -X POST -d '@docs/Payload_IN_Create_Building.json' http://9.30.43.110:8001/oslc/so/triAPICBuildingCF
