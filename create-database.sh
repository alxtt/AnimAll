#!/bin/bash

# Strict mode, fail on any error
set -euo pipefail

declare serverName=animall
declare databaseName=AnimAll-BD
declare adminUser=animal
declare adminPassword=
declare location=northeurope
declare resourceGroup=animall-project

az sql server create -g $resourceGroup -n $serverName \
    -l $location \
    --admin-user $adminUser \
    --admin-password $adminPassword     

az sql db create -g $resourceGroup -s $serverName \
    -n $databaseName \
    --service-objective S0

declare myIp=`curl https://ifconfig.me/`

az sql server firewall-rule create --resource-group $resourceGroup --server $serverName \
    --name AllowMyClientIP_1 \
    --start-ip-address $myIp \
    --end-ip-address $myIp

