#> easyteleporter:place/_
# @api

## Entity
    summon armor_stand ~ ~ ~ {Tags:[easyteleporter.teleporter,easyteleporter.new],Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b}

## ID
    execute as @e[tag=easyteleporter.teleporter,tag=easyteleporter.new,limit=1] run function easyteleporter:id/_

## Name
    data modify entity @e[tag=easyteleporter.teleporter,tag=easyteleporter.new,limit=1] CustomName set from entity @s CustomName

## Unplaceable Check
    execute as @e[tag=easyteleporter.teleporter,tag=easyteleporter.new,limit=1] if entity @e[tag=easyteleporter.teleporter,tag=!easyteleporter.new,distance=..1] run function easyteleporter:destroy/_

## Tag
    tag @e[tag=easyteleporter.new] remove easyteleporter.new

## リセット
    data remove storage easyteleporter: name
