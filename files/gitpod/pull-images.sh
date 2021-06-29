#!/bin/bash

set -o pipefail
set -o nounset
set -o errexit

# calico
ctr --namespace k8s.io images pull docker.io/calico/kube-controllers:v3.19.1
ctr --namespace k8s.io images pull docker.io/calico/node:v3.19.1
ctr --namespace k8s.io images pull docker.io/calico/pod2daemon-flexvol:v3.19.1
ctr --namespace k8s.io images pull docker.io/calico/typha:v3.19.1
ctr --namespace k8s.io images pull quay.io/tigera/operator:v1.17.4

# pause
ctr --namespace k8s.io images pull k8s.gcr.io/pause:3.5

# show images
ctr --namespace k8s.io images list --quiet
