#!/bin/bash

resource_group=GithubActionsDemoRG
vm_name=GithubActionsDemoVM
vm_port=5000

az group create --location northeurope --name $resource_group

az vm create --name $vm_name --resource-group $resource_group \
             --image Ubuntu2204 --size Standard_B1s \
             --generate-ssh-keys --admin-username azureuser \
             --custom-data @cloud-init_dotnet.yaml

az vm open-port --port $vm_port --resource-group $resource_group --name $vm_name

# Print the VM IP address
vm_ip=$(az vm show --show-details --name $vm_name --resource-group $resource_group --query publicIps -o tsv)
echo "The VM IP address is: $vm_ip"