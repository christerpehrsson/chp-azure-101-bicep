resource account 'Microsoft.Storage/storageAccounts@2021-06-01' ={
  name: 'chp${uniqueString(resourceGroup().id)}'
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'

  resource blobService 'blobServices' = {
    name:'default'

    resource container1 'containers' = {
      name: 'images'
      properties: {
        publicAccess: 'Blob'
      }
    }

    resource container2 'containers' = {
      name: 'thumbnails'
      properties: {
        publicAccess: 'Blob'
      }
    }
  }
}  

output connectionString string = 'DefaultEndPointsProtocol=https;AccountName=${account.name};AccountKey=${account.listKeys().keys[0].value};EndpointSuffix=core.windows.net'
output storageAccountName string = account.name
