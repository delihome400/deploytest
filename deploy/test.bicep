param storageName string
param locationName string = resourceGroup().location

resource storeaz400mitchel 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: locationName
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = { 

  name: 'toy-product-launch-plan-starter' 

  location: 'westus3' 

  sku: { 

    name: 'F1' 

  } 

} 

 

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = { 

  name: 'websitemitchelaz4002023' 

  location: 'westus3' 

  properties: { 

    serverFarmId: appServicePlan.id 

    httpsOnly: true 

  } 

} 
