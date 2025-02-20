

execute if entity @s[type=ender_dragon] run kill @s
execute at @s run tp @s ~ ~-1000 ~
data merge entity @s {Health:1}