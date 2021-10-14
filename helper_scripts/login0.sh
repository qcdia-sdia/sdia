#!/bin/sh

yq eval .topology_template.node_templates.compute.attributes.user_key_pair.keys.private_key provisioned.yaml | base64 -d > vm_key 
chmod 600 vm_key
VM_USER=`yq eval .topology_template.node_templates.compute.properties.user_name provisioned.yaml`   
IP=`yq eval .topology_template.node_templates.compute.attributes.public_ip provisioned.yaml`
ssh $VM_USER@$IP -i vm_key
