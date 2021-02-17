//import crafttweaker II
import crafttweaker.item.IItemStack;

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
    #Range Addon
recipes.addShaped(<industrialforegoing:range_addon:11>, [
    [<gregtech:meta_item_1:12993>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12993>],
    [<gregtech:meta_item_1:12993>, <ore:paneGlass>, <gregtech:meta_item_1:12993>],
    [<gregtech:meta_item_1:12993>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12993>]
]);
recipes.addShaped(<industrialforegoing:range_addon:10>, [
    [<gregtech:meta_item_1:12207>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12207>],
    [<gregtech:meta_item_1:12207>, <ore:paneGlass>, <gregtech:meta_item_1:12207>],
    [<gregtech:meta_item_1:12207>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12207>]
]);
recipes.addShaped(<industrialforegoing:range_addon:9>, [
    [<gregtech:meta_item_1:12859>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12859>],
    [<gregtech:meta_item_1:12859>, <ore:paneGlass>, <gregtech:meta_item_1:12859>],
    [<gregtech:meta_item_1:12859>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12859>]
]);
recipes.addShaped(<industrialforegoing:range_addon:8>, [
    [<gregtech:meta_item_1:12302>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12302>],
    [<gregtech:meta_item_1:12302>, <ore:paneGlass>, <gregtech:meta_item_1:12302>],
    [<gregtech:meta_item_1:12302>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12302>]
]);
recipes.addShaped(<industrialforegoing:range_addon:7>, [
    [<gregtech:meta_item_1:12235>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12235>],
    [<gregtech:meta_item_1:12235>, <ore:paneGlass>, <gregtech:meta_item_1:12235>],
    [<gregtech:meta_item_1:12235>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12235>]
]);
recipes.addShaped(<industrialforegoing:range_addon:6>, [
    [<gregtech:meta_item_1:12133>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12133>],
    [<gregtech:meta_item_1:12133>, <ore:paneGlass>, <gregtech:meta_item_1:12133>],
    [<gregtech:meta_item_1:12133>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:12133>]
]);
recipes.addShaped(<industrialforegoing:range_addon:5>, [
    [<ore:plateStainlessSteel>, <ore:plateSterlingSilver>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:paneGlass>, <ore:plateStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:plateSterlingSilver>, <ore:plateStainlessSteel>]
]);
recipes.addShaped(<industrialforegoing:range_addon:4>, [
    [<gregtech:meta_item_1:13183>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:13183>],
    [<gregtech:meta_item_1:13183>, <ore:paneGlass>, <gregtech:meta_item_1:13183>],
    [<gregtech:meta_item_1:13183>, <ore:plateSterlingSilver>, <gregtech:meta_item_1:13183>]
]);
recipes.addShaped(<industrialforegoing:range_addon:3>, [
    [<ore:plateAluminium>, <ore:plateSterlingSilver>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:paneGlass>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:plateSterlingSilver>, <ore:plateAluminium>]
]);
recipes.addShaped(<industrialforegoing:range_addon:2>, [
    [<ore:plateVanadiumSteel>, <ore:plateSterlingSilver>, <ore:plateVanadiumSteel>],
    [<ore:plateVanadiumSteel>, <ore:paneGlass>, <ore:plateVanadiumSteel>],
    [<ore:plateVanadiumSteel>, <ore:plateSterlingSilver>, <ore:plateVanadiumSteel>]
]);
recipes.addShaped(<industrialforegoing:range_addon:1>, [
    [<ore:plateBronze>, <ore:plateSterlingSilver>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:paneGlass>, <ore:plateBronze>],
    [<ore:plateBronze>, <ore:plateSterlingSilver>, <ore:plateBronze>]
]);
recipes.addShaped(<industrialforegoing:range_addon>, [
    [<ore:plateAnnealedCopper>, <ore:plateSterlingSilver>, <ore:plateAnnealedCopper>],
    [<ore:plateAnnealedCopper>, <ore:paneGlass>, <ore:plateAnnealedCopper>],
    [<ore:plateAnnealedCopper>, <ore:plateSterlingSilver>, <ore:plateAnnealedCopper>]
]);

//other filters
for i in loadedMods["industrialforegoing"].items {
    recipes.replaceAllOccurences(<industrialforegoing:plastic>,<ore:plateSterlingSilver>,i);
    recipes.replaceAllOccurences(<industrialforegoing:pink_slime_ingot>,<ore:ingotTungstenSteel>,i);
}
print("end indus");
