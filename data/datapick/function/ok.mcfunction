

execute if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest,tag=!tocheck] run tag @s add tocheck
execute if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest,tag=!tocheck] run tag @s add tocheck
execute if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest,tag=!tocheck] run tag @s add tocheck
execute if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:1000f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute if dimension minecraft:the_nether as @e[tag=tocheck,sort=nearest,limit=1] at @s run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:800,attributes:[{id:"minecraft:max_health",base:800}]}
execute if dimension minecraft:the_end as @e[tag=tocheck,sort=nearest,limit=1] at @s run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:700,attributes:[{id:"minecraft:max_health",base:700}]}
tp @s ~ ~-1000 ~
execute if entity @s[tag=!tocheck] run data merge entity @s {Health:1}