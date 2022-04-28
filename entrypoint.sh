#!/bin/sh -l

echo "json_field $1"
echo "json_value $2"
json_old_value=$(date)
echo "::set-output name=json_old_value::$json_old_value"