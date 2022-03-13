#> easyteleporter:delete/_
# @api

## Open
    function calculation:session/open

## ID
    execute store result score $easyteleporter:activate/_.id temporary run data get storage easyteleporter: id 1

## Delete
    execute as @e[tag=easyteleporter.teleporter] if score @s easyteleporter.id = $easyteleporter:activate/_.id temporary run kill @s

## Close
    function calculation:session/close

