
scoreboard players set Global playercount 0
execute as @a run scoreboard players add Global playercount 1
scoreboard players operation Global playercount *= Global st
scoreboard players set Global entitycount 0
execute as @e[nbt={PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat"}] run scoreboard players add Global entitycount 1
execute if score Global entitycount >= Global playercount run gamerule doMobSpawning false
execute if score Global entitycount < Global playercount run gamerule doMobSpawning true

tag @e[type=pig] add ok

execute as @e[tag=ok] at @s if dimension minecraft:overworld if score Global entitycount matches ..70 run summon warden ~ ~ ~
execute as @e[type=pig] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["pig","tocheck"]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=!ender_dragon,type=!wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:1000f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:800,attributes:[{id:"minecraft:max_health",base:800}]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=ender_dragon] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:700,attributes:[{id:"minecraft:max_health",base:700}]}
execute as @e[tag=ok] run data merge entity @s {DeathLootTable:"minecraft:entities/bat",Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:100,show_particles:0b}]}
execute as @e[tag=ok] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=ok,tag=!tocheck] run data merge entity @s {Health:1}

execute as @e store result score @s AbsorptionAmount run data get entity @s Health 1
execute as @e[tag=pig,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/pig ~ ~ ~
execute as @e[tag=tocheck,scores={AbsorptionAmount=..500}] at @s if entity @s[type=wither] run summon item ~ ~ ~ {Age:5999,PickupDelay:32767,Invulnerable:1b,Tags:["nonether"],Item:{id:"minecraft:dirt",count:1}}
execute as @e[tag=tocheck,scores={AbsorptionAmount=..500}] run data merge entity @s {Health:0}
execute as @e[tag=nonether] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},sort=nearest,limit=1,distance=..1]

execute as @e store result score @s X run data get entity @s Pos[0] 1
execute as @e store result score @s Y run data get entity @s Pos[1] 1
execute as @e store result score @s Z run data get entity @s Pos[2] 1

execute as @e[type=!player,tag=tocheck] at @s run scoreboard players operation @s X -= @p X
execute as @e[type=!player,scores={X=..0},tag=tocheck] at @s run scoreboard players operation @s X *= Global neg
execute as @e[type=!player,scores={X=1000..},tag=tocheck] run scoreboard players operation @s X /= Global ot
execute as @e[type=!player,tag=tocheck] run scoreboard players operation @s Distance = @s X

execute as @e[type=!player,tag=tocheck] at @s run scoreboard players operation @s Y -= @p Y
execute as @e[type=!player,scores={Y=..0},tag=tocheck] at @s run scoreboard players operation @s Y *= Global neg
execute as @e[type=!player,scores={Y=1000..},tag=tocheck] run scoreboard players operation @s Y /= Global ot
execute as @e[type=!player,tag=tocheck] run scoreboard players operation @s Distance += @s Y

execute as @e[type=!player,tag=tocheck] at @s run scoreboard players operation @s Z -= @p Z
execute as @e[type=!player,scores={Z=..0},tag=tocheck] at @s run scoreboard players operation @s Z *= Global neg
execute as @e[type=!player,scores={Z=1000..},tag=tocheck] run scoreboard players operation @s Z /= Global ot
execute as @e[type=!player,tag=tocheck] run scoreboard players operation @s Distance += @s Z

execute as @e[tag=tocheck,scores={Distance=222..}] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=tocheck,type=ender_dragon,scores={Distance=222..}] run kill @s
execute as @e[tag=tocheck,scores={Distance=222..}] run data merge entity @s {Health:1}

execute as @e[tag=tocheck,scores={Distance=55..}] run scoreboard players add @s timer 1
execute as @e[tag=tocheck,scores={Distance=..55}] run scoreboard players set @s timer 0
execute as @e[tag=tocheck,nbt={HurtTime:9s}] run scoreboard players set @s timer 0

execute as @e[tag=tocheck,scores={timer=600..}] store result score @s int run random value 1..800
execute as @e[tag=tocheck,scores={Distance=55..,int=1}] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=tocheck,type=ender_dragon,scores={Distance=55..,int=1}] run kill @s
execute as @e[tag=tocheck,scores={Distance=55..,int=1}] run data merge entity @s {Health:1}