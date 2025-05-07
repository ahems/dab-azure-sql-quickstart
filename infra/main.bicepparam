using './main.bicep'

param environmentName = readEnvironmentVariable('AZURE_ENV_NAME', 'development')
param location = readEnvironmentVariable('AZURE_LOCATION', 'westus')
param deploymentUserPrincipalId = readEnvironmentVariable('AZURE_PRINCIPAL_ID', '')
param repositoryToken = readEnvironmentVariable('AZURE_REPO_TOKEN', '')
param repositoryUrl = readEnvironmentVariable('GITHUB_REPO_URL', 'https://github.com/ahems/AdventureWorks-spa.git')
param branchName = readEnvironmentVariable('GITHUB_REPO_BRANCH', 'master')
