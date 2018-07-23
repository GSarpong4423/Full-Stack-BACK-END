#!/bin/bash

# TOKEN=BAhJIiVhMjM3YzVhNDY2NmRmZDZjMzQ2YmY3MmE3ZGE1OTg4YQY6BkVG--2ba7e41056820232a2daa13d3be85f3b3d1f2159 TITLE="Chocolate Chip Cookies" ONE="One cup Chocolate Chips" TWO="Two eggs" THREE="Two and cups of flour" FOUR="One and a half stick of butter" FIVE="Two cups of sugar" A="Warm butter" B="Mix sugar warm butter and eggs" C="Mix in flour" D="Add chocolate chips form cookie dough and bake" ./scripts/Recipe/create-recipe.sh

curl "http://localhost:4741/recipes" \
  --include \
  --request POST \
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
      "step_D": "'"${D}"'",
      "user_id": 1
    }
  }'

echo

