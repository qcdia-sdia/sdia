#!/bin/sh

yq eval '.topology_template.node_templates.kubernetes.attributes.services[] | select(.name=="kubernetes-dashboard") | .info[]' deployed.yaml
yq eval '.topology_template.node_templates.kubernetes.attributes.tokens[] | select(.token_type == "k8s_dashboard_token") | .' deployed.yaml
