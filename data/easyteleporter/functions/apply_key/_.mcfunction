#> easyteleporter:apply_key/_
# @within function easyteleporter:_/tick

## ID
    scoreboard players set $easyteleporter:apply_key/_.oldid temporary 0
    execute store result score $easyteleporter:apply_key/_.oldid temporary run data get entity @s Item.tag.EasyTeleporter.id 1
    execute store result entity @s Item.tag.EasyTeleporter.id int 1 run scoreboard players get @e[tag=easyteleporter.teleporter,limit=1,sort=nearest] easyteleporter.id
    execute store result score $easyteleporter:apply_key/_.id temporary run data get entity @s Item.tag.EasyTeleporter.id 1

## Lore
    data modify entity @s Item.tag.display.Lore set value []
    data modify entity @s Item.tag.display.Lore append from entity @e[tag=easyteleporter.teleporter,limit=1,sort=nearest] CustomName

## Effect
    execute unless score $easyteleporter:apply_key/_.oldid temporary = $easyteleporter:apply_key/_.id temporary run function easyteleporter:effect/apply_key
