#!/bin/sh -l

json_file_path="/github/workspace/$1"
json_field=$2
json_new_value=$3

echo "json_file_path: $json_file_path"
echo "json_field: $json_field"
echo "json_new_value: $json_new_value"

# Extract current value
json_old_value=$(cat $json_file_path| jq -r ".[].$json_field")

# Normal sed command with updated space as separator
sed -i.tmp "s|$json_old_value|$json_new_value|" $json_file_path 

echo "::set-output name=json_old_value::$json_old_value"