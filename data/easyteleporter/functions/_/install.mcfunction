#> easyteleporter:_/install
# @within tag/function installmanager:install

## スニーク時間
    scoreboard objectives add easyteleporter.sneak_time custom:sneak_time

## ID
    scoreboard objectives add easyteleporter.id dummy

## InstallManagerへの登録
    data modify storage installmanager: installed append value EasyTeleporter
    data modify storage installmanager: relation append value {id:EasyTeleporter,dep:[InstallManager,TickManager,Calculation]}
