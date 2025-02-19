
scoreboard players set Global playercount 0
execute as @a run scoreboard players add Global playercount 1
scoreboard players operation Global playercount *= Global st
scoreboard players set Global entitycount 0
execute as @e[nbt={PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat"}] run scoreboard players add Global entitycount 1
execute if score Global entitycount >= Global playercount run gamerule doMobSpawning false
execute if score Global entitycount < Global playercount run gamerule doMobSpawning true

tag @e[type=allay] add ok
tag @e[type=armadillo] add ok
tag @e[type=axolotl] add ok
tag @e[type=bat] add ok
tag @e[type=camel] add ok
tag @e[type=cat] add ok
tag @e[type=chicken] add ok
tag @e[type=cod] add ok
tag @e[type=cow] add ok
tag @e[type=donkey] add ok
tag @e[type=frog] add ok
tag @e[type=glow_squid] add ok
tag @e[type=horse] add ok
tag @e[type=mooshroom] add ok
tag @e[type=mule] add ok
tag @e[type=ocelot] add ok
tag @e[type=parrot] add ok
tag @e[type=pig] add ok
tag @e[type=pufferfish] add ok
tag @e[type=rabbit] add ok
tag @e[type=salmon] add ok
tag @e[type=sheep] add ok
tag @e[type=skeleton_horse] add ok
tag @e[type=sniffer] add ok
tag @e[type=snow_golem] add ok
tag @e[type=squid] add ok
tag @e[type=strider] add ok
tag @e[type=tadpole] add ok
tag @e[type=tropical_fish] add ok
tag @e[type=turtle] add ok
tag @e[type=villager] add ok
tag @e[type=wandering_trader] add ok
tag @e[type=bee] add ok
tag @e[type=cave_spider] add ok
tag @e[type=dolphin] add ok
tag @e[type=drowned] add ok
tag @e[type=enderman] add ok
tag @e[type=fox] add ok
tag @e[type=iron_golem] add ok
tag @e[type=llama] add ok
tag @e[type=panda] add ok
tag @e[type=piglin] add ok
tag @e[type=polar_bear] add ok
tag @e[type=spider] add ok
tag @e[type=trader_llama] add ok
tag @e[type=wolf] add ok
tag @e[type=zombified_piglin] add ok
tag @e[type=blaze] add ok
tag @e[type=bogged] add ok
tag @e[type=breeze] add ok
tag @e[type=creaking] add ok
tag @e[type=creeper] add ok
tag @e[type=elder_guardian] add ok
tag @e[type=endermite] add ok
tag @e[type=evoker] add ok
tag @e[type=ghast] add ok
tag @e[type=guardian] add ok
tag @e[type=hoglin] add ok
tag @e[type=husk] add ok
tag @e[type=magma_cube] add ok
tag @e[type=phantom] add ok
tag @e[type=piglin_brute] add ok
tag @e[type=pillager] add ok
tag @e[type=ravager] add ok
tag @e[type=shulker] add ok
tag @e[type=silverfish] add ok
tag @e[type=skeleton] add ok
tag @e[type=slime] add ok
tag @e[type=stray] add ok
tag @e[type=vex] add ok
tag @e[type=vindicator] add ok
tag @e[type=witch] add ok
tag @e[type=wither_skeleton] add ok
tag @e[type=zoglin] add ok
tag @e[type=zombie] add ok
tag @e[type=zombie_villager] add ok

execute as @e[tag=ok] at @s if dimension minecraft:overworld if score Global entitycount matches ..70 run summon warden ~ ~ ~
execute as @e[tag=ok] at @s if dimension minecraft:the_nether if score Global entitycount matches ..70 run summon wither ~ ~ ~
execute as @e[tag=ok] at @s if dimension minecraft:the_end if score Global entitycount matches ..70 run summon ender_dragon ~ ~ ~
execute as @e[type=allay] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["allay","tocheck"]}
execute as @e[type=allay] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["allay","tocheck"]}
execute as @e[type=allay] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["allay","tocheck"]}
execute as @e[type=armadillo] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["armadillo","tocheck"]}
execute as @e[type=armadillo] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["armadillo","tocheck"]}
execute as @e[type=armadillo] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["armadillo","tocheck"]}
execute as @e[type=axolotl] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["axolotl","tocheck"]}
execute as @e[type=axolotl] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["axolotl","tocheck"]}
execute as @e[type=axolotl] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["axolotl","tocheck"]}
execute as @e[type=bat] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["bat","tocheck"]}
execute as @e[type=bat] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["bat","tocheck"]}
execute as @e[type=bat] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["bat","tocheck"]}
execute as @e[type=camel] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["camel","tocheck"]}
execute as @e[type=camel] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["camel","tocheck"]}
execute as @e[type=camel] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["camel","tocheck"]}
execute as @e[type=cat] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["cat","tocheck"]}
execute as @e[type=cat] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["cat","tocheck"]}
execute as @e[type=cat] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["cat","tocheck"]}
execute as @e[type=chicken] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["chicken","tocheck"]}
execute as @e[type=chicken] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["chicken","tocheck"]}
execute as @e[type=chicken] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["chicken","tocheck"]}
execute as @e[type=cod] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["cod","tocheck"]}
execute as @e[type=cod] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["cod","tocheck"]}
execute as @e[type=cod] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["cod","tocheck"]}
execute as @e[type=cow] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["cow","tocheck"]}
execute as @e[type=cow] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["cow","tocheck"]}
execute as @e[type=cow] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["cow","tocheck"]}
execute as @e[type=donkey] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["donkey","tocheck"]}
execute as @e[type=donkey] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["donkey","tocheck"]}
execute as @e[type=donkey] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["donkey","tocheck"]}
execute as @e[type=frog] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["frog","tocheck"]}
execute as @e[type=frog] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["frog","tocheck"]}
execute as @e[type=frog] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["frog","tocheck"]}
execute as @e[type=glow_squid] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["glow_squid","tocheck"]}
execute as @e[type=glow_squid] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["glow_squid","tocheck"]}
execute as @e[type=glow_squid] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["glow_squid","tocheck"]}
execute as @e[type=horse] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["horse","tocheck"]}
execute as @e[type=horse] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["horse","tocheck"]}
execute as @e[type=horse] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["horse","tocheck"]}
execute as @e[type=mooshroom] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["mooshroom","tocheck"]}
execute as @e[type=mooshroom] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["mooshroom","tocheck"]}
execute as @e[type=mooshroom] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["mooshroom","tocheck"]}
execute as @e[type=mule] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["mule","tocheck"]}
execute as @e[type=mule] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["mule","tocheck"]}
execute as @e[type=mule] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["mule","tocheck"]}
execute as @e[type=ocelot] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["ocelot","tocheck"]}
execute as @e[type=ocelot] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["ocelot","tocheck"]}
execute as @e[type=ocelot] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["ocelot","tocheck"]}
execute as @e[type=parrot] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["parrot","tocheck"]}
execute as @e[type=parrot] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["parrot","tocheck"]}
execute as @e[type=parrot] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["parrot","tocheck"]}
execute as @e[type=pig] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["pig","tocheck"]}
execute as @e[type=pig] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["pig","tocheck"]}
execute as @e[type=pig] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["pig","tocheck"]}
execute as @e[type=pufferfish] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["pufferfish","tocheck"]}
execute as @e[type=pufferfish] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["pufferfish","tocheck"]}
execute as @e[type=pufferfish] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["pufferfish","tocheck"]}
execute as @e[type=rabbit] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["rabbit","tocheck"]}
execute as @e[type=rabbit] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["rabbit","tocheck"]}
execute as @e[type=rabbit] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["rabbit","tocheck"]}
execute as @e[type=salmon] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["salmon","tocheck"]}
execute as @e[type=salmon] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["salmon","tocheck"]}
execute as @e[type=salmon] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["salmon","tocheck"]}
execute as @e[type=sheep] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["sheep","tocheck"]}
execute as @e[type=sheep] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["sheep","tocheck"]}
execute as @e[type=sheep] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["sheep","tocheck"]}
execute as @e[type=skeleton_horse] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton_horse","tocheck"]}
execute as @e[type=skeleton_horse] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton_horse","tocheck"]}
execute as @e[type=skeleton_horse] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton_horse","tocheck"]}
execute as @e[type=sniffer] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["sniffer","tocheck"]}
execute as @e[type=sniffer] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["sniffer","tocheck"]}
execute as @e[type=sniffer] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["sniffer","tocheck"]}
execute as @e[type=snow_golem] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["snow_golem","tocheck"]}
execute as @e[type=snow_golem] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["snow_golem","tocheck"]}
execute as @e[type=snow_golem] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["snow_golem","tocheck"]}
execute as @e[type=squid] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["squid","tocheck"]}
execute as @e[type=squid] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["squid","tocheck"]}
execute as @e[type=squid] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["squid","tocheck"]}
execute as @e[type=strider] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["strider","tocheck"]}
execute as @e[type=strider] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["strider","tocheck"]}
execute as @e[type=strider] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["strider","tocheck"]}
execute as @e[type=tadpole] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["tadpole","tocheck"]}
execute as @e[type=tadpole] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["tadpole","tocheck"]}
execute as @e[type=tadpole] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["tadpole","tocheck"]}
execute as @e[type=tropical_fish] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["tropical_fish","tocheck"]}
execute as @e[type=tropical_fish] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["tropical_fish","tocheck"]}
execute as @e[type=tropical_fish] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["tropical_fish","tocheck"]}
execute as @e[type=turtle] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["turtle","tocheck"]}
execute as @e[type=turtle] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["turtle","tocheck"]}
execute as @e[type=turtle] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["turtle","tocheck"]}
execute as @e[type=villager] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["villager","tocheck"]}
execute as @e[type=villager] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["villager","tocheck"]}
execute as @e[type=villager] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["villager","tocheck"]}
execute as @e[type=wandering_trader] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["wandering_trader","tocheck"]}
execute as @e[type=wandering_trader] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["wandering_trader","tocheck"]}
execute as @e[type=wandering_trader] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["wandering_trader","tocheck"]}
execute as @e[type=bee] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["bee","tocheck"]}
execute as @e[type=bee] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["bee","tocheck"]}
execute as @e[type=bee] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["bee","tocheck"]}
execute as @e[type=cave_spider] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["cave_spider","tocheck"]}
execute as @e[type=cave_spider] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["cave_spider","tocheck"]}
execute as @e[type=cave_spider] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["cave_spider","tocheck"]}
execute as @e[type=dolphin] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["dolphin","tocheck"]}
execute as @e[type=dolphin] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["dolphin","tocheck"]}
execute as @e[type=dolphin] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["dolphin","tocheck"]}
execute as @e[type=drowned] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["drowned","tocheck"]}
execute as @e[type=drowned] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["drowned","tocheck"]}
execute as @e[type=drowned] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["drowned","tocheck"]}
execute as @e[type=enderman] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["enderman","tocheck"]}
execute as @e[type=enderman] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["enderman","tocheck"]}
execute as @e[type=enderman] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["enderman","tocheck"]}
execute as @e[type=fox] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["fox","tocheck"]}
execute as @e[type=fox] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["fox","tocheck"]}
execute as @e[type=fox] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["fox","tocheck"]}
execute as @e[type=iron_golem] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["iron_golem","tocheck"]}
execute as @e[type=iron_golem] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["iron_golem","tocheck"]}
execute as @e[type=iron_golem] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["iron_golem","tocheck"]}
execute as @e[type=llama] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["llama","tocheck"]}
execute as @e[type=llama] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["llama","tocheck"]}
execute as @e[type=llama] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["llama","tocheck"]}
execute as @e[type=panda] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["panda","tocheck"]}
execute as @e[type=panda] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["panda","tocheck"]}
execute as @e[type=panda] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["panda","tocheck"]}
execute as @e[type=piglin] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin","tocheck"]}
execute as @e[type=piglin] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin","tocheck"]}
execute as @e[type=piglin] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin","tocheck"]}
execute as @e[type=polar_bear] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["polar_bear","tocheck"]}
execute as @e[type=polar_bear] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["polar_bear","tocheck"]}
execute as @e[type=polar_bear] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["polar_bear","tocheck"]}
execute as @e[type=spider] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["spider","tocheck"]}
execute as @e[type=spider] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["spider","tocheck"]}
execute as @e[type=spider] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["spider","tocheck"]}
execute as @e[type=trader_llama] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["trader_llama","tocheck"]}
execute as @e[type=trader_llama] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["trader_llama","tocheck"]}
execute as @e[type=trader_llama] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["trader_llama","tocheck"]}
execute as @e[type=wolf] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["wolf","tocheck"]}
execute as @e[type=wolf] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["wolf","tocheck"]}
execute as @e[type=wolf] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["wolf","tocheck"]}
execute as @e[type=zombified_piglin] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["zombified_piglin","tocheck"]}
execute as @e[type=zombified_piglin] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["zombified_piglin","tocheck"]}
execute as @e[type=zombified_piglin] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["zombified_piglin","tocheck"]}
execute as @e[type=blaze] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["blaze","tocheck"]}
execute as @e[type=blaze] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["blaze","tocheck"]}
execute as @e[type=blaze] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["blaze","tocheck"]}
execute as @e[type=bogged] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["bogged","tocheck"]}
execute as @e[type=bogged] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["bogged","tocheck"]}
execute as @e[type=bogged] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["bogged","tocheck"]}
execute as @e[type=breeze] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["breeze","tocheck"]}
execute as @e[type=breeze] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["breeze","tocheck"]}
execute as @e[type=breeze] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["breeze","tocheck"]}
execute as @e[type=creaking] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["creaking","tocheck"]}
execute as @e[type=creaking] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["creaking","tocheck"]}
execute as @e[type=creaking] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["creaking","tocheck"]}
execute as @e[type=creeper] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["creeper","tocheck"]}
execute as @e[type=creeper] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["creeper","tocheck"]}
execute as @e[type=creeper] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["creeper","tocheck"]}
execute as @e[type=elder_guardian] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["elder_guardian","tocheck"]}
execute as @e[type=elder_guardian] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["elder_guardian","tocheck"]}
execute as @e[type=elder_guardian] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["elder_guardian","tocheck"]}
execute as @e[type=endermite] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["endermite","tocheck"]}
execute as @e[type=endermite] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["endermite","tocheck"]}
execute as @e[type=endermite] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["endermite","tocheck"]}
execute as @e[type=evoker] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["evoker","tocheck"]}
execute as @e[type=evoker] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["evoker","tocheck"]}
execute as @e[type=evoker] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["evoker","tocheck"]}
execute as @e[type=ghast] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["ghast","tocheck"]}
execute as @e[type=ghast] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["ghast","tocheck"]}
execute as @e[type=ghast] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["ghast","tocheck"]}
execute as @e[type=guardian] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["guardian","tocheck"]}
execute as @e[type=guardian] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["guardian","tocheck"]}
execute as @e[type=guardian] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["guardian","tocheck"]}
execute as @e[type=hoglin] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["hoglin","tocheck"]}
execute as @e[type=hoglin] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["hoglin","tocheck"]}
execute as @e[type=hoglin] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["hoglin","tocheck"]}
execute as @e[type=husk] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["husk","tocheck"]}
execute as @e[type=husk] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["husk","tocheck"]}
execute as @e[type=husk] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["husk","tocheck"]}
execute as @e[type=magma_cube] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["magma_cube","tocheck"]}
execute as @e[type=magma_cube] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["magma_cube","tocheck"]}
execute as @e[type=magma_cube] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["magma_cube","tocheck"]}
execute as @e[type=phantom] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["phantom","tocheck"]}
execute as @e[type=phantom] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["phantom","tocheck"]}
execute as @e[type=phantom] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["phantom","tocheck"]}
execute as @e[type=piglin_brute] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin_brute","tocheck"]}
execute as @e[type=piglin_brute] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin_brute","tocheck"]}
execute as @e[type=piglin_brute] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["piglin_brute","tocheck"]}
execute as @e[type=pillager] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["pillager","tocheck"]}
execute as @e[type=pillager] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["pillager","tocheck"]}
execute as @e[type=pillager] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["pillager","tocheck"]}
execute as @e[type=ravager] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["ravager","tocheck"]}
execute as @e[type=ravager] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["ravager","tocheck"]}
execute as @e[type=ravager] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["ravager","tocheck"]}
execute as @e[type=shulker] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["shulker","tocheck"]}
execute as @e[type=shulker] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["shulker","tocheck"]}
execute as @e[type=shulker] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["shulker","tocheck"]}
execute as @e[type=silverfish] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["silverfish","tocheck"]}
execute as @e[type=silverfish] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["silverfish","tocheck"]}
execute as @e[type=silverfish] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["silverfish","tocheck"]}
execute as @e[type=skeleton] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton","tocheck"]}
execute as @e[type=skeleton] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton","tocheck"]}
execute as @e[type=skeleton] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["skeleton","tocheck"]}
execute as @e[type=slime] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["slime","tocheck"]}
execute as @e[type=slime] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["slime","tocheck"]}
execute as @e[type=slime] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["slime","tocheck"]}
execute as @e[type=stray] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["stray","tocheck"]}
execute as @e[type=stray] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["stray","tocheck"]}
execute as @e[type=stray] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["stray","tocheck"]}
execute as @e[type=vex] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["vex","tocheck"]}
execute as @e[type=vex] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["vex","tocheck"]}
execute as @e[type=vex] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["vex","tocheck"]}
execute as @e[type=vindicator] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["vindicator","tocheck"]}
execute as @e[type=vindicator] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["vindicator","tocheck"]}
execute as @e[type=vindicator] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["vindicator","tocheck"]}
execute as @e[type=witch] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["witch","tocheck"]}
execute as @e[type=witch] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["witch","tocheck"]}
execute as @e[type=witch] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["witch","tocheck"]}
execute as @e[type=wither_skeleton] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["wither_skeleton","tocheck"]}
execute as @e[type=wither_skeleton] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["wither_skeleton","tocheck"]}
execute as @e[type=wither_skeleton] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["wither_skeleton","tocheck"]}
execute as @e[type=zoglin] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["zoglin","tocheck"]}
execute as @e[type=zoglin] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["zoglin","tocheck"]}
execute as @e[type=zoglin] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["zoglin","tocheck"]}
execute as @e[type=zombie] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie","tocheck"]}
execute as @e[type=zombie] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie","tocheck"]}
execute as @e[type=zombie] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie","tocheck"]}
execute as @e[type=zombie_villager] at @s if dimension minecraft:overworld as @e[type=warden,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie_villager","tocheck"]}
execute as @e[type=zombie_villager] at @s if dimension minecraft:the_nether as @e[type=wither,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie_villager","tocheck"]}
execute as @e[type=zombie_villager] at @s if dimension minecraft:the_end as @e[type=ender_dragon,limit=1,sort=nearest] run data merge entity @s {Tags:["zombie_villager","tocheck"]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=!ender_dragon,type=!wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:1000f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_nether as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=!ender_dragon,type=!wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:1000f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_end as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=!ender_dragon,type=!wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:1000f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:800,attributes:[{id:"minecraft:max_health",base:800}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_nether as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:800,attributes:[{id:"minecraft:max_health",base:800}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_end as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=wither] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:800,attributes:[{id:"minecraft:max_health",base:800}]}
execute as @e[tag=ok] at @s if dimension minecraft:overworld as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=ender_dragon] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:700,attributes:[{id:"minecraft:max_health",base:700}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_nether as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=ender_dragon] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:700,attributes:[{id:"minecraft:max_health",base:700}]}
execute as @e[tag=ok] at @s if dimension minecraft:the_end as @e[tag=tocheck,sort=nearest,limit=1] at @s if entity @s[type=ender_dragon] run data merge entity @s {PersistenceRequired:1b,DeathLootTable:"minecraft:entities/bat",Health:700,attributes:[{id:"minecraft:max_health",base:700}]}
execute as @e[tag=ok] run data merge entity @s {DeathLootTable:"minecraft:entities/bat",Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:100,show_particles:0b}]}
execute as @e[tag=ok] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=ok,tag=!tocheck] run data merge entity @s {Health:1}

execute as @e store result score @s AbsorptionAmount run data get entity @s Health 1
execute as @e[tag=allay,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/allay ~ ~ ~
execute as @e[tag=armadillo,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/armadillo ~ ~ ~
execute as @e[tag=axolotl,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/axolotl ~ ~ ~
execute as @e[tag=bat,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/bat ~ ~ ~
execute as @e[tag=camel,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/camel ~ ~ ~
execute as @e[tag=cat,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/cat ~ ~ ~
execute as @e[tag=chicken,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/chicken ~ ~ ~
execute as @e[tag=cod,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/cod ~ ~ ~
execute as @e[tag=cow,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/cow ~ ~ ~
execute as @e[tag=donkey,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/donkey ~ ~ ~
execute as @e[tag=frog,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/frog ~ ~ ~
execute as @e[tag=glow_squid,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/glow_squid ~ ~ ~
execute as @e[tag=horse,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/horse ~ ~ ~
execute as @e[tag=mooshroom,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/mooshroom ~ ~ ~
execute as @e[tag=mule,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/mule ~ ~ ~
execute as @e[tag=ocelot,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/ocelot ~ ~ ~
execute as @e[tag=parrot,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/parrot ~ ~ ~
execute as @e[tag=pig,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/pig ~ ~ ~
execute as @e[tag=pufferfish,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/pufferfish ~ ~ ~
execute as @e[tag=rabbit,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/rabbit ~ ~ ~
execute as @e[tag=salmon,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/salmon ~ ~ ~
execute as @e[tag=sheep,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/sheep ~ ~ ~
execute as @e[tag=skeleton_horse,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/skeleton_horse ~ ~ ~
execute as @e[tag=sniffer,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/sniffer ~ ~ ~
execute as @e[tag=snow_golem,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/snow_golem ~ ~ ~
execute as @e[tag=squid,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/squid ~ ~ ~
execute as @e[tag=strider,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/strider ~ ~ ~
execute as @e[tag=tadpole,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/tadpole ~ ~ ~
execute as @e[tag=tropical_fish,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/tropical_fish ~ ~ ~
execute as @e[tag=turtle,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/turtle ~ ~ ~
execute as @e[tag=villager,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/villager ~ ~ ~
execute as @e[tag=wandering_trader,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/wandering_trader ~ ~ ~
execute as @e[tag=bee,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/bee ~ ~ ~
execute as @e[tag=cave_spider,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/cave_spider ~ ~ ~
execute as @e[tag=dolphin,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/dolphin ~ ~ ~
execute as @e[tag=drowned,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/drowned ~ ~ ~
execute as @e[tag=enderman,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/enderman ~ ~ ~
execute as @e[tag=fox,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/fox ~ ~ ~
execute as @e[tag=iron_golem,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/iron_golem ~ ~ ~
execute as @e[tag=llama,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/llama ~ ~ ~
execute as @e[tag=panda,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/panda ~ ~ ~
execute as @e[tag=piglin,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/piglin ~ ~ ~
execute as @e[tag=polar_bear,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/polar_bear ~ ~ ~
execute as @e[tag=spider,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/spider ~ ~ ~
execute as @e[tag=trader_llama,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/trader_llama ~ ~ ~
execute as @e[tag=wolf,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/wolf ~ ~ ~
execute as @e[tag=zombified_piglin,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/zombified_piglin ~ ~ ~
execute as @e[tag=blaze,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/blaze ~ ~ ~
execute as @e[tag=bogged,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/bogged ~ ~ ~
execute as @e[tag=breeze,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/breeze ~ ~ ~
execute as @e[tag=creaking,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/creaking ~ ~ ~
execute as @e[tag=creeper,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/creeper ~ ~ ~
execute as @e[tag=elder_guardian,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/elder_guardian ~ ~ ~
execute as @e[tag=endermite,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/endermite ~ ~ ~
execute as @e[tag=evoker,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/evoker ~ ~ ~
execute as @e[tag=ghast,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/ghast ~ ~ ~
execute as @e[tag=guardian,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/guardian ~ ~ ~
execute as @e[tag=hoglin,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/hoglin ~ ~ ~
execute as @e[tag=husk,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/husk ~ ~ ~
execute as @e[tag=magma_cube,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/magma_cube ~ ~ ~
execute as @e[tag=phantom,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/phantom ~ ~ ~
execute as @e[tag=piglin_brute,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/piglin_brute ~ ~ ~
execute as @e[tag=pillager,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/pillager ~ ~ ~
execute as @e[tag=ravager,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/ravager ~ ~ ~
execute as @e[tag=shulker,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/shulker ~ ~ ~
execute as @e[tag=silverfish,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/silverfish ~ ~ ~
execute as @e[tag=skeleton,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/skeleton ~ ~ ~
execute as @e[tag=slime,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/slime ~ ~ ~
execute as @e[tag=stray,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/stray ~ ~ ~
execute as @e[tag=vex,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/vex ~ ~ ~
execute as @e[tag=vindicator,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/vindicator ~ ~ ~
execute as @e[tag=witch,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/witch ~ ~ ~
execute as @e[tag=wither_skeleton,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/wither_skeleton ~ ~ ~
execute as @e[tag=zoglin,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/zoglin ~ ~ ~
execute as @e[tag=zombie,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/zombie ~ ~ ~
execute as @e[tag=zombie_villager,scores={AbsorptionAmount=..500}] at @s run loot spawn ~ ~ ~ fish minecraft:entities/zombie_villager ~ ~ ~
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