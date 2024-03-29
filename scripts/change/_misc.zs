//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

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

//translocator recipes
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

//lighting wand
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

//chest transporter
val transporter as IItemStack[] = [
    <chesttransporter:chesttransporter_iron>,
    <chesttransporter:chesttransporter_tin>,
    <chesttransporter:chesttransporter_silver>,
];
for i in transporter {
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

//fix wooden spike
recipes.remove(<extrautils2:spike_wood>);
val sword = <tconstruct:large_sword_blade>.withTag({Material: "wood"});
recipes.addShaped(<extrautils2:spike_wood>,[
	[null,sword,null],
	[sword,<ore:plankWood>,sword],
	[<ore:plankWood>,<ore:logWood>,<ore:plankWood>]
]);

//project red peridot items and draw plate
recipes.remove(<projectred-exploration:peridot_helmet>);
<projectred-exploration:peridot_helmet>.displayName = "Olivine Helmet";
recipes.addShaped(<projectred-exploration:peridot_helmet>, [
    [<ore:gemOlivine>, <ore:gemOlivine>, <ore:gemOlivine>],
    [<ore:gemOlivine>, null, <ore:gemOlivine>]
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
    [<ore:gemOlivine>, null, <ore:gemOlivine>],
    [<ore:gemOlivine>, null, <ore:gemOlivine>]
]);

recipes.remove(<projectred-exploration:stone_wall:7>);
<projectred-exploration:stone_wall:7>.displayName = "Olivine Wall";
recipes.addShaped(<projectred-exploration:stone_wall:7>, [
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

//bonsai
recipes.remove(<bonsaitrees:bonsaipot>);
recipes.addShaped(<bonsaitrees:bonsaipot>,[
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

/** About easy recipes from EnderIO
* EnderIO register its recipes in their own way using xml extension (see config/enderio/).
* However, as we tweaks some recipes from crafttweaker, JEI refused to remove/change its recipes,
* which will make user to be confused (Crafttweaker does succesfully remove/change recipes).
* So, as we try to fix some easy recipes, we've just disabled the original one from enderio and instead,
* ported to here.
*/

//Add easy chest recipes (ported from enderio)
val chestFix as IItemStack[IItemStack[]] = {
    #Dark Oak
    [
        <minecraft:log2:1>,
        <forestry:logs.vanilla.fireproof.1:1>
    ] : <quark:custom_chest:4>,
    #Acacia
    [
        <minecraft:log2>,
        <forestry:logs.vanilla.fireproof.1>
    ] : <quark:custom_chest:3>,
    #Jungle
    [
        <minecraft:log:3>,
        <forestry:logs.vanilla.fireproof.0:3>
    ] : <quark:custom_chest:2>,
    #Birch
    [
        <minecraft:log:2>,
        <forestry:logs.vanilla.fireproof.0:2>
    ] : <quark:custom_chest:1>,
    #Spruce
    [
        <minecraft:log:1>,
        <forestry:logs.vanilla.fireproof.0:1>
    ] : <quark:custom_chest>,
    #Oak
    [
        <minecraft:log>,
        <forestry:logs.vanilla.fireproof.0>
    ] : <minecraft:chest>,
    #others to oak chest
    [
        <forestry:logs.fireproof.6:3>,
        <forestry:logs.fireproof.7>,
        <forestry:logs.fireproof.6:2>,
        <forestry:logs.fireproof.6:1>,
        <forestry:logs.fireproof.6>,
        <forestry:logs.fireproof.2:3>,
        <forestry:logs.fireproof.3>,
        <forestry:logs.fireproof.3:1>,
        <forestry:logs.fireproof.3:2>,
        <forestry:logs.fireproof.3:3>,
        <forestry:logs.fireproof.4>,
        <forestry:logs.fireproof.4:1>,
        <forestry:logs.fireproof.4:2>,
        <forestry:logs.fireproof.4:3>,
        <forestry:logs.fireproof.5>,
        <forestry:logs.fireproof.5:1>,
        <forestry:logs.fireproof.5:2>,
        <forestry:logs.fireproof.5:3>,
        <forestry:logs.fireproof.2:2>,
        <forestry:logs.fireproof.2:1>,
        <forestry:logs.fireproof.2>,
        <forestry:logs.fireproof.1:3>,
        <forestry:logs.fireproof.1:2>,
        <forestry:logs.fireproof.1:1>,
        <forestry:logs.fireproof.1>,
        <forestry:logs.fireproof.0:3>,
        <forestry:logs.fireproof.0:2>,
        <forestry:logs.fireproof.0:1>,
        <forestry:logs.fireproof.0>,
        <forestry:logs.7>,
        <forestry:logs.6:3>,
        <forestry:logs.3:2>,
        <forestry:logs.3:3>,
        <forestry:logs.4>,
        <forestry:logs.4:1>,
        <forestry:logs.4:2>,
        <forestry:logs.4:3>,
        <forestry:logs.5>,
        <forestry:logs.5:1>,
        <forestry:logs.5:2>,
        <forestry:logs.5:3>,
        <forestry:logs.6>,
        <forestry:logs.6:1>,
        <forestry:logs.6:2>,
        <forestry:logs.3:1>,
        <forestry:logs.3>,
        <forestry:logs.2:3>,
        <forestry:logs.2:2>,
        <forestry:logs.2:1>,
        <forestry:logs.2>,
        <forestry:logs.1:3>,
        <forestry:logs.1:2>,
        <forestry:logs.1:1>,
        <forestry:logs.1>,
        <forestry:logs.0:3>,
        <forestry:logs.0:2>,
        <forestry:logs.0:1>,
        <forestry:logs.0>,
    ] : <minecraft:chest>,
};

for k,o in chestFix {
    for i in k {
        recipes.addShaped(o * 2, [
        [i,i, i],
        [i, null, i],
        [i, i, i]
        ]);
        assembler.recipeBuilder()
            .inputs(i * 8)
            .notConsumable(<metaitem:circuit.integrated>.withTag({ Configuration: 9 }))
            .outputs(o*2)
            .duration(1600)
            .EUt(5)
            .buildAndRegister();
    }
}

/*
* As there are various kinds of chests and trap door from quark (and Future MC), we suppose we'd support with gregtech's machine too.
*/
//Remove the original recipes that require *any* wood plank
assembler.findRecipe(4, [<ore:plankWood>.firstItem * 8, <metaitem:circuit.integrated>.withTag({ Configuration: 8 })], null).remove();
assembler.findRecipe(4, [<ore:plankWood>.firstItem * 3, <metaitem:circuit.integrated>.withTag({ Configuration: 3 })], null).remove();

//Add each chest and trap door (also supports chisels)
val ChestTrapFixRemove as string[] = [
    "minecraft:chest",
    "quark:custom_chest",
    "quark:custom_chest:1",
    "quark:custom_chest:2",
    "quark:custom_chest:3",
    "quark:custom_chest:4",
    "quark:trapdoor",
    "futuremc:oak_wooden_trapdoor",
    "quark:dark_oak_trapdoor",
    "futuremc:acacia_trapdoor",
    "futuremc:jungle_trapdoor",
    "futuremc:birch_trapdoor",
    "futuremc:spruce_trapdoor",
];

for name in ChestTrapFixRemove {
    recipes.removeByRecipeName(name);
}

    #chest
val chestFixCrafting as IItemStack[IItemStack[]] = {
    #Dark Oak
    [
        <minecraft:planks:5>,
        <chisel:planks-dark-oak:*>,
        <forestry:planks.vanilla.fireproof.0:5>
    ] : <quark:custom_chest:4>,
    #Acacia
    [
        <minecraft:planks:4>,
        <chisel:planks-acacia:*>,
        <forestry:planks.vanilla.fireproof.0:4>
    ]: <quark:custom_chest:3>,
    #Jungle
    [
        <minecraft:planks:3>,
        <chisel:planks-jungle:*>,
        <forestry:planks.vanilla.fireproof.0:3>
    ] : <quark:custom_chest:2>,
    #Birch
    [
        <minecraft:planks:2>,
        <chisel:planks-birch:*>,
        <forestry:planks.vanilla.fireproof.0:2>
    ] : <quark:custom_chest:1>,
    #Spruce
    [
        <minecraft:planks:1>,
        <chisel:planks-spruce:*>,
        <forestry:planks.vanilla.fireproof.0:1>
    ] : <quark:custom_chest>,
    #Oak
    [
        <minecraft:planks>,
        <chisel:planks-oak:*>,
        <forestry:planks.vanilla.fireproof.0>
    ] : <minecraft:chest>,
    #others to oak chest
    [
        <forestry:planks.fireproof.1:12>,
        <forestry:planks.fireproof.1:11>,
        <forestry:planks.fireproof.1:10>,
        <forestry:planks.fireproof.1:9>,
        <forestry:planks.fireproof.1:8>,
        <forestry:planks.fireproof.1:7>,
        <forestry:planks.fireproof.1:6>,
        <forestry:planks.fireproof.1:5>,
        <forestry:planks.fireproof.1:4>,
        <forestry:planks.fireproof.1:3>,
        <forestry:planks.fireproof.1:2>,
        <forestry:planks.fireproof.1:1>,
        <forestry:planks.fireproof.1>,
        <forestry:planks.fireproof.0:15>,
        <forestry:planks.fireproof.0:14>,
        <forestry:planks.fireproof.0:13>,
        <forestry:planks.fireproof.0:12>,
        <forestry:planks.1:12>,
        <forestry:planks.fireproof.0>,
        <forestry:planks.fireproof.0:1>,
        <forestry:planks.fireproof.0:2>,
        <forestry:planks.fireproof.0:3>,
        <forestry:planks.fireproof.0:4>,
        <forestry:planks.fireproof.0:5>,
        <forestry:planks.fireproof.0:6>,
        <forestry:planks.fireproof.0:7>,
        <forestry:planks.fireproof.0:8>,
        <forestry:planks.fireproof.0:9>,
        <forestry:planks.fireproof.0:10>,
        <forestry:planks.fireproof.0:11>,
        <forestry:planks.1:11>,
        <forestry:planks.1:10>,
        <forestry:planks.1:9>,
        <forestry:planks.1:8>,
        <forestry:planks.1:7>,
        <forestry:planks.1:6>,
        <forestry:planks.1:5>,
        <forestry:planks.1:4>,
        <forestry:planks.1:3>,
        <forestry:planks.1:2>,
        <forestry:planks.1:2>,
        <forestry:planks.1:1>,
        <forestry:planks.1>,
        <forestry:planks.0:15>,
        <forestry:planks.0:2>,
        <forestry:planks.0:3>,
        <forestry:planks.0:4>,
        <forestry:planks.0:5>,
        <forestry:planks.0:6>,
        <forestry:planks.0:7>,
        <forestry:planks.0:8>,
        <forestry:planks.0:9>,
        <forestry:planks.0:10>,
        <forestry:planks.0:11>,
        <forestry:planks.0:12>,
        <forestry:planks.0:14>,
        <forestry:planks.0:13>,
        <forestry:planks.0>,
        <forestry:planks.0:1>,
    ] : <minecraft:chest>
};

for k,output in chestFixCrafting{
    for input in k {
        recipes.addShaped(output,[
            [input,input,input],
            [input,null,input],
            [input,input,input]
        ]);
        assembler.recipeBuilder()
            .inputs(input * 8)
            .notConsumable(<metaitem:circuit.integrated>.withTag({ Configuration: 8 }))
            .outputs(output)
            .duration(800)
            .EUt(4)
            .buildAndRegister();
    }
}

    #trap door
val trapFixCrafting as IItemStack[IItemStack] = {
    #Dark Oak
    <minecraft:planks:5> : <quark:dark_oak_trapdoor>,
    <chisel:planks-dark-oak:*> : <quark:dark_oak_trapdoor>,
    #Acacia
    <minecraft:planks:4> : <futuremc:acacia_trapdoor>,
    <chisel:planks-acacia:*> : <futuremc:acacia_trapdoor>,
    #Jungle
    <minecraft:planks:3> : <futuremc:jungle_trapdoor>,
    <chisel:planks-jungle:*> : <futuremc:jungle_trapdoor>,
    #Birch
    <minecraft:planks:2> : <futuremc:birch_trapdoor>,
    <chisel:planks-birch:*> : <futuremc:birch_trapdoor>,
    #Spruce
    <minecraft:planks:1> : <futuremc:spruce_trapdoor>,
    <chisel:planks-spruce:*> : <futuremc:spruce_trapdoor>,
    #Oak
    <minecraft:planks> : <minecraft:trapdoor>,
    <chisel:planks-oak:*> : <minecraft:trapdoor>
};

for input,output in trapFixCrafting {
    recipes.addShaped(output*2,[
        [input,input,input],
        [input,input,input]
    ]);
    assembler.recipeBuilder()
        .inputs(input * 3)
        .notConsumable(<metaitem:circuit.integrated>.withTag({ Configuration: 3 }))
        .outputs(output*2)
        .duration(300)
        .EUt(4)
        .buildAndRegister();
}

    #iron trapdoor bounus adding
assembler.recipeBuilder()
    .inputs(<ore:plateIron>*4)
    .notConsumable(<metaitem:circuit.integrated>.withTag({ Configuration: 4 }))
    .outputs(<minecraft:iron_trapdoor>)
    .duration(300)
    .EUt(32)
    .buildAndRegister();

//Add easy stick recipes (ported from enderio)
recipes.addShaped(<minecraft:stick> * 4, [
    [<ore:logWood>],
    [<ore:logWood>]
]);
recipes.addShaped(<minecraft:stick> * 8, [
    [craftingToolSaw],
    [<ore:logWood>],
    [<ore:logWood>]
]);

/**
* Patch hopper
* Support quark's chest to be assemble to hopper using assembler from gtce.
*/
val ironPlate = [<ore:plateIron>, <ore:plateWroughtIron>] as IOreDictEntry[];
for i in ironPlate {
    assembler.findRecipe(2, [<minecraft:chest>, i.firstItem * 5], null).remove();
    assembler.findRecipe(2, [<minecraft:trapped_chest>, i.firstItem * 5], null).remove();
    assembler.recipeBuilder()
        .inputs(i * 5, <ore:chestWood>)
        .outputs(<minecraft:hopper>)
        .duration(800)
        .EUt(2)
        .buildAndRegister();
    assembler.recipeBuilder()
        .inputs(i * 5, <ore:chestTrapped>)
        .outputs(<minecraft:hopper>)
        .duration(800)
        .EUt(2)
        .buildAndRegister();
}

//fix marble
recipes.remove(<quark:marble:1>);
recipes.addShaped(<quark:marble:1> * 9, [
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]
]);

//fix marble brick conflict
recipes.removeByRecipeName("projectred-exploration:blocks/marble_brick");
recipes.addShaped(<projectred-exploration:stone:1>*4,[
    [<projectred-exploration:stone>,<projectred-exploration:stone>],
    [<projectred-exploration:stone>,<projectred-exploration:stone>]
]);

//fix marble wall conflict
recipes.removeByRecipeName("projectred-exploration:blocks/wall/marble_wall");
recipes.addShaped(<projectred-exploration:stone_wall:0>*16,[
    [<projectred-exploration:stone>,<projectred-exploration:stone>,<projectred-exploration:stone>],
    [<projectred-exploration:stone>,<projectred-exploration:stone>,<projectred-exploration:stone>]
]);

//fix granite, Diorite and Andesite bricks conflict
val fixBrick as string[] = [
    "minecraft:polished_granite",
    "minecraft:polished_diorite",
    "minecraft:polished_andesite"
];
for name in fixBrick {
    recipes.removeByRecipeName(name);
}
val fixPolishedMinecraft as IItemStack[IItemStack] ={
    <minecraft:stone:2> : <minecraft:stone:1>,
    <minecraft:stone:4> : <minecraft:stone:3>,
    <minecraft:stone:6> : <minecraft:stone:5>,
};

for polished,raw in fixPolishedMinecraft {
    recipes.addShaped(polished*4,[
        [raw,raw],
        [raw,raw]
    ]);
}

//fix stone brick
    #slab
recipes.removeByRecipeName("minecraft:stone_brick_slab");
recipes.addShaped(<minecraft:stone_slab:5>*6,[
    [<minecraft:stonebrick>,<minecraft:stonebrick>,<minecraft:stonebrick>]
]);
    #stair
recipes.removeByRecipeName("minecraft:stone_brick_stairs");
recipes.addShaped(<minecraft:stone_brick_stairs>*8,[
    [<minecraft:stonebrick>,null,null],
    [<minecraft:stonebrick>,<minecraft:stonebrick>,null],
    [<minecraft:stonebrick>,<minecraft:stonebrick>,<minecraft:stonebrick>]
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

recipes.addShapeless(<simplemagnets:basic_demagnetization_coil>,[<randomthings:itemcollector>]);
recipes.addShapeless(<simplemagnets:advanced_demagnetization_coil>,[<randomthings:advanceditemcollector>]);

//excavation
recipes.remove(<oeintegration:excavatemodifier>);
forming.recipeBuilder()
    .inputs(<ore:ingotManyullyn>*25,<ore:blockSlime>*12,<ore:ingotNaquadah>*64)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<oeintegration:excavatemodifier>*25)
    .duration(60)
    .EUt(8192)
    .buildAndRegister();

//sonarcore
val portalFrame as IItemStack[] = [
    <sonarcore:stablestone_plain>,
    <sonarcore:stablestoneblackrimmed_plain>,
    <sonarcore:stablestoneblackrimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_lightgrey>
];

for i in portalFrame{
    recipes.remove(i);
}

recipes.addShaped(<sonarcore:stablestone_plain>,[
    [<sonarcore:reinforcedstonebrick>,<sonarcore:reinforcedstonebrick>,<sonarcore:reinforcedstonebrick>],
    [<sonarcore:reinforcedstonebrick>,null,<sonarcore:reinforcedstonebrick>],
    [<sonarcore:reinforcedstonebrick>,<sonarcore:reinforcedstonebrick>,<sonarcore:reinforcedstonebrick>]
]);

    #name of portal frame
<sonarcore:stablestoneblackrimmed_lightblue>.displayName = "VoidWorld Portal Frame";
<sonarcore:stablestoneblackrimmed_plain>.displayName = "Nether From Void Portal Frame";
<sonarcore:stablestone_plain>.displayName = "Portal Frame Base Block";
<sonarcore:stablestoneblackrimmed_lightgrey>.displayName = "Portal Frame Block";

//open grider
for mod in loadedMods["openglider"].items{
    recipes.remove(mod);
}

    #grider wing
assembler.recipeBuilder()
    .inputs(<ore:woolWhite>*4,<ore:blockWoolRed>*2,<ore:stickIron>*2)
    .outputs(<openglider:hang_glider_part>)
	.circuit(1)
    .duration(512)
    .EUt(128)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:woolWhite>*4,<ore:blockWoolRed>*2,<ore:stickIron>*2)
    .outputs(<openglider:hang_glider_part:1>)
    .circuit(2)
    .duration(512)
    .EUt(128)
    .buildAndRegister();
    #grider frame
assembler.recipeBuilder()
    .inputs(<ore:stickIron>*9)
    .outputs(<openglider:hang_glider_part:2>)
    .circuit(2)
    .duration(120)
    .EUt(128)
    .buildAndRegister();
    #grider
assembler.recipeBuilder()
    .inputs(<openglider:hang_glider_part:2>,<openglider:hang_glider_part:1>,<openglider:hang_glider_part>)
    .outputs(<openglider:hang_glider_basic>)
    .duration(120)
    .EUt(64)
    .buildAndRegister();
    #hyper grider
assembler.recipeBuilder()
    .inputs(<openglider:hang_glider_basic>,<minecraft:elytra>*2,<ore:stickIron>*4)
    .outputs(<openglider:hang_glider_advanced>)
    .duration(120)
    .EUt(64)
    .buildAndRegister();

//quarry plus
	#mining well
assembler.recipeBuilder()
	.inputs(<gregtech:machine:503>,<gtadditions:ga_pump_casing:2>*2,<industrialforegoing:fluid_pump>,<ore:toolHeadDrillDiamond>,<ore:HVcap>)
	.outputs(<quarryplus:miningwellplus>)
	.circuit(4)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#advanced pump
assembler.recipeBuilder()
	.inputs(<gregtech:machine:503>,<gtadditions:ga_pump_casing:2>*4,<industrialforegoing:fluid_pump>*2,<ore:HVcap>)
	.outputs(<quarryplus:standalonepump>)
	.circuit(3)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#ex pump
assembler.recipeBuilder()
	.inputs(<gregtech:machine:503>,<gtadditions:ga_pump_casing:2>*2,<industrialforegoing:fluid_pump>,<ore:HVcap>,<mob_grinding_utils:absorption_hopper>)
	.outputs(<quarryplus:exppump>)
	.fluidInputs([<liquid:xpjuice>*1000])
	.circuit(5)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#pump plus
assembler.recipeBuilder()
	.inputs(<quarryplus:standalonepump>,<ore:pipeLargeStainlessSteel>*2)
	.outputs(<quarryplus:pumpplus>)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#quarry plus old
assembler.recipeBuilder()
	.inputs(<gregtech:machine:503>,<ore:toolHeadDrillDiamond>,<gregtech:meta_item_1:32722>*2,<ore:gearTungsten>*4,<ore:stickLongTungsten>*8,<gtadditions:ga_motor_casing:2>,<gtadditions:ga_piston_casing:2>)
	.outputs(<quarryplus:quarryplus>)
	.circuit(1)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
recipes.addShapeless(<quarryplus:quarryplus>, [<quarryplus:quarry>]);
	#quarry plus new
assembler.recipeBuilder()
	.inputs(<gregtech:machine:503>,<ore:toolHeadDrillDiamond>,<gregtech:meta_item_1:32722>*2,<ore:gearTungsten>*4,<ore:stickLongTungsten>*8,<gtadditions:ga_motor_casing:2>,<gtadditions:ga_piston_casing:2>)
	.outputs(<quarryplus:quarry>)
	.circuit(2)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
recipes.addShapeless(<quarryplus:quarry>, [<quarryplus:quarryplus>]);
	#filler
assembler.recipeBuilder()
	.inputs(<ore:stickLongTungsten>*2,<ore:gearTungsten>*2,<gtadditions:ga_motor_casing:2>,<gregtech:machine:503>,<betterbuilderswands:wandunbreakable:12>)
	.outputs(<quarryplus:filler>)
	.circuit(6)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#enchance mover
recipes.addShaped(<quarryplus:enchantmover>,[
	[<ore:plateDiamond>,<ore:blockRedstone>,<ore:plateDiamond>],
	[<industrialforegoing:enchantment_aplicator>,<industrialforegoing:enchantment_extractor>,<industrialforegoing:enchantment_refiner>],
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]
]);
	#torch module
assembler.recipeBuilder()
	.inputs(<minecraft:torch>*64,<minecraft:torch>*64,<minecraft:daylight_detector>,<projectred-integration:gate:15>*8)
	.outputs(<quarryplus:torch_module>)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#lists
var paper as IItemStack = <minecraft:paper>;
recipes.addShaped(<quarryplus:template>.withTag({HideFlags: 1}), [
	[paper,paper,paper],
	[paper,<ore:dyeBlue>,paper],
	[paper,paper,paper]
]);
recipes.addShaped(<quarryplus:tool:1>.withTag({HideFlags: 1}), [
	[paper,paper,paper],
	[paper,<ore:dyeRed>,paper],
	[paper,paper,paper]
]);
	#fluid selector
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32628>,<thermaldynamics:filter>,<minecraft:bucket>,<minecraft:wool:11>,<minecraft:wool:14>,<minecraft:wool:15>,<minecraft:wool:5>)
	.outputs(<quarryplus:tool:2>)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#status
assembler.recipeBuilder()
	.inputs(<enderio:item_conduit_probe>,<minecraft:wool:5>,<minecraft:wool:4>,<minecraft:wool:14>)
	.outputs(<quarryplus:tool>)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#Ysetter
recipes.addShapeless(<quarryplus:tool:3>, [<quarryplus:tool>,<chisel:offsettool>]);
	#marker
recipes.addShapeless(<quarryplus:markerplus>, [<cyclicmagic:card_location>]);
	#mirror
assembler.recipeBuilder()
	.inputs(<overloaded:player_interface>*8,<quarryplus:magicmirror>,<lteleporters:endercrystal>*4,<lteleporters:teleporter>*4)
	.outputs(<quarryplus:magicmirror:2>)
	.EUt(512)
	.duration(500)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<quarryplus:magicmirror:2>,<portality:module_interdimensional>,<lteleporters:endercrystal>*2)
	.outputs(<quarryplus:magicmirror:1>)
	.EUt(512)
	.duration(800)
	.buildAndRegister();

//future MC's soul
recipes.addShapeless(<futuremc:soul_fire_torch>*4, [<minecraft:soul_sand>,<minecraft:stick>]);

//akasic tome will be akasic record
recipes.removeByRecipeName("akashictome:tome");
recipes.removeByRecipeName("akashictome:tome_1");
val akasicBook as IItemStack = <akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short}, tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short}, practicallogistics2: {id: "practicallogistics2:plguide", Count: 1 as byte, tag: {"akashictome:definedMod": "practicallogistics2"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, cookingforblockheads1: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads1"}, Damage: 0 as short}, deepmoblearning: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}, forestry: {id: "forestry:book_forester", Count: 1 as byte, tag: {"akashictome:definedMod": "forestry"}, Damage: 0 as short}, cookingforblockheads2: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:definedMod": "cookingforblockheads2"}, Damage: 2 as short}, cookingforblockheads: {id: "cookingforblockheads:recipe_book", Count: 1 as byte, tag: {"akashictome:displayName": "Cooking for Blockheads I", "akashictome:definedMod": "cookingforblockheads", "akashictome:is_morphing": 1 as byte, display: {Name: "Akashic Tome (Cooking for Blockheads I)"}}, Damage: 1 as short}}});
recipes.addShapeless(akasicBook,[<minecraft:book>,<minecraft:stick>]);

//tesseract
recipes.remove(<tesseract:tesseract>);
assembler.recipeBuilder()
    .inputs(<overloaded:energy_core>,<overloaded:fluid_core>,<overloaded:item_core>,<ore:plateEnderium>*4,<gregtech:meta_item_2:19963>*4,<thermalfoundation:glass_alloy:7>*4)
    .fluidInputs([<liquid:enderium>*800])
    .outputs(<tesseract:tesseract>)
    .duration(500)
    .EUt(512)
    .buildAndRegister();

//slash blade
var blade as IItemStack = <tconstruct:sword_blade>.withTag({Material: "wood"});
var guard as IItemStack = <tconstruct:wide_guard>.withTag({Material: "wood"});
var rod as IItemStack = <tconstruct:tool_rod>.withTag({Material: "wood"});
recipes.addShaped(<minecraft:wooden_sword>,[
	[blade],
	[guard],
	[rod]
]);
