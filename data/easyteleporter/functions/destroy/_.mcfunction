#> easyteleporter:destroy/_
# @within function easyteleporter:_/tick

## Drop
    summon item ~ ~ ~ {Tags:[easyteleporter.new,easyteleporter.item],Item:{id:"minecraft:enderman_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:armor_stand",Tags:["easyteleporter.placer"]},display:{Name:'{"text":"Teleporter","color":"reset","bold":false,"italic":false}'}}}}

## Name
    data modify entity @e[tag=easyteleporter.new,tag=easyteleporter.item,limit=1] Item.tag.display.Name set from entity @s CustomName

## Destroyed
    function easyteleporter:effect/destroyed

## Tag
    tag @e[tag=easyteleporter.new] remove easyteleporter.new
    tag @e[tag=easyteleporter.item] remove easyteleporter.item

## Kill
    kill @s
