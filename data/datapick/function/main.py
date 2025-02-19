
import os
os.chdir(os.path.dirname(os.path.realpath(__file__)))


with open("tick.mcfunction" , 'r') as file:
    lines = file.readlines()

owlines = []
totallines = []

entities = ["allay","armadillo","axolotl","bat","camel","cat","chicken","cod","cow","donkey","frog","glow_squid","horse","mooshroom","mule","ocelot","parrot","pig","pufferfish","rabbit","salmon","sheep","skeleton_horse","sniffer","snow_golem","squid","strider","tadpole","tropical_fish","turtle","villager","wandering_trader","bee","cave_spider","dolphin","drowned","enderman","fox","iron_golem","llama","panda","piglin","polar_bear","spider","trader_llama","wolf","zombified_piglin","blaze","bogged","breeze","creaking","creeper","elder_guardian","endermite","evoker","ghast","guardian","hoglin","husk","magma_cube","phantom","piglin_brute","pillager","ravager","shulker","silverfish","skeleton","slime","stray","vex","vindicator","witch","wither_skeleton","zoglin","zombie","zombie_villager"]

for line in lines:
    if "pig" in line:
        for mob in entities:
            owlines.append(line.replace("pig",mob))
    else:
        owlines.append(line)

for line in owlines:
    totallines.append(line)
    line2 = line.replace("overworld","the_nether").replace("warden","wither")
    if line != line2:
        totallines.append(line2)
    line3 = line.replace("overworld","the_end").replace("warden","ender_dragon")
    if line != line3:
        totallines.append(line3)

with open("tickfull.mcfunction","w") as file:
    for line in totallines:
        file.write(line)