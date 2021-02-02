//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import Forestry Carpenter function 
import mods.forestry.Carpenter.removeRecipe;

//remove recipes of <forestry:crafting_material:3>
removeRecipe(<forestry:crafting_material:3>);

//remove pipette
JEI.removeAndHide(<forestry:pipette>);

//remove hardend machine
removeRecipe(<forestry:hardened_machine>);
JEI.hide(<forestry:hardened_machine>);

//remove wrench
JEI.removeAndHide(<forestry:wrench>);

//hide plusating dust
JEI.hide(<forestry:crafting_material:0>);

//hide plusting plate
JEI.hide(<forestry:crafting_material:1>);

//remove endereye from plusting plate
removeRecipe(<minecraft:ender_pearl>);

//remove carton
removeRecipe(<forestry:carton>);
JEI.hide(<forestry:carton>);

//remove Paneling
JEI.removeAndHide(<forestry:crafting_material:7>);

//remove silk 
JEI.removeAndHide(<forestry:crafting_material:2>);

//bronze pickaxe and shovel 
JEI.hide(<forestry:broken_bronze_pickaxe>);
JEI.hide(<forestry:broken_bronze_shovel>);
JEI.removeAndHide(<forestry:bronze_pickaxe>);
JEI.removeAndHide(<forestry:bronze_shovel>);
recipes.remove(<forestry:kit_pickaxe>);
recipes.remove(<forestry:kit_shovel>);
removeRecipe(<forestry:kit_pickaxe>);
removeRecipe(<forestry:kit_shovel>);
JEI.hide(<forestry:kit_pickaxe>);
JEI.hide(<forestry:kit_shovel>);

//remove Iodine capsule
removeRecipe(<forestry:iodine_capsule>);
JEI.hide(<forestry:iodine_capsule>);

//remove rainmaker's stopper
JEI.removeAndHide(<forestry:crafting_material:4>);

//remove ffarm
recipes.remove(<forestry:ffarm:*>);
JEI.hide(<forestry:ffarm:*>);

//remove stamp
JEI.removeAndHide(<forestry:stamps:*>);

//remove letter
JEI.removeAndHide(<forestry:letters>);

//remove catalogue
JEI.removeAndHide(<forestry:catalogue>);

//remove mailbox
JEI.removeAndHide(<forestry:mailbox>);

//remove trade station
JEI.removeAndHide(<forestry:trade_station>);

//hide stamp collector
JEI.hide(<forestry:stamp_collector>);

//hide imprinter
JEI.hide(<forestry:imprinter>);

//hide Proven Frame
JEI.hide(<forestry:frame_proven>);

//remove crate
removeRecipe(<forestry:crate>);
JEI.hide(<forestry:crate>);

//remove rain maker
recipes.remove(<forestry:rainmaker>);
JEI.hide(<forestry:rainmaker>);

//remove raintank
JEI.removeAndHide(<forestry:raintank>);

//remove genetic
JEI.removeAndHide(<forestry:genetic_filter>);

//hide deprecated
val dpc = [
    <forestry:greenhouse:*>,
    <forestry:climatiser:*>,
    <forestry:greenhouse:3>,
    <forestry:greenhouse:4>,
    <forestry:greenhouse:5>,
    <forestry:climatiser:1>,
    <forestry:climatiser:2>,
    <forestry:climatiser:3>,
    <forestry:climatiser:4>,
    <forestry:greenhouse.window>,
    <forestry:greenhouse.window_up>
] as IItemStack[];

for item in dpc {
    JEI.hide(item);
}

//remove crates
val crate = [
    <forestry:crated.forestry.peat.0>,
    <forestry:crated.forestry.apatite.0>,
    <forestry:crated.forestry.fertilizer_compound.0>,
    <forestry:crated.forestry.mulch.0>,
    <forestry:crated.forestry.phosphor.0>,
    <forestry:crated.forestry.ash.0>,
    <forestry:crated.ingottin>,
    <forestry:crated.ingotcopper>,
    <forestry:crated.ingotbronze>,
    <forestry:crated.forestry.humus.0>,
    <forestry:crated.forestry.bog_earth.0>,
    <forestry:crated.cropwheat>,
    <forestry:crated.minecraft.cookie.0>,
    <forestry:crated.dustredstone>,
    <forestry:crated.minecraft.dye.4>,
    <forestry:crated.sugarcane>,
    <forestry:crated.minecraft.clay_ball.0>,
    <forestry:crated.dustglowstone>,
    <forestry:crated.minecraft.apple.0>,
    <forestry:crated.minecraft.nether_wart.0>,
    <forestry:crated.minecraft.coal.1>,
    <forestry:crated.minecraft.coal.0>,
    <forestry:crated.minecraft.wheat_seeds.0>,
    <forestry:crated.croppotato>,
    <forestry:crated.cropcarrot>,
    <forestry:crated.minecraft.log.0>,
    <forestry:crated.minecraft.log.1>,
    <forestry:crated.minecraft.log.2>,
    <forestry:crated.minecraft.log.3>,
    <forestry:crated.minecraft.log2.0>,
    <forestry:crated.minecraft.log2.1>,
    <forestry:crated.cobblestone>,
    <forestry:crated.dirt>,
    <forestry:crated.minecraft.dirt.2>,
    <forestry:crated.stone>,
    <forestry:crated.stonegranite>,
    <forestry:crated.stonediorite>,
    <forestry:crated.stoneandesite>,
    <forestry:crated.blockprismarine>,
    <forestry:crated.blockprismarinebrick>,
    <forestry:crated.blockprismarinedark>,
    <forestry:crated.minecraft.brick_block.0>,
    <forestry:crated.blockcactus>,
    <forestry:crated.minecraft.sand.0>,
    <forestry:crated.minecraft.sand.1>,
    <forestry:crated.obsidian>,
    <forestry:crated.netherrack>,
    <forestry:crated.minecraft.soul_sand.0>,
    <forestry:crated.minecraft.sandstone.0>,
    <forestry:crated.minecraft.nether_brick.0>,
    <forestry:crated.minecraft.mycelium.0>,
    <forestry:crated.gravel>,
    <forestry:crated.minecraft.sapling.0>,
    <forestry:crated.minecraft.sapling.1>,
    <forestry:crated.minecraft.sapling.2>,
    <forestry:crated.minecraft.sapling.3>,
    <forestry:crated.minecraft.sapling.4>,
    <forestry:crated.minecraft.sapling.5>,
    <forestry:crated.forestry.beeswax.0>,
    <forestry:crated.forestry.pollen.0>,
    <forestry:crated.forestry.pollen.1>,
    <forestry:crated.forestry.propolis.0>,
    <forestry:crated.forestry.honeydew.0>,
    <forestry:crated.forestry.royal_jelly.0>,
    <forestry:crated.forestry.bee_combs.0>,
    <forestry:crated.forestry.bee_combs.1>,
    <forestry:crated.forestry.bee_combs.2>,
    <forestry:crated.forestry.bee_combs.3>,
    <forestry:crated.forestry.bee_combs.4>,
    <forestry:crated.forestry.bee_combs.5>,
    <forestry:crated.forestry.bee_combs.6>,
    <forestry:crated.forestry.bee_combs.7>,
    <forestry:crated.forestry.bee_combs.8>,
    <forestry:crated.forestry.bee_combs.10>,
    <forestry:crated.forestry.bee_combs.14>,
    <forestry:crated.forestry.bee_combs.15>,
    <forestry:crated.forestry.bee_combs.16>,
    <forestry:crated.forestry.refractory_wax.0>
] as IItemStack[];

for item in crate {
    removeRecipe(item);
}

for item in crate {
    JEI.hide(item);
}

//remove backpacks that table crafting
val backpacks = [
    <forestry:apiarist_bag>,
    <forestry:miner_bag>,
    <forestry:digger_bag>,
    <forestry:forester_bag>,
    <forestry:hunter_bag>,
    <forestry:adventurer_bag>,
    <forestry:builder_bag>
] as IItemStack[];

for item in backpacks {
    JEI.removeAndHide(item);
}

//remove backpacks that carpenter crafting 
val backpacks2 = [
    <forestry:miner_bag_t2>,
    <forestry:digger_bag_t2>,
    <forestry:forester_bag_t2>,
    <forestry:hunter_bag_t2>,
    <forestry:adventurer_bag_t2>,
    <forestry:builder_bag_t2>
] as IItemStack[];

for item in backpacks2 {
    removeRecipe(item);
    JEI.hide(item);
}

//end