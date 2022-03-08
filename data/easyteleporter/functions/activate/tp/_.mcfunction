#> easyteleporter:activate/tp/_
# @within function easyteleporter:activate/get/_

## Pos
    summon marker 0 0 0 {Tags:[easyteleporter.new]}
    data modify entity @e[tag=easyteleporter.new,limit=1] Pos set from storage calculation: easyteleporter.pos

## TP
    execute at @e[tag=easyteleporter.new,limit=1] as @e[tag=easyteleporter.target,limit=1] rotated as @s run tp @s ~ ~ ~ ~ ~

## Kill
    kill @e[tag=easyteleporter.new]
