//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");
val autoclave = RecipeMap.getByName("autoclave");
val forming = RecipeMap.getByName("forming_press");

//change recipes of @chargers
for item in loadedMods["chargers"].items {
	recipes.remove(item);
}

recipes.addShaped(<chargers:wireless_charger>, [
    [<minecraft:iron_ingot>, <minecraft:ender_eye>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <gregtech:machine:501>, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, <overloaded:energy_core>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<chargers:charger>, [
    [<minecraft:iron_ingot>, <minecraft:redstone_block>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <gregtech:machine:501>, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, <minecraft:redstone_block>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<chargers:charger:1>, [
    [<gregtech:meta_item_1:10228>, <minecraft:redstone>, <gregtech:meta_item_1:10228>],
    [<gregtech:meta_item_1:10228>, <minecraft:redstone_block>, <gregtech:meta_item_1:10228>], 
    [<gregtech:meta_item_1:10228>, <chargers:charger>, <gregtech:meta_item_1:10228>]
]);
recipes.addShaped(<chargers:charger:2>, [
    [<gregtech:meta_item_1:10001>, <minecraft:redstone>, <gregtech:meta_item_1:10001>],
    [<gregtech:meta_item_1:10001>, <minecraft:redstone_block>, <gregtech:meta_item_1:10001>], 
    [<gregtech:meta_item_1:10001>, <chargers:charger:1>, <gregtech:meta_item_1:10001>]
]);

//change recipes of @cyclic wireless things in the _overloaded.zs
recipes.replaceAllOccurences(<ore:blockEmerald>,<ore:blockStainlessSteel>,<cyclicmagic:heart_food>);
recipes.replaceAllOccurences(<ore:gemDiamond>,<ore:blockStainlessSteel>,<cyclicmagic:heart_food>);
recipes.replaceAllOccurences(<ore:gemDiamond>,<ore:blockStainlessSteel>,<cyclicmagic:crafting_food>);
recipes.replaceAllOccurences(<ore:gemEmerald>,<ore:blockStainlessSteel>,<cyclicmagic:crafting_food>);

//Precise Dropper
recipes.remove(<cyclicmagic:dropper_exact>);
recipes.addShaped(<cyclicmagic:dropper_exact>,[
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
    [<minecraft:dropper>,<gregtech:machine:501>,<projectred-integration:gate:17>],
    [<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>]
]);

//Target Dummy Spawner
recipes.remove(<cyclicmagic:robot_spawner>);
recipes.addShaped(<cyclicmagic:robot_spawner>,[
    [<ore:blockEmerald>,<minecraft:rotten_flesh>,<minecraft:spider_eye>],
    [null,<ore:gemEnderPearl>,<minecraft:rotten_flesh>],
    [<ore:dyePurple>,null,<ore:blockEmerald>]
]);

recipes.remove(<cyclicmagic:tool_elevate>);

//Pattern Replicator
recipes.replaceAllOccurences(<minecraft:ice>,<quarryplus:filler>,<cyclicmagic:builder_pattern>);

//Wireless Transmitter
recipes.replaceAllOccurences(<minecraft:repeater>,<projectred-integration:gate:21>,<cyclicmagic:wireless_transmitter>);

//Wireless Receiver
recipes.replaceAllOccurences(<ore:craftingRedstoneTorch>,<projectred-integration:gate:18>,<cyclicmagic:wireless_receiver>);

//Sprinkler
recipes.remove(<cyclicmagic:sprinkler>);
recipes.addShaped(<cyclicmagic:sprinkler>,[
    [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],
    [<gregtech:meta_item_1:32601>,<forestry:fertilizer_bio>,<gregtech:meta_item_1:32601>],
    [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]
]);

// /Sleeping Mat
recipes.replaceAllOccurences(<minecraft:wool:14>,<minecraft:bed:14>,<cyclicmagic:sleeping_mat>);

//change recipe of dunk null is very sillar to simple storage
val dunk as IItemStack[] = [
    <danknull:dank_null_panel_0>,
    <danknull:dank_null_0>,
    <danknull:dank_null_panel_1>,
    <danknull:dank_null_1>,
    <danknull:dank_null_2>,
    <danknull:dank_null_panel_2>,
    <danknull:dank_null_panel_3>,
    <danknull:dank_null_3>,
    <danknull:dank_null_panel_4>,
    <danknull:dank_null_4>,
    <danknull:dank_null_panel_5>,
    <danknull:dank_null_5>,
];

for i in dunk {
    recipes.remove(i);
}

<danknull:dank_null_0>.displayName = "Bronze /dunk/null";
recipes.addShaped(<danknull:dank_null_0>, [
    [<ore:plateBronze>, <danknull:dank_null_panel_0>, <ore:plateBronze>],
    [<danknull:dank_null_panel_0>, <ore:plateBronze>, <danknull:dank_null_panel_0>], 
    [<ore:plateBronze>, <danknull:dank_null_panel_0>, <ore:plateBronze>]
]);

<danknull:dank_null_panel_0>.displayName = "Bronze /dunk/null Panel";
recipes.addShaped(<danknull:dank_null_panel_0>, [
    [<ore:plateBronze>, <minecraft:obsidian>, <ore:plateBronze>],
    [<minecraft:obsidian>, <ore:paneGlassRed>, <minecraft:obsidian>], 
    [<ore:plateBronze>, <minecraft:obsidian>, <ore:plateBronze>]
]);

<danknull:dank_null_1>.displayName = "Steel /dunk/null";
recipes.addShaped(<danknull:dank_null_1>, [
    [<ore:plateSteel>, <danknull:dank_null_panel_1>, <ore:plateSteel>],
    [<danknull:dank_null_panel_1>, <ore:plateSteel>, <danknull:dank_null_panel_1>], 
    [<ore:plateSteel>, <danknull:dank_null_panel_1>, <ore:plateSteel>]
]);
recipes.addShaped(<danknull:dank_null_1>, [
    [<ore:plateSteel>, <danknull:dank_null_panel_1>, <ore:plateSteel>],
    [<danknull:dank_null_panel_1>, <danknull:dank_null_0>, <danknull:dank_null_panel_1>], 
    [<ore:plateSteel>, <danknull:dank_null_panel_1>, <ore:plateSteel>]
]);

<danknull:dank_null_panel_1>.displayName = "Steel /dunk/null Panel";
recipes.addShaped(<danknull:dank_null_panel_1>, [
    [<ore:plateSteel>, <minecraft:obsidian>, <ore:plateSteel>],
    [<minecraft:obsidian>, <minecraft:stained_glass_pane:11>, <minecraft:obsidian>], 
    [<ore:plateSteel>, <minecraft:obsidian>, <ore:plateSteel>]
]);

<danknull:dank_null_2>.displayName = "Stainless Steel /dunk/null";
recipes.addShaped(<danknull:dank_null_2>, [
    [<ore:plateStainlessSteel>, <danknull:dank_null_panel_2>, <ore:plateStainlessSteel>],
    [<danknull:dank_null_panel_2>, <ore:plateStainlessSteel>, <danknull:dank_null_panel_2>], 
    [<ore:plateStainlessSteel>, <danknull:dank_null_panel_2>, <ore:plateStainlessSteel>]
]);
recipes.addShaped(<danknull:dank_null_2>, [
    [<ore:plateStainlessSteel>, <danknull:dank_null_panel_2>, <ore:plateStainlessSteel>],
    [<danknull:dank_null_panel_2>, <danknull:dank_null_1>, <danknull:dank_null_panel_2>], 
    [<ore:plateStainlessSteel>, <danknull:dank_null_panel_2>, <ore:plateStainlessSteel>]
]);

<danknull:dank_null_panel_2>.displayName = "Stainless Steel /dunk/null Panel";
recipes.addShaped(<danknull:dank_null_panel_2>, [
    [<ore:plateStainlessSteel>, <minecraft:obsidian>, <ore:plateStainlessSteel>],
    [<minecraft:obsidian>, <minecraft:stained_glass_pane>, <minecraft:obsidian>], 
    [<ore:plateStainlessSteel>, <minecraft:obsidian>, <ore:plateStainlessSteel>]
]);

<danknull:dank_null_3>.displayName= "Nichrome /dunk/null";
recipes.addShaped(<danknull:dank_null_3>, [
    [<ore:plateNichrome>, <danknull:dank_null_panel_3>, <ore:plateNichrome>],
    [<danknull:dank_null_panel_3>, <ore:plateNichrome>, <danknull:dank_null_panel_3>], 
    [<ore:plateNichrome>, <danknull:dank_null_panel_3>, <ore:plateNichrome>]
]);
recipes.addShaped(<danknull:dank_null_3>, [
    [<ore:plateNichrome>, <danknull:dank_null_panel_3>, <ore:plateNichrome>],
    [<danknull:dank_null_panel_3>, <danknull:dank_null_2>, <danknull:dank_null_panel_3>], 
    [<ore:plateNichrome>, <danknull:dank_null_panel_3>, <ore:plateNichrome>]
]);

<danknull:dank_null_panel_3>.displayName = "Nichrome /dunk/null Plate";
recipes.addShaped(<danknull:dank_null_panel_3>, [
    [<ore:plateNichrome>, <minecraft:obsidian>, <ore:plateNichrome>],
    [<minecraft:obsidian>, <minecraft:stained_glass_pane:4>, <minecraft:obsidian>], 
    [<ore:plateNichrome>, <minecraft:obsidian>, <ore:plateNichrome>]
]);

<danknull:dank_null_4>.displayName = "Tungsten Steel /dunk/null";
recipes.addShaped(<danknull:dank_null_4>, [
    [<ore:plateTungstenSteel>, <danknull:dank_null_panel_4>, <ore:plateTungstenSteel>],
    [<danknull:dank_null_panel_4>, <ore:plateTungstenSteel>, <danknull:dank_null_panel_4>], 
    [<ore:plateTungstenSteel>, <danknull:dank_null_panel_4>, <ore:plateTungstenSteel>]
]);
recipes.addShaped(<danknull:dank_null_4>, [
    [<ore:plateTungstenSteel>, <danknull:dank_null_panel_4>, <ore:plateTungstenSteel>],
    [<danknull:dank_null_panel_4>, <danknull:dank_null_3>, <danknull:dank_null_panel_4>], 
    [<ore:plateTungstenSteel>, <danknull:dank_null_panel_4>, <ore:plateTungstenSteel>]
]);

<danknull:dank_null_panel_4>.displayName = "Tungsten Steel /dunk/null Plate";
recipes.addShaped(<danknull:dank_null_panel_4>, [
    [<ore:plateTungstenSteel>, <minecraft:obsidian>, <ore:plateTungstenSteel>],
    [<minecraft:obsidian>,<minecraft:stained_glass_pane:3>,<minecraft:obsidian>],
    [<ore:plateTungstenSteel>, <minecraft:obsidian>, <ore:plateTungstenSteel>]
]);

<danknull:dank_null_5>.displayName = "Neutronium /dunk/null";
recipes.addShaped(<danknull:dank_null_5>, [
    [<ore:plateNeutronium>, <danknull:dank_null_panel_5>, <ore:plateNeutronium>],
    [<danknull:dank_null_panel_5>, <ore:plateNeutronium>, <danknull:dank_null_panel_5>], 
    [<ore:plateNeutronium>, <danknull:dank_null_panel_5>, <ore:plateNeutronium>]
]);
recipes.addShaped(<danknull:dank_null_5>, [
    [<ore:plateNeutronium>, <danknull:dank_null_panel_5>, <ore:plateNeutronium>],
    [<danknull:dank_null_panel_5>, <danknull:dank_null_4>, <danknull:dank_null_panel_5>], 
    [<ore:plateNeutronium>, <danknull:dank_null_panel_5>, <ore:plateNeutronium>]
]);

<danknull:dank_null_panel_5>.displayName = "Neutronium /dunk/null Plate";
recipes.addShaped(<danknull:dank_null_panel_5>, [
    [<ore:plateNeutronium>, <minecraft:obsidian>, <ore:plateNeutronium>],
    [<minecraft:obsidian>, <minecraft:stained_glass_pane:13>, <minecraft:obsidian>], 
    [<ore:plateNeutronium>, <minecraft:obsidian>, <ore:plateNeutronium>]
]);
recipes.remove(<danknull:danknull_dock>);
recipes.addShaped(<danknull:danknull_dock>, [
    [<ore:plateEmerald>, <ore:plateRedAlloy>, <ore:plateEmerald>],
    [<ore:plateRedAlloy>, <ore:obsidian>, <ore:plateRedAlloy>], 
    [<ore:plateEmerald>, <ore:plateRedAlloy>, <ore:plateEmerald>]
]);

//translocater recipes
    #Item Translocator
recipes.remove(<translocators:translocator_part>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32630>,<ore:enderpearl>*3,<minecraft:stone_pressure_plate>*2,<ore:dustRedstone>*8)
    .outputs(<translocators:translocator_part>*2)
    .duration(120)
	.EUt(32)
	.buildAndRegister();
        #Liquid Translocator
recipes.remove(<translocators:translocator_part:1>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32610>,<ore:enderpearl>*3,<minecraft:stone_pressure_plate>*2,<ore:dustRedstone>*8,<ore:ringRubber>)
    .outputs(<translocators:translocator_part:1>*2)
    .duration(120)
	.EUt(32)
	.buildAndRegister();

//lightning rod recipes
recipes.remove(<lightningrods:lightning_rod>);
assembler.recipeBuilder()
    .inputs(<gregtech:machine:725>*3,<ore:ingotSilver>*2,<gregtech:meta_item_1:32681>,<ore:stickSilver>*4)
    .outputs(<lightningrods:lightning_rod>)
    .duration(2000)
	.EUt(512)
	.buildAndRegister();

//change recipes of power chisel
recipes.remove(<powerchisels:fluxed_chisel>);
assembler.recipeBuilder()
    .inputs(<chisel:chisel_hitech>,<enderio:item_basic_capacitor:2>*2,<gregtech:meta_item_1:13184>*3)
    .outputs(<powerchisels:fluxed_chisel>)
    .duration(2000)
	.EUt(512)
	.buildAndRegister();

//change recipes of chisel
val chisel as IIngredient[] = [
    <chisel:offsettool>,
    <chisel:chisel_iron>,
    <chisel:chisel_diamond>
];
for i in chisel {
    recipes.replaceAllOccurences(<minecraft:stick>,<forestry:oak_stick>,i);
}
recipes.replaceAllOccurences(<ore:ingotIron>,<ore:plateDenseIron>,<chisel:chisel_iron>);
recipes.replaceAllOccurences(<minecraft:diamond>,<gregtech:meta_item_1:32722>,<chisel:chisel_diamond>);
recipes.replaceAllOccurences(<ore:ingotGold>,<ore:plateSilver>,<chisel:chisel_hitech>);

//mob grinder
recipes.remove(<mob_grinding_utils:fan>);
recipes.addShaped(<mob_grinding_utils:fan>, [
    [<ore:blockRedstone>, <ore:rotorSteel>, <ore:blockRedstone>],
    [<gregtech:meta_item_1:32600>, <gregtech:machine:501>, <gregtech:meta_item_1:32600>], 
    [<ore:blockRedstone>, <minecraft:iron_ingot>, <ore:blockRedstone>]
]);
recipes.replaceAllOccurences(<mob_grinding_utils:spikes>,<extrautils2:spike_diamond>,<*>);
recipes.remove(<mob_grinding_utils:xp_tap>);
recipes.remove(<mob_grinding_utils:tank>);
recipes.remove(<mob_grinding_utils:absorption_hopper>);
recipes.addShaped(<mob_grinding_utils:xp_tap>, [
    [null, <minecraft:obsidian>, null],
    [<minecraft:iron_ingot>, <gregtech:meta_item_1:32610>, <minecraft:iron_ingot>], 
    [null, null, <minecraft:iron_ingot>]
]);
recipes.addShaped(<mob_grinding_utils:tank>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:blockGlassHardened>, <gregtech:machine:2196>, <ore:blockGlassHardened>], 
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]
]);
recipes.addShaped(<mob_grinding_utils:absorption_hopper>, [
    [<minecraft:hopper>, <minecraft:ender_eye>, <minecraft:hopper>],
    [<minecraft:hopper>, <gregtech:meta_item_1:32612>, <minecraft:hopper>], 
    [<minecraft:hopper>, <gregtech:meta_item_1:32632>, <minecraft:hopper>]
]);

//lightingwand
recipes.remove(<lightingwand:wand>);
recipes.addShaped(<lightingwand:wand>, [
    [null, <appliedenergistics2:quartz_fixture>, <appliedenergistics2:quartz_fixture>],
    [<minecraft:daylight_detector>, <ore:gemDiamond>, <appliedenergistics2:quartz_fixture>], 
    [<minecraft:blaze_rod>, <ore:HVbattery>, null]
]);

//portal 
furnace.remove(<portalgun:item_dust_ender_pearl>);
recipes.remove(<portalgun:item_miniature_black_hole>);
autoclave.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32343>)
    .fluidInputs([<liquid:ender>*1000])
    .outputs(<portalgun:item_miniature_black_hole>)
    .duration(2000)
    .EUt(122880)
	.buildAndRegister();

//chest transportor
val transportor as IItemStack[] = [
    <chesttransporter:chesttransporter_iron>,
    <chesttransporter:chesttransporter_tin>,
    <chesttransporter:chesttransporter_silver>,
];
for i in transportor {
    recipes.replaceAllOccurences(<minecraft:stick>,<forestry:oak_stick>,i);
}

//change recipes of ExUtil

//Watering Can
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShaped(<extrautils2:wateringcan:1000>, [
    [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <ore:plateEnderium>],
    [<ore:plateEnderium>, <minecraft:bucket>, <ore:plateEnderium>], 
    [<ore:plateEnderium>, <ore:plateEnderium>, <ore:plateEnderium>]
]);

//Compound Bow
recipes.remove(<extrautils2:compoundbow>);
recipes.addShaped(<extrautils2:compoundbow>, [
    [null, <tconstruct:bow_limb>.withTag({Material: "silver"}).onlyWithTag({Material: "silver"}), <ore:dustDiamond>],
    [<ore:dustDiamond>, <minecraft:bow>, <gregtech:meta_item_1:32600>], 
    [null, <tconstruct:bow_limb>.withTag({Material: "silver"}).onlyWithTag({Material: "silver"}), <ore:dustDiamond>]
]);

//Sound Muffler
recipes.remove(<extrautils2:soundmuffler>);
recipes.addShaped(<extrautils2:soundmuffler>, [
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:wool>, <minecraft:noteblock>, <ore:wool>],
    [<ore:wool>, <ore:wool>, <ore:wool>]
]);

//Trash Can (Fluid)
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped(<extrautils2:trashcanfluid>, [
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>],
    [<ore:plateLead>, craftingToolPlunger, <ore:plateLead>], 
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]
]);

//Trash Can (Item)
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped(<extrautils2:trashcan>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, craftingToolSoftHammer, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
    ]);

//Reinforced Large Drum
recipes.remove(<extrautils2:drum:2>);
recipes.addShaped(<extrautils2:drum:2>, [
    [<ore:plateTungsten>, <minecraft:bucket>, <ore:plateTungsten>],
    [<ore:plateDiamond>, <gregtech:machine:2198>, <ore:plateDiamond>], 
    [<ore:plateTungsten>, <minecraft:bucket>, <ore:plateTungsten>]
]);

//Iron Drum
recipes.remove(<extrautils2:drum:1>);
recipes.addShaped(<extrautils2:drum:1>, [
    [<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>],
    [<ore:plateIron>, <gregtech:machine:2196>, <ore:plateIron>], 
    [<ore:plateIron>, <minecraft:bucket>, <ore:plateIron>]
]);

//Stone Drum
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum>, [
    [<ore:stoneSmooth>, <minecraft:bucket>, <ore:stoneSmooth>],
    [<ore:stoneSmooth>, <minecraft:bucket>, <ore:stoneSmooth>], 
    [<ore:stoneSmooth>, <minecraft:bucket>, <ore:stoneSmooth>]
]);

//Filter Fluids
recipes.remove(<extrautils2:filterfluids>);
recipes.addShaped(<extrautils2:filterfluids>, [
    [<appliedenergistics2:paint_ball:11>, <forestry:oak_stick>, <appliedenergistics2:paint_ball:11>],
    [<forestry:oak_stick>, <ore:paneGlass>, <forestry:oak_stick>], 
    [<appliedenergistics2:paint_ball:11>, <forestry:oak_stick>, <appliedenergistics2:paint_ball:11>]
]);

//Filter (Item)
recipes.remove(<extrautils2:filter>);
recipes.addShaped(<extrautils2:filter>, [
    [<appliedenergistics2:paint_ball:14>, <forestry:oak_stick>, <appliedenergistics2:paint_ball:14>],
    [<forestry:oak_stick>, <ore:paneGlass>, <forestry:oak_stick>], 
    [<appliedenergistics2:paint_ball:14>, <forestry:oak_stick>, <appliedenergistics2:paint_ball:14>]
]);
//project red peridot items and draw plate
recipes.remove(<projectred-exploration:peridot_helmet>);
<projectred-exploration:peridot_helmet>.displayName = "Olivine Helmet";
recipes.addShaped(<projectred-exploration:peridot_helmet>, [
    [<ore:gemOlivine>, <ore:gemOlivine>, <ore:gemOlivine>],
    [<ore:gemOlivine>, null, <ore:gemOlivine>],
    [null, null, null]
]);

recipes.remove(<projectred-exploration:peridot_chestplate>);
<projectred-exploration:peridot_chestplate>.displayName = "Olivine ChestPlate";
recipes.addShaped(<projectred-exploration:peridot_chestplate>, [
    [<ore:gemOlivine>, null, <ore:gemOlivine>],
    [<ore:gemOlivine>, <ore:gemOlivine>, <ore:gemOlivine>], 
    [<ore:gemOlivine>, <ore:gemOlivine>, <ore:gemOlivine>]
]);

recipes.remove(<projectred-exploration:peridot_leggings>);
<projectred-exploration:peridot_leggings>.displayName = "Olivine Legging";
recipes.addShaped(<projectred-exploration:peridot_leggings>, [
    [<ore:gemOlivine>, <ore:gemOlivine>, <ore:gemOlivine>],
    [<ore:gemOlivine>, null, <ore:gemOlivine>], 
    [<ore:gemOlivine>, null, <ore:gemOlivine>]
]);

recipes.remove(<projectred-exploration:peridot_boots>);
<projectred-exploration:peridot_boots>.displayName = "Olivine Boots";
recipes.addShaped(<projectred-exploration:peridot_boots>, [
    [null, null, null],
    [<ore:gemOlivine>, null, <ore:gemOlivine>], 
    [<ore:gemOlivine>, null, <ore:gemOlivine>]
]);

recipes.remove(<projectred-exploration:stone_wall:7>);
<projectred-exploration:stone_wall:7>.displayName = "Olivine Wall";
recipes.addShaped(<projectred-exploration:stone_wall:7>, [
    [null,null,null],
    [<ore:blockOlivine>,<ore:blockOlivine>,<ore:blockOlivine>],
    [<ore:blockOlivine>,<ore:blockOlivine>,<ore:blockOlivine>]
]);

//draw plate
recipes.remove(<projectred-core:drawplate>);
recipes.addShaped(<projectred-core:drawplate>, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
    [<ore:componentRubberHose>, <ore:componentRubberHose>, <ore:componentRubberHose>], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
]);
//simple ender teleport
furnace.remove(<lteleporters:endercrystal>);
autoclave.recipeBuilder()
    .inputs(<threng:material:5>)
    .fluidInputs([<liquid:ender>*250])
    .outputs(<lteleporters:endercrystal>)
    .duration(200)
    .EUt(240)
    .buildAndRegister();
//qarry plus
    #work bench
recipes.remove(<quarryplus:workbenchplus>);
recipes.addShaped(<quarryplus:workbenchplus>,[
    [<gregtech:machine_casing:3>,<gregtech:machine_casing:3>,<gregtech:machine_casing:3>],
    [<ore:HVcap>,<gregtech:machine_casing:3>,<ore:componentHVCapacitor>],
    [<gregtech:machine_casing:3>,<gregtech:machine_casing:3>,<gregtech:machine_casing:3>]
]);
//bonsai 
recipes.remove(<bonsaitrees:bonsaipot>);
recipes.addShaped(<bonsaitrees:bonsaipot>,[
    [null,null,null],
    [<ore:plateTungstenSteel>,null,<ore:plateTungstenSteel>],
    [<ore:plateTungstenSteel>,<ore:plateTungstenSteel>,<ore:plateTungstenSteel>]
]);
//builder
recipes.remove(<betterbuilderswands:wandunbreakable:12>);
recipes.addShaped(<betterbuilderswands:wandunbreakable:12>,[
    [<ore:blockObsidian>,<ore:blockObsidian>,<ore:blockObsidian>],
    [<ore:plateSilver>,<ore:stickSilver>,<ore:plateSilver>],
    [<ore:stickSilver>,<ore:blockObsidian>,<ore:blockObsidian>]
]);
//wow Mossy.. (Non-Eutactic Moss)
recipes.remove(<kythsopmoss:overpowered_moss>);
recipes.addShaped(<kythsopmoss:overpowered_moss>, [
    [<ore:componentSolarPanel>, <ore:slimecrystal>, <ore:componentSolarPanel>],
    [<ore:slimecrystal>, <tconstruct:materials:19>, <ore:slimecrystal>], 
    [<tconstruct:materials:19>, <ore:slimecrystal>, <tconstruct:materials:19>]
]);
//backpack
    #Large Backpack
recipes.remove(<usefulbackpacks:backpack:2>);
recipes.addShaped(<usefulbackpacks:backpack:2>, [
    [<ore:leather>, <ore:slimeball>, <ore:leather>],
    [<danknull:dank_null_panel_4>, <usefulbackpacks:backpack:1>, <danknull:dank_null_panel_4>], 
    [<ore:leather>, <danknull:dank_null_panel_4>, <ore:leather>]
]);
    #Medium Backpack
recipes.remove(<usefulbackpacks:backpack:1>);
recipes.addShaped(<usefulbackpacks:backpack:1>, [
    [<ore:leather>, <ore:plateSteel>, <ore:leather>],
    [<ore:slimeball>, <usefulbackpacks:backpack>, <ore:slimeball>], 
    [<ore:leather>, <ore:slimeball>, <ore:leather>]
]);
    #Small Backpack
recipes.remove(<usefulbackpacks:backpack>);
recipes.addShaped(<usefulbackpacks:backpack>, [
    [<ore:leather>, <ore:plateBronze>, <ore:leather>],
    [<ore:slimeball>, <tconstruct:piggybackpack>, <ore:slimeball>], 
    [<ore:leather>, <ore:slimeball>, <ore:leather>]
]);

//scannable
recipes.remove(<scannable:module_ore_rare>);
recipes.addShaped(<scannable:module_ore_rare>, [
    [null, null, null],
    [<ore:ingotCopper>, <scannable:module_blank>, <ore:ingotCopper>], 
    [<ore:ingotTin>, null, <ore:ingotTin>]
]);

recipes.remove(<scannable:module_blank>);
recipes.addShaped(<scannable:module_blank>, [
    [<ore:dyeGreen>, <ore:dyeGreen>, <ore:dyeGreen>],
    [<ore:dyeGreen>, <ore:ingotTin>, <ore:dyeGreen>], 
    [<ore:dyeGreen>, <ore:plateBronze>, <ore:dyeGreen>]
]);

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [
    [<ore:plateTin>, <ore:dustRedstone>, <ore:plateTin>],
    [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);

//fix chest recipes
val chestsfix as IItemStack[] = [
    <quark:custom_chest:4>,
    <quark:custom_chest:3>,
    <quark:custom_chest:2>,
    <quark:custom_chest:1>,
    <quark:custom_chest>,
    <minecraft:chest>,
];
for i in chestsfix {
    recipes.remove(i);
    recipes.removeShaped(i, [
        [<*>,<*>,<*>],
        [<*>,null,<*>],
        [<*>,<*>,<*>]
    ]);
}
    #Dark Oak Chest
recipes.addShaped(<quark:custom_chest:4> * 2, [
    [<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
    [<minecraft:log2:1>, null, <minecraft:log2:1>],
    [<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
]);
recipes.addShaped(<quark:custom_chest:4>, [
    [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
    [<minecraft:planks:5>, null, <minecraft:planks:5>],
    [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]
]);
    #Acacia Chest
recipes.addShaped(<quark:custom_chest:3> * 2, [
    [<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
    [<minecraft:log2>, null, <minecraft:log2>],
    [<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
]);
recipes.addShaped(<quark:custom_chest:3>, [
    [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
    [<minecraft:planks:4>, null, <minecraft:planks:4>],
    [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]
]);
    #Jungle Chest
recipes.addShaped(<quark:custom_chest:2> * 2, [
    [<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
    [<minecraft:log:3>, null, <minecraft:log:3>],
    [<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
]);
recipes.addShaped(<quark:custom_chest:2>, [
    [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
    [<minecraft:planks:3>, null, <minecraft:planks:3>],
    [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]
]);
    #Birch Chest
recipes.addShaped(<quark:custom_chest:1> * 2, [
    [<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
    [<minecraft:log:2>, null, <minecraft:log:2>],
    [<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
]);
recipes.addShaped(<quark:custom_chest:1>, [
    [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
    [<minecraft:planks:2>, null, <minecraft:planks:2>],
    [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]
]);
    #Spruce Chest
recipes.addShaped(<quark:custom_chest>, [
    [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
    [<minecraft:planks:1>, null, <minecraft:planks:1>],
    [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]
]);
recipes.addShaped(<quark:custom_chest> * 2, [
    [<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
    [<minecraft:log:1>, null, <minecraft:log:1>],
    [<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
]);
    #Oak Chest
recipes.addShapeless(<minecraft:chest>, [<minecraft:chest_minecart>]);
recipes.addShaped(<minecraft:chest> * 2, [
    [<minecraft:log>, <minecraft:log>, <minecraft:log>],
    [<minecraft:log>, null, <minecraft:log>],
    [<minecraft:log>, <minecraft:log>, <minecraft:log>]
]);
recipes.addShaped(<minecraft:chest>, [
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
    [<minecraft:planks>, null, <minecraft:planks>],
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]
]);

//fix hopper recipes
recipes.remove(<minecraft:hopper>);
recipes.removeShaped(<minecraft:hopper>,[
    [<*>,<*>,<*>],
    [<*>,<*>,<*>],
    [null,<*>,null]
]);
recipes.addShapeless(<minecraft:hopper>, [<minecraft:hopper_minecart>]);
recipes.addShaped(<minecraft:hopper>, [
    [<ore:plateIron>, craftingToolWrench, <ore:plateIron>],
    [<ore:plateIron>, <ore:chest>, <ore:plateIron>], 
    [null, <ore:plateIron>, null]
]);

//fix stick recipes
recipes.remove(<minecraft:stick>);
recipes.removeShaped(<minecraft:stick>,[
  [<*>,<*>,<*>],
  [<*>,<*>,<*>],
  [<*>,<*>,<*>]
]);
recipes.removeShapeless(<minecraft:stick>,[<ore:logWood>,<ore:logWood>],true);

recipes.addShapeless(<minecraft:stick> * 4, [<ore:logWood>,<ore:logWood>]);
recipes.addShapeless(<minecraft:stick> * 2, [<ore:plankWood>,<ore:plankWood>]);
recipes.addShaped(<minecraft:stick> * 4, [
    [null, craftingToolSaw, null],
    [null, <ore:plankWood>, null], 
    [null, <ore:plankWood>, null]
]);
recipes.addShaped(<minecraft:stick> * 8, [
    [null, craftingToolSaw, null],
    [null, <ore:logWood>, null], 
    [null, <ore:logWood>, null]
]);

//fix marble
recipes.remove(<quark:marble:1>);
recipes.addShaped(<quark:marble:1> * 9, [
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>], 
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]
]);

//shield 
recipes.remove(<spartanshields:shield_riot_enderio>);
recipes.addShaped(<spartanshields:shield_riot_enderio>, [
    [<ore:ingotSteelMagnetic>, <gregtech:meta_item_1:32682>, <ore:ingotSteelMagnetic>],
    [<ore:ingotTungstenSteel>, <ore:HVbattery>, <ore:ingotTungstenSteel>], 
    [<ore:ingotTungstenSteel>, <gregtech:meta_item_1:32672>, <ore:ingotTungstenSteel>]
]);
<spartanshields:shield_riot_enderio>.displayName = "Emitter Riot Shiled";
<spartanshields:shield_riot_enderio>.addTooltip(format.yellow("Live with honor, die with glory."));

//magnet
recipes.remove(<simplemagnets:basicmagnet>);
recipes.addShaped(<simplemagnets:basicmagnet>, [
    [<ore:ingotIronMagnetic>, <ore:stickLongAluminium>, <ore:blockLapis>],
    [<ore:ingotIronMagnetic>, <ore:stickLongAluminium>, <ore:enderpearl>], 
    [<ore:ingotIronMagnetic>, <ore:stickLongAluminium>, <ore:blockRedstone>]
]);
recipes.remove(<simplemagnets:advancedmagnet>);
assembler.recipeBuilder()
    .inputs(<simplemagnets:basicmagnet>,<ore:blockLapis>,<ore:blockRedstone>,<ore:gemEnderPearl>*2)
    .fluidInputs([<liquid:rose_gold>*1000])
    .outputs(<simplemagnets:advancedmagnet>)
    .duration(300)
    .EUt(512)
    .buildAndRegister();

//excavation
recipes.remove(<oeintegration:excavatemodifier>);
forming.recipeBuilder()
    .inputs(<ore:ingotManyullyn>*2,<ore:blockSlime>,<ore:ingotNaquadah>*4)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<oeintegration:excavatemodifier>*2)
    .duration(60)
    .EUt(8192)
    .buildAndRegister();
