#!/bin/bash

#
# Only for Amazon EC2
# Retrieves instance tag "cname" and set it as hostname
#

IID=${1}

if [ -z "${IID}" ]; then
	echo "Not an ec2 instance"
	exit 1
fi

type aws > /dev/null 2>&1 || { echo "awscli is not installed"; exit 1; }
type jq > /dev/null 2>&1 || { echo "jq is not installed"; exit 1; }

JQ=".Reservations[].Instances[] | select (.InstanceId == \"${IID}\") | .Tags[] | select (.Key == \"cname\") | .Value"
CNAME=$(aws ec2 describe-instances | jq -r "${JQ}")

hostname ${CNAME}
echo "$(date) : ${IID}, ${CNAME}" >> /tmp/hostname.log
