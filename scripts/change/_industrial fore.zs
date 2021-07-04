//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//change recipe of machines//
print("start indus");

//Enchantment Sorter
recipes.remove(<industrialforegoing:enchantment_refiner>);
recipes.addShaped(<industrialforegoing:enchantment_refiner>,[
    [<ore:plateSterlingSilver>,<minecraft:ender_pearl>,<ore:plateSterlingSilver>],
    [<minecraft:book>,<ore:MVcasing>,<ore:bookEnchanted>],
    [<ore:plateSterlingSilver>,<ore:gearDiamond>,<ore:plateSterlingSilver>]
]);

//Enchantment Extractor
recipes.remove(<industrialforegoing:enchantment_extractor>);
recipes.addShaped(<industrialforegoing:enchantment_extractor>,[
    [<ore:plateSterlingSilver>,<minecraft:nether_brick>,<ore:plateSterlingSilver>],
    [<minecraft:book>,<ore:MVcasing>,<ore:bookEnchanted>],
    [<minecraft:diamond>,<ore:gearGold>,<minecraft:diamond>]
]);

//Enchantment Applicator
recipes.remove(<industrialforegoing:enchantment_aplicator>);
recipes.addShaped(<industrialforegoing:enchantment_aplicator>,[
    [<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>],
    [<minecraft:anvil>,<ore:MVcasing>,<minecraft:anvil>],
    [<ore:gearBronze>,<minecraft:anvil>,<ore:gearBronze>]
]);

//Mob Crusher
recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator>,[
    [<ore:plateSterlingSilver>,<minecraft:iron_sword>,<ore:plateSterlingSilver>],
    [<minecraft:book>,<ore:MVcasing>,<minecraft:book>],
    [<ore:gearGold>,<ore:blockRedstone>,<ore:gearGold>]
]);

//Potion Brewer
recipes.remove(<industrialforegoing:potion_enervator>);
recipes.addShaped(<industrialforegoing:potion_enervator>,[
    [<ore:plateSterlingSilver>,<minecraft:brewing_stand>,<ore:plateSterlingSilver>],
    [<ore:gearGold>,<ore:MVcasing>,<ore:gearGold>],
    [<projectred-integration:gate:10>,<ore:gearGold>,<projectred-integration:gate:10>]
]);

//Animal Baby Separator
recipes.remove(<industrialforegoing:animal_independence_selector>);
recipes.addShaped(<industrialforegoing:animal_independence_selector>,[
    [<ore:plateSterlingSilver>,<ore:plateEmerald>,<ore:plateSterlingSilver>],
    [<ore:plateEmerald>,<ore:MVcasing>,<ore:plateEmerald>],
    [<ore:dyePurple>,<ore:gearGold>,<ore:dyePurple>]
]);

//Animal Feeder
recipes.remove(<industrialforegoing:animal_stock_increaser>);
recipes.addShaped(<industrialforegoing:animal_stock_increaser>,[
    [<ore:plateSterlingSilver>,<minecraft:golden_apple>,<ore:plateSterlingSilver>],
    [<minecraft:golden_carrot>,<ore:MVcasing>,<minecraft:golden_carrot>],
    [<ore:dyePurple>,<ore:gearIron>,<ore:dyePurple>]
]);

//Plant Sower
recipes.remove(<industrialforegoing:crop_sower>);
recipes.addShaped(<industrialforegoing:crop_sower>,[
    [<ore:plateSterlingSilver>,<minecraft:flower_pot>,<ore:plateSterlingSilver>],
    [<minecraft:piston>,<ore:MVcasing>,<minecraft:piston>],
    [<ore:gearIron>,<ore:blockRedstone>,<ore:gearIron>]
]);

//Plant Fertilizer
recipes.remove(<industrialforegoing:crop_enrich_material_injector>);
recipes.addShaped(<industrialforegoing:crop_enrich_material_injector>,[
    [<ore:plateSterlingSilver>,<minecraft:glass_bottle>,<ore:plateSterlingSilver>],
    [<minecraft:leather>,<ore:MVcasing>,<minecraft:leather>],
    [<ore:gearIron>,<ore:blockRedstone>,<ore:gearIron>]
]);

//Plant Gatherer
recipes.remove(<industrialforegoing:crop_recolector>);
recipes.addShaped(<industrialforegoing:crop_recolector>,[
    [<ore:plateSterlingSilver>,<minecraft:diamond_hoe>,<ore:plateSterlingSilver>],
    [<minecraft:diamond_axe>,<ore:MVcasing>,<minecraft:diamond_axe>],
    [<ore:gearGold>,<ore:blockRedstone>,<ore:gearGold>]
]);

//Animal Rancher
recipes.remove(<industrialforegoing:animal_resource_harvester>);
recipes.addShaped(<industrialforegoing:animal_resource_harvester>,[
    [<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>],
    [<ore:toolShears>,<minecraft:bucket>,<ore:toolShears>],
    [<ore:gearGold>,<ore:MVcasing>,<ore:gearGold>]
]);

//Mob Slaughter Factory
recipes.addShaped(<industrialforegoing:mob_slaughter_factory>,[
    [<ore:plateSterlingSilver>,<ore:gearGold>,<ore:plateSterlingSilver>],
    [<minecraft:diamond_sword>,<ore:MVcasing>,<minecraft:diamond_sword>],
    [<minecraft:diamond_axe>,<ore:gearGold>,<minecraft:diamond_axe>]
]);

//Sewage Composter
recipes.addShaped(<industrialforegoing:sewage_composter_solidifier>,[
    [<ore:plateSterlingSilver>,<gregtech:machine:50>,<ore:plateSterlingSilver>],
    [<minecraft:piston>,<ore:MVcasing>,<minecraft:piston>],
    [<minecraft:brick>,<ore:blockRedstone>,<minecraft:brick>]
]);

//Animal Sewer
recipes.addShaped(<industrialforegoing:animal_byproduct_recolector>,[
    [<ore:plateSterlingSilver>,<minecraft:bucket>,<ore:plateSterlingSilver>],
    [<minecraft:bucket>,<ore:MVcasing>,<minecraft:bucket>],
    [<ore:gearGold>,<ore:blockRedstone>,<ore:gearGold>]
]);

//Mob Detector
recipes.addShaped(<industrialforegoing:mob_detector>,[
    [<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>],
    [<projectred-integration:gate:26>,<minecraft:comparator>,<projectred-integration:gate:26>],
    [<minecraft:observer>,<ore:MVcasing>,<minecraft:observer>]
]);

//Ore Processor
recipes.addShaped(<industrialforegoing:ore_processor>,[
    [<ore:plateSterlingSilver>,<minecraft:piston>,<ore:plateSterlingSilver>],
    [<minecraft:diamond_pickaxe>,<ore:MVcasing>,<minecraft:diamond_pickaxe>],
    [<minecraft:book>,<ore:blockRedstone>,<minecraft:book>]
]);

//Enchantment Factory
recipes.addShaped(<industrialforegoing:enchantment_invoker>,[
    [<ore:plateSterlingSilver>,<ore:bookEnchanted>,<ore:plateSterlingSilver>],
    [<ore:blockDiamond>,<ore:MVcasing>,<ore:blockDiamond>],
    [<ore:obsidian>,<ore:obsidian>,<ore:obsidian>]
]);

//Spores Recreator
recipes.addShaped(<industrialforegoing:spores_recreator>,[
    [<ore:plateSterlingSilver>,<minecraft:red_mushroom>,<ore:plateSterlingSilver>],
    [<minecraft:mycelium>,<ore:MVcasing>,<minecraft:mycelium>],
    [<ore:plateSterlingSilver>,<ore:gearGold>,<ore:plateSterlingSilver>]
]);

//Animal Grower
recipes.addShaped(<industrialforegoing:animal_growth_increaser>,[
    [<ore:plateSterlingSilver>,<minecraft:hay_block>,<ore:plateSterlingSilver>],
    [<minecraft:hay_block>,<ore:MVcasing>,<minecraft:hay_block>],
    [<ore:dyePurple>,<ore:gearGold>,<ore:dyePurple>]
]);

//Fluid Pump
recipes.addShaped(<industrialforegoing:fluid_pump>,[
    [<ore:plateSterlingSilver>,<gregtech:meta_item_1:32611>,<ore:plateSterlingSilver>],
    [<gregtech:meta_item_1:32611>,<ore:MVcasing>,<gregtech:meta_item_1:32611>],
    [<gregtech:meta_item_1:32610>,<gregtech:meta_item_1:32610>,<gregtech:meta_item_1:32610>]
]);

//Fluid Crafter
recipes.addShaped(<industrialforegoing:fluid_crafter>,[
    [<ore:plateSterlingSilver>,<appliedenergistics2:molecular_assembler>,<ore:plateSterlingSilver>],
    [<ore:ringRubber>,<ore:MVcasing>,<ore:ringRubber>],
    [<ore:plateSterlingSilver>,<gregtech:meta_item_1:32610>,<ore:plateSterlingSilver>]
]);

//Plant Interactor
recipes.addShaped(<industrialforegoing:plant_interactor>,[
    [<ore:plateSterlingSilver>,<minecraft:diamond_hoe>,<ore:plateSterlingSilver>],
    [<minecraft:diamond_hoe>,<ore:MVcasing>,<minecraft:diamond_hoe>],
    [<ore:gearGold>,<ore:blockRedstone>,<ore:gearGold>]
]);

//Item Splitter
recipes.addShaped(<industrialforegoing:item_splitter>,[
    [<ore:plateSterlingSilver>,<minecraft:hopper>,<ore:plateSterlingSilver>],
    [<minecraft:hopper>,<ore:MVcasing>,<minecraft:hopper>],
    [<ore:plateSterlingSilver>,<minecraft:chest>,<ore:plateSterlingSilver>]
]);

//Froster
recipes.addShaped(<industrialforegoing:froster>,[
    [<ore:plateSterlingSilver>,<minecraft:packed_ice>,<ore:plateSterlingSilver>],
    [<minecraft:snow>,<ore:MVcasing>,<minecraft:snow>],
    [<ore:plateSterlingSilver>,<ore:gearGold>,<ore:plateSterlingSilver>]
]);

//change misc//

//Mob Imprisonment Tool
recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.addShaped(<industrialforegoing:mob_imprisonment_tool>,[
    [null,<ore:plateSterlingSilver>,null],
    [<ore:plateSterlingSilver>,<tconstruct:piggybackpack>,<ore:plateSterlingSilver>],
    [null,<ore:plateSterlingSilver>,null]
]);

//Extraction Conveyor Upgrade
recipes.remove(<industrialforegoing:conveyor_upgrade>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade>,[
    [<ore:ingotIron>,<ore:plateSterlingSilver>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:dispenser>,<ore:ingotIron>],
    [<ore:ingotIron>,<industrialforegoing:conveyor:*>,<ore:ingotIron>],
]);

//Insertion Conveyor Upgrade
recipes.remove(<industrialforegoing:conveyor_upgrade:1>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:1>,[
    [<ore:ingotIron>,<ore:plateSterlingSilver>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:hopper>,<ore:ingotIron>],
    [<ore:ingotIron>,<industrialforegoing:conveyor:*>,<ore:ingotIron>],
]);

//White Conveyor Belt
recipes.remove(<industrialforegoing:conveyor>);
recipes.addShaped(<industrialforegoing:conveyor>,[
    [<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>],
    [<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>],
    [<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>]
]);
recipes.addShaped(<industrialforegoing:conveyor>,[
    [<industrialforegoing:conveyor:*>,<industrialforegoing:conveyor:*>,<industrialforegoing:conveyor:*>],
    [<industrialforegoing:conveyor:*>,<ore:dyeWhite>,<industrialforegoing:conveyor:*>],
    [<industrialforegoing:conveyor:*>,<industrialforegoing:conveyor:*>,<industrialforegoing:conveyor:*>]
]);

//change upgrades
recipes.remove(<industrialforegoing:range_addon:*>);
	#Range addon
val upgrades as IItemStack[IOreDictEntry] = {
	<ore:plateCopper> : <industrialforegoing:range_addon>,
	<ore:plateBronze> : <industrialforegoing:range_addon:1>,
	<ore:plateSteel> : <industrialforegoing:range_addon:2>,
	<ore:plateAluminium> : <industrialforegoing:range_addon:3>,
	<ore:plateChrome> : <industrialforegoing:range_addon:4>,
	<ore:plateStainlessSteel> : <industrialforegoing:range_addon:5>,
	<ore:plateNichrome> : <industrialforegoing:range_addon:6>,
	<ore:plateTungsten> : <industrialforegoing:range_addon:7>,
	<ore:plateTitanium> : <industrialforegoing:range_addon:8>,
	<ore:plateTungstenSteel> : <industrialforegoing:range_addon:9>,
	<ore:plateStellarAlloy> : <industrialforegoing:range_addon:10>,
	<ore:plateNeutronium> : <industrialforegoing:range_addon:11>,
};

for plate, addon in upgrades {
	recipes.addShaped(addon, [
		[plate,<ore:plateSterlingSilver>,plate],
		[plate,<ore:paneGlass>,plate],
		[plate,<ore:plateSterlingSilver>,plate]
	]);
}
//other filters
for i in loadedMods["industrialforegoing"].items {
    recipes.replaceAllOccurences(<industrialforegoing:plastic>,<ore:plateSterlingSilver>,i);
    recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>,<ore:ingotTungstenSteel>,i);
}
print("end indus");

//------start tesla------//
//base addon
recipes.removeByRecipeName("teslacorelib:base_addon_item");
recipes.addShaped(<teslacorelib:base_addon>,[
	[<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>],
	[<ore:plateSterlingSilver>,<ore:paneGlassCyan>,<ore:plateSterlingSilver>],
	[<ore:plateSterlingSilver>,<ore:plateSterlingSilver>,<ore:plateSterlingSilver>]
]);

//energy update
	#1
recipes.removeByRecipeName("teslacorelib:energy_upgrade_tier_1");
recipes.addShaped(<teslacorelib:energy_tier1>,[
	[<ore:LVcap>,<ore:LVcap>,<ore:LVcap>],
	[<ore:LVcap>,<teslacorelib:base_addon>,<ore:LVcap>],
	[<ore:LVcap>,<ore:LVcap>,<ore:LVcap>]
]);

	#2
recipes.removeByRecipeName("teslacorelib:energy_upgrade_tier_2_2");
recipes.addShaped(<teslacorelib:energy_tier2>,[
	[<ore:MVcap>,<ore:MVcap>,<ore:MVcap>],
	[<ore:MVcap>,<teslacorelib:base_addon>,<ore:MVcap>],
	[<ore:MVcap>,<ore:MVcap>,<ore:MVcap>]
]);

//speed upgrade
	#1
recipes.removeByRecipeName("teslacorelib:speed_upgrade_tier_1");
recipes.addShaped(<teslacorelib:speed_tier1>,[
	[<ore:gearStainlessSteel>,<ore:plateStainlessSteel>,<ore:gearStainlessSteel>],
	[<ore:gearStainlessSteel>,<teslacorelib:base_addon>,<ore:gearStainlessSteel>],
	[<ore:gearStainlessSteel>,<gregtech:meta_item_1:32670>,<ore:gearStainlessSteel>]
]);

	#2
recipes.removeByRecipeName("teslacorelib:speed_upgrade_tier_2_2");
recipes.addShaped(<teslacorelib:speed_tier1>,[
	[<ore:gearDiamond>,<ore:plateDiamond>,<ore:gearDiamond>],
	[<ore:gearDiamond>,<teslacorelib:base_addon>,<ore:gearDiamond>],
	[<ore:gearDiamond>,<gregtech:meta_item_1:32671>,<ore:gearDiamond>]
]);

