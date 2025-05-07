param location string = resourceGroup().location
param resourceToken string
param tags object
param userAssignedResourceId string
param branchName string
param repositoryUrl string
param sku string = 'Standard'
@secure()
param repositoryToken string

@description('Create a static web app')
module swa 'br/public:avm/res/web/static-site:0.9.0' = {
  name: 'client'
  params: {
    name: 'swa-${resourceToken}'
    location: location
    sku: sku
    tags: tags
    enterpriseGradeCdnStatus: 'Disabled'
    branch: branchName
    repositoryToken:repositoryToken
    managedIdentities: {userAssignedResourceIds: [userAssignedResourceId]}
    repositoryUrl: repositoryUrl
    appSettings: {
    }
  }
}

@description('Output the default hostname')
output endpoint string = swa.outputs.defaultHostname

@description('Output the static web app name')
output staticWebAppName string = swa.outputs.name
