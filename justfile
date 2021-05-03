sp_name := "tf-aks-deploy"
rg_name := "aks-demo"

ARM_CLIENT_ID := ${{secrets.ARM_CLIENT_ID}} 
ARM_CLIENT_SECRET := ${{secrets.ARM_CLIENT_SECRET}} 
ARM_SUBSCRIPTION_ID := ${{secrets.ARM_SUBSCRIPTION_ID}} 
ARM_TENANT_ID := ${{ secrets.ARM_TENANT_ID }}	


sp subscriptionid:
   az ad sp create-for-rbac  --name={{sp_name}}  --role="Contributor" --scopes="/subscriptions/{{subscriptionid}}/resourceGroups/{{ rg_name}}"

set subscriptionid:
	az account set -s {{ subscriptionid }}

creds:
	export ARM_CLIENT_ID={{ ARM_CLIENT_ID }}
	export ARM_CLIENT_SECRET={{ ARM_CLIENT_SECRET }}
	export ARM_SUBSCRIPTION_ID={{ ARM_SUBSCRIPTION_ID }}
	export ARM_TENANT_ID={{ ARM_TENANT_ID }}