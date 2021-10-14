#!/bin/sh

yq eval .topology_template.node_templates.kubernetes.attributes.services deployed.yaml
yq eval .topology_template.node_templates.kubernetes.attributes.tokens deployed.yaml
