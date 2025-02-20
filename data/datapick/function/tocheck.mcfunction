
execute at @s if entity @p[distance=128..] run function datapick:128

execute at @s if entity @p[distance=32..] run scoreboard players add @s timer 1
execute at @s if entity @p[distance=..32] run scoreboard players set @s timer 0
execute if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s timer 0

execute as @e[scores={timer=600..}] run tag @s add timed
execute as @e[scores={timer=..600}] run tag @s remove timed

execute as @e[tag=timed,scores={int=1}] run function datapick:timed

