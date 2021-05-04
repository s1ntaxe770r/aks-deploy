# change if you wish
SERVICE_PRINCIPAL_NAME=aks-demo-sp
SUBCRIPTION_ID=$SUBCRIPTION_ID
RG_NAME=
SCOPE=/subscriptions/${SUBCRIPTION_ID}resourceGroups/${RG_NAME}

sp:
	az ad sp ceate-for-rbac --name=${SERVICE_PRINCIPAL_NAME} --role="Contributor" --scopes=${SCOPE}

creds:
	export ARM_CLIENT_ID=${{secrets.ARM_CLIENT_ID}} 	
	export ARM_CLIENT_SECRET=${{secrets.ARM_CLIENT_SECRET}} 
	export ARM_SUBSCRIPTION_ID=${{secrets.ARM_SUBSCRIPTION_ID}} 
	export ARM_TENANT_ID=${{ secrets.ARM_TENANT_ID }}