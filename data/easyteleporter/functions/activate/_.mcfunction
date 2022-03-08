#> easyteleporter:activate/_
# @api

## ID
    execute store result score $easyteleporter:activate/_.id temporary run data get storage easyteleporter: id 1

## Activatable
    execute store success score $easyteleporter:activate/_.activatable temporary as @e[tag=easyteleporter.teleporter] if score @s easyteleporter.id = $easyteleporter:activate/_.id temporary if entity @s

## Tag
    tag @s add easyteleporter.target

## Activate
    execute if score $easyteleporter:activate/_.activatable temporary matches 1.. at @s run function easyteleporter:effect/activate

## Get
    execute if score $easyteleporter:activate/_.activatable temporary matches 1.. as @e[tag=easyteleporter.teleporter] if score @s easyteleporter.id = $easyteleporter:activate/_.id temporary at @s run function easyteleporter:activate/get/_

## Activated
    execute if score $easyteleporter:activate/_.activatable temporary matches 1.. at @s run function easyteleporter:effect/activated

## Tag
    tag @s remove easyteleporter.target

## Reset
    function calculation:reset/_
