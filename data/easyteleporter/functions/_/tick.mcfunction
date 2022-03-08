#> easyteleporter:_/tick
# @within tag/function tickmanager:tick

## Placer
    execute as @e[tag=easyteleporter.placer] at @s run function easyteleporter:place/_
    kill @e[tag=easyteleporter.placer]

## Key
    execute as @e[tag=easyteleporter.teleporter] at @s align xyz as @e[dx=0,type=item] if data entity @s Item{id:"minecraft:golden_hoe",tag:{display:{Name:'{"text":"Key"}'}}} at @s run function easyteleporter:apply_key/_

## 破壊判定
    execute as @e[tag=easyteleporter.teleporter] at @s unless block ~ ~ ~ #raycasting:air unless block ~ ~ ~ water run function easyteleporter:destroy/_

## Teleporter Effect
    execute as @e[tag=easyteleporter.teleporter] at @s run function easyteleporter:effect/effect

## Activating
    execute as @a if score @s easyteleporter.sneak_time matches 1..60 if predicate easyteleporter:hold_key at @s run function easyteleporter:effect/activating

## Activate
    execute as @a if score @s easyteleporter.sneak_time matches 61.. if predicate easyteleporter:hold_key at @s run function easyteleporter:activate/with_key

## スニークタイム リセット
    execute as @a if predicate easyteleporter:unsneak run scoreboard players reset @s easyteleporter.sneak_time
    execute as @a unless predicate easyteleporter:hold_key run scoreboard players reset @s easyteleporter.sneak_time

## リセット
    function calculation:reset/_
