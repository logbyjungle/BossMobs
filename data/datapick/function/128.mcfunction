
tp @s ~ ~-1000 ~
execute if entity @s[type=ender_dragon] run kill @s
data merge entity @s {Health:1}