#Login to Azure Subscription
az login --subscription "SubscriptionId"

#Create Resource Group
az group create --name "rg-test" --location "westeurope"

#List Resource Groups
az group list -o table

#Create Server
az sql server create --name "test-server-demo-1-2-3" --resource-group "rg-test" --location "westeurope" --admin-user "testAdmin" --admin-password "P@ssword123!"

#List Servers
az sql server list -o table

#Create Firewall Rules for Server
az sql server firewall-rule create --resource-group "rg-test" --server "test-server-demo-1-2-3" --name "AllowAll" --start-ip-address 0.0.0.0 --end-ip-address 255.255.255.255

#List Firewall Rules
az sql server firewall-rule list --resource-group "rg-test" --server "test-server-demo-1-2-3" -o table

#Create SQL Database
az sql db create --resource-group "rg-test" --server "test-server-demo-1-2-3" --name "test-sql-db-1-2-3" --edition GeneralPurpose --family Gen4 --capacity 1 --zone-redundant false

#List Servers
az sql db list --resource-group "rg-test" --server "test-server-demo-1-2-3" -o table

#Delete Resource Group
az group delete --name "rg-test"