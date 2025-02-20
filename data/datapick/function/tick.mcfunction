
scoreboard players set Global playercount 0
execute as @a run scoreboard players add Global playercount 1
scoreboard players operation Global playercount *= Global st
scoreboard players set Global entitycount 0
execute as @e[tag=tocheck] run scoreboard players add Global entitycount 1
execute if score Global entitycount >= Global playercount run gamerule doMobSpawning false
execute if score Global entitycount < Global playercount run gamerule doMobSpawning true

execute as @e[type=!item,type=!armor_stand,type=!#boat,type=!minecart,type=!chest_minecart,type=!hopper_minecart,type=!tnt_minecart,type=!furnace_minecart,type=!player,type=!end_crystal,type=!item,type=!warden,type=!wither,type=!ender_dragon] if data entity @s Health run tag @s add ok

execute if entity @e[tag=ok] run function datapick:ifok

execute as @e[tag=tocheck] store result score @s AbsorptionAmount run data get entity @s Health 1
tag @e[tag=tocheck,scores={AbsorptionAmount=..500}] add dead

execute if entity @e[tag=dead] run function datapick:ifdead

execute as @e[tag=nonether] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1,distance=..1]

execute as @e[tag=tocheck] run function datapick:tocheck

