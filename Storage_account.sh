#!/bin/bash
RESOURCE_GROUP_NAME=terraform-ResourceGroup
STORAGE_ACCOUNT_NAME=heydevopsterraformtstate
CONTAINER_NAME=tstate

az group create --location centralindia --resource-group $RESOURCE_GROUP_NAME
az storage account create --name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP_NAME --location centralindia --sku Standard_LRS 

ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)

az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

echo storage_account_name: $STORAGE_ACCOUNT_NAME

echo container_name: $CONTAINER_NAME

echo access_key: $ACCOUNT_KEY

