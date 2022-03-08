#> easyteleporter:craft/_
# @within advancement easyteleporter:craft

## Give
    give @s enderman_spawn_egg{EntityTag:{id:"minecraft:armor_stand",Tags:["easyteleporter.placer"]},display:{Name:'{"text":"Teleporter","color":"reset","bold":false,"italic":false}'}} 1

## Fake 削除
    clear @s chest 1

## Revoke
    recipe take @s easyteleporter:teleporter
    advancement revoke @s only easyteleporter:craft
