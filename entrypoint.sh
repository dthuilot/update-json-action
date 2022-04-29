#!/bin/sh -l

json_file_path=$1
json_field=$2
json_new_value=$3

echo "json_file_path: $json_file_path"
echo "json_field: $json_field"
echo "json_new_value: $json_new_value"

# Extract current value
json_old_value=$(cat /github/workspace/$json_file_path| jq ".[].$json_field")

# Update the old value by the new one, sed delimiter must be replaced by #
sed -i '' "s#$json_old_value#$json_new_value#g" /github/workspace/$json_file_path

echo "::set-output name=json_old_value::$json_old_value"