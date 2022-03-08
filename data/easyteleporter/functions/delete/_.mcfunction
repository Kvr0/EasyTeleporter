#> easyteleporter:delete/_
# @api

## ID
    execute store result score $easyteleporter:activate/_.id temporary run data get storage easyteleporter: id 1

## Delete
    execute as @e[tag=easyteleporter.teleporter] if score @s easyteleporter.id = $easyteleporter:activate/_.id temporary run kill @s

## Reset
    function calculation:reset/_

