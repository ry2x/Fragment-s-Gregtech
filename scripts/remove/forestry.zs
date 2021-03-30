//import crafttweaker II
import crafttweaker.item.IItemStack;

//import forestry
import mods.forestry.Carpenter.removeRecipe;

//import JEI function
import mods.jei.JEI;

//remove crate
val crate as IItemStack[] = [
    <forestry:kit_pickaxe>,
    <forestry:kit_shovel>    
];

for i in crate {
    removeRecipe(i);
    JEI.removeAndHide(i);
}

removeRecipe(<forestry:carton>, <liquid:water>);
JEI.removeAndHide(<forestry:carton>);

//remove pulsating mesh
JEI.removeAndHide(<forestry:crafting_material:1>);

//remove item that make rainmaker not working 
removeRecipe(<forestry:crafting_material:4>, <liquid:water>);
JEI.removeAndHide(<forestry:crafting_material:4>);

//remove camouflaged panel
JEI.removeAndHide(<forestry:crafting_material:7>);

//remove forestry wood pulp and paper
removeRecipe(<forestry:wood_pulp>, <liquid:water>);
removeRecipe(<minecraft:paper>, <liquid:water>);
JEI.removeAndHide(<forestry:wood_pulp>);

//remove item that make rainmaker working 
removeRecipe(<forestry:iodine_capsule>,<liquid:water>);
JEI.removeAndHide(<forestry:iodine_capsule>);

//remove bags
val craftingBag as IItemStack[] = [
    <forestry:miner_bag>,
    <forestry:digger_bag>,
    <forestry:forester_bag>,
    <forestry:hunter_bag>,
    <forestry:adventurer_bag>,
    <forestry:builder_bag>,
];

for i in craftingBag {
    JEI.removeAndHide(i);
}

val carpentBag as IItemStack[] = [
    <forestry:miner_bag_t2>,
    <forestry:digger_bag_t2>,
    <forestry:forester_bag_t2>,
    <forestry:hunter_bag_t2>,
    <forestry:adventurer_bag_t2>,
    <forestry:builder_bag_t2>,
];

for i in carpentBag {
    removeRecipe(i, <liquid:water>);
    JEI.removeAndHide(i);
}

//remove tools
val tools as IItemStack[] = [
    <forestry:bronze_shovel>,
    <forestry:bronze_pickaxe>,
    <forestry:broken_bronze_shovel>,
    <forestry:broken_bronze_pickaxe>,
    <forestry:wrench>
];

for i in tools {
    JEI.removeAndHide(i);
}

//remove centrifuge 
JEI.removeAndHide(<forestry:centrifuge>);
JEI.hideCategory(forestry.centrifuge);

//hide 
for can in [<forestry:can:1>, <forestry:capsule:1>, <forestry:refractory:1>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(can.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}
