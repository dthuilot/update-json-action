#!/bin/sh -l

json_file_path=$1
json_field=$2
json_value=$3

echo "json_file_path: $json_file_path"
echo "json_field: $json_field"
echo "json_value: $json_value"

cat /github/workspace/$json_file_path

# Extract current value
json_old_value=cat /github/workspace/$json_file_path| jq ".[].$json_field"

echo "::set-output name=json_old_value::$json_old_value"