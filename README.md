# Update JSON field docker action

This action update a JSON field with a new value.

## Inputs

json_file_path: Path of the json file in the repository
json_field: JSON field to update
json_value: New value for the JSON field

## Outputs

json_old_value: Former JSON Field value

Can be used with :  ${{ steps.STEP_ID.outputs.json_old_value }}

## Example usage

- name: Update JSON file
  id: update_json_file
  uses: dthuilot/update-json-action@v0.22
  with:
    json_file_path: 'data.json'
    json_field: 'image'
    json_value: 'NewValue'
- name: Get the former value
  run: echo "The former value was ${{ steps.update_json_file.outputs.json_old_value }}
  