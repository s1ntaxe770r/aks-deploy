sp subscriptionid:
    az ad sp create-for-rbac --role="Contributor" --scopes=/subscriptions/{{subscriptionid}}

creds:
	export ARM_CLIENT_ID=ARM_CLIENT_ID
	export ARM_CLIENT_SECRET=ARM_CLIENT_SECRET
	export ARM_SUBSCRIPTION_ID=ARM_SUBSCRIPTION_ID
	export ARM_TENANT_ID=ARM_TENANT_ID