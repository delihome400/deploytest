@allowed(['prod'
'dev'])

param env string
param storageName string
param location string = resourceGroup().location

var sku = (env == 'prod') ? 'standard_grs' : 'standard_lrs'
resource store 'Microsoft.Storage/storageAccounts@2022-09-01' = {
name: storageName
location: location
sku: {name: sku}
kind:'StorageV2'
}


