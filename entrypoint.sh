#!/bin/sh -l

json_file_path=$1
json_field=$2
json_value=$3

#echo "json_file_path $1"
#echo "json_field $2"
#echo "json_value $3"

# Extract current value
json_old_value= cat $json_file_path| jq '.[].images'

#json_old_value=$(date)

echo "::set-output name=json_old_value::$json_old_value"