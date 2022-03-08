#> easyteleporter:activate/with_key
# @api

## Pumpkin Count
    execute store result score $easyteleporter:activate/with_key.count temporary run clear @s pumpkin_pie 0

## ID
    data modify storage easyteleporter: id set from entity @s SelectedItem.tag.EasyTeleporter.id

## Activate
    function calculation:reset/skip
    execute if score $easyteleporter:activate/with_key.count temporary matches 1.. run function easyteleporter:activate/_

## Consume Item
    execute if score $easyteleporter:activate/_.activatable temporary matches 1.. if entity @s[gamemode=!creative] run clear @s pumpkin_pie 1

## Reset SneakTime
    scoreboard players reset @s easyteleporter.sneak_time
