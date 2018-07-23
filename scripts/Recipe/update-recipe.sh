#!/bin/bash

curl "http://localhost:4741/recipes/${ID}" \
 --include \
 --request PATCH \
 --header "Content-Type: application/json" \
 --header "Authorization: Token token=${TOKEN}" \
 --data '{
   "recipe": {
      "recipe_title": "'"${TITLE}"'",
      "ingredient_one": "'"${ONE}"'",
      "ingredient_two": "'"${TWO}"'",
      "ingredient_three": "'"${THREE}"'",
      "ingredient_four": "'"${FOUR}"'",
      "ingredient_five": "'"${FIVE}"'",
      "step_A": "'"${A}"'",
      "step_B": "'"${B}"'",
      "step_C": "'"${C}"'",
      "step_D": "'"${D}"'"
   }
 }'

echo
