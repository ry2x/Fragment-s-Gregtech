//in this file, deleting items from extraUti, oneProve and others.

//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

val miscItems = [
    <extrautils2:drum:4>,
    <extrautils2:drum:3>,
    <theoneprobe:probe>,
    <theoneprobe:creativeprobe>,
    <theoneprobe:diamond_helmet_probe>,
    <theoneprobe:gold_helmet_probe>,
    <theoneprobe:iron_helmet_probe>,
    <minecraft:mob_spawner>,
    <minecraft:command_block>,
    <minecraft:barrier>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:structure_void>,
    <minecraft:structure_block>,
    <minecraft:wooden_sword>,
    <minecraft:wooden_shovel>,
    <minecraft:wooden_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_shovel>,
    <minecraft:stone_axe>,
    <minecraft:stone_pickaxe>,
    <minecraft:stone_hoe>,
    <minecraft:wooden_hoe>,
    <bibliocraft:bibliocreativelock>,
    <bibliocraft:testeritem>,
    <bibliocraft:atlasbook>,
    <mob_grinding_utils:dark_oak_stone>,
    <mob_grinding_utils:ender_inhibitor_on>,
    <mob_grinding_utils:ender_inhibitor_off>,
    <mob_grinding_utils:spikes>,
    <mob_grinding_utils:tank_sink>,
    <mob_grinding_utils:mob_swab>,
    <mob_grinding_utils:null_sword>,
    <mob_grinding_utils:gm_chicken_feed>,
    <mob_grinding_utils:dragon_muffler>,
    <mob_grinding_utils:entity_conveyor>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:stoneling"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:pirate"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "quark:wraith"}}),
    <enderstorage:ender_storage:1>,
    <scannable:module_ore_common>,
    <futuremc:prismarine_wall>,
    <futuremc:dark_oak_trapdoor>,
    <fluxnetworks:flux>,
    <fluxnetworks:adminconfigurator>,
    <cryingobsidian:crying_obsidian_item>,
    <spartanshields:shield_basic_signalum>,
    <spartanshields:shield_basic_lumium>,
    <spartanshields:shield_botania_manasteel>,
    <spartanshields:shield_botania_terrasteel>,
    <spartanshields:shield_botania_elementium>,
    <spartanshields:shield_basic_constantan>,
    <spartanshields:shield_tower_constantan>,
    <spartanshields:shield_abyssalcraft_darkstone>,
    <spartanshields:shield_abyssalcraft_abyssalnite>,
    <spartanshields:shield_abyssalcraft_coralium>,
    <spartanshields:shield_abyssalcraft_dreadium>,
    <spartanshields:shield_abyssalcraft_ethaxium>,
    <spartanshields:shield_basic_soulforged_steel>,
    <spartanshields:shield_tc_thaumium>,
    <spartanshields:shield_tc_void>,
    <spartanshields:shield_riot_rftools>,
    <spartanshields:shield_flux_ra>,
    <ironchest:iron_chest:7>
] as IItemStack[];

for i in miscItems {
    JEI.removeAndHide(i);
}

val hide =[
    <quarryplus:fuel_module_normal>,
    <quarryplus:placerplus>,
    <quarryplus:breakerplus>,
    <quarryplus:plainpipe>,
    <quarryplus:quarryframe>,
    <quarryplus:dummyblock>,
    <quarryplus:solidquarry>,
    <quarryplus:quarry_pickaxe>,
    <quarryplus:fuel_module_creative>,
    <quark:ancient_tome>,
    <betterbuilderswands:wandstone>,
    <betterbuilderswands:wandiron>,
    <betterbuilderswands:wanddiamond>,
    <quarryplus:spawnercontroller>,
    <quarryplus:quarryreplacer>,
    <quarryplus:enchantmoverfrombook>
] as IItemStack[];

for i in hide {
    JEI.hide(i);
}

//remove teslacore
for item in loadedMods["teslacorelib"].items {
	recipes.remove(item);
    JEI.hide(item);
}

//remove micro
for item in loadedMods["microblockcbe"].items {
    JEI.removeAndHide(item);
}

//remove item filter
for i in loadedMods["itemfilters"].items {
    JEI.removeAndHide(i);
}

//remove chest transporter
val trans = [
    <chesttransporter:chesttransporter>,
    <chesttransporter:chesttransporter_gold>,
    <chesttransporter:chesttransporter_diamond>,
    <chesttransporter:chesttransporter_copper>,
    <chesttransporter:chesttransporter_obsidian>,
] as IItemStack[];

for i in trans {
    JEI.removeAndHide(i);
}

//remove recipe of compass
recipes.remove(<minecraft:compass>);

//remove and hide iron chest's shulker
val shulker as IItemStack[] = [
    <ironchest:iron_shulker_box_white:*>,
    <ironchest:iron_shulker_box_orange:*>,
    <ironchest:iron_shulker_box_magenta:*>,
    <ironchest:iron_shulker_box_light_blue:*>,
    <ironchest:iron_shulker_box_yellow:*>,
    <ironchest:iron_shulker_box_lime:*>,
    <ironchest:iron_shulker_box_pink:*>,
    <ironchest:iron_shulker_box_gray:*>,
    <ironchest:iron_shulker_box_silver:*>,
    <ironchest:iron_shulker_box_cyan:*>,
    <ironchest:iron_shulker_box_purple:*>,
    <ironchest:iron_shulker_box_blue:*>,
    <ironchest:iron_shulker_box_brown:*>,
    <ironchest:iron_shulker_box_green:*>,
    <ironchest:iron_shulker_box_red:*>,
    <ironchest:iron_shulker_box_black:*>,
    <ironchest:vanilla_iron_shulker_upgrade>,
    <ironchest:vanilla_copper_shulker_upgrade>,
    <ironchest:iron_gold_shulker_upgrade>,
    <ironchest:copper_silver_shulker_upgrade>,
    <ironchest:gold_diamond_shulker_upgrade>,
    <ironchest:silver_gold_shulker_upgrade>,
    <ironchest:copper_iron_shulker_upgrade>,
    <ironchest:diamond_crystal_shulker_upgrade>,
    <ironchest:iron_gold_chest_upgrade>,
    <ironchest:copper_iron_chest_upgrade>,
    <ironchest:copper_silver_chest_upgrade>,
    <ironchest:wood_iron_chest_upgrade>,
    <ironchest:diamond_obsidian_shulker_upgrade>,
];

for i in shulker {
    JEI.removeAndHide(i);
}

//remove exUti stone spike
JEI.removeAndHide(<extrautils2:spike_stone>);

//fix duplicate recipes between forestry and FTMC
val ftmcLog as IItemStack[] = [
    <futuremc:oak_wood>,
    <futuremc:acacia_wood>,
    <futuremc:dark_oak_wood>,
    <futuremc:birch_wood>,
    <futuremc:jungle_wood>,
    <futuremc:spruce_wood>
];

for i in ftmcLog {
    mods.jei.JEI.removeAndHide(i);
}

//remove quark useless items
val quarkLess as IItemStack[]= [
    <quark:biome_cobblestone:1>,
    <quark:biome_brick:1>,
    <quark:icy_stone_slab>,
    <quark:icy_stone_stairs>,
    <quark:icy_stone_brick_slab>,
    <quark:icy_stone_brick_stairs>,
    <quark:icy_stone_wall>,
    <quark:icy_stone_brick_wall>,
    <quark:biome_cobblestone>,
    <quark:stone_slate_stairs>,
    <quark:biome_brick>,
    <quark:slate:1>,
    <quark:slate>,
    <quark:stone_slate_slab>,
    <quark:fire_stone_slab>,
    <quark:fire_stone_stairs>,
    <quark:fire_stone_brick_slab>,
    <quark:fire_stone_brick_stairs>,
    <quark:slate_wall>,
    <quark:fire_stone_brick_wall>,
    <quark:stone_slate_bricks_wall>,
    <quark:slate_speleothem>,
    <quark:world_stone_bricks:7>,
    <quark:world_stone_carved:7>,
    <quark:stone_slate_bricks_stairs>,
    <quark:stone_slate_bricks_slab>,
    <quark:world_stone_pavement:7>,
    <quark:fire_stone_wall>,
    <quark:soul_bead>,
    <quark:monster_box>,
    <quark:diamond_heart>,
    <quark:pickarang>,
    <quark:arrow_explosive>,
    <quark:arrow_ender>,
    <quark:stonebrick_wall>,
    <quark:red_sandstone_wall>,
    <quark:sandstone_wall>,
    <quark:stone_andesite_wall>,
    <quark:stone_diorite_wall>,
    <quark:stone_wall>,
    <quark:stone_granite_wall>,
    <quark:stonebrick_mossy_wall>,
    <quark:end_bricks_wall>,
    <quark:brick_wall>,
    <quark:spruce_trapdoor>,
    <quark:birch_trapdoor>,
    <quark:acacia_trapdoor>,
    <quark:jungle_trapdoor>,

];

for i in quarkLess {
    mods.jei.JEI.removeAndHide(i);
}

//remove quark chest recipe (ore:plankwood*8 to oak chest)
recipes.removeByRecipeName("quark:chest");

//remove quark hopper recipe (same as Vanilla)
recipes.removeByRecipeName("quark:hopper");

//remove power suite's useless items
val powerSuite as IItemStack[] = [
    <powersuits:powerarmorcomponent>,
    <powersuits:powerarmorcomponent:1>,
    <ore:componentMyofiberGel>.firstItem,
    <powersuits:powerarmorcomponent:14>,
    <powersuits:powerarmorcomponent:17>,
];

for i in powerSuite {
    JEI.removeAndHide(i);
}

//sonar core
val sonarcore as IItemStack[] = [
    <sonarcore:stablestone_normal>,
    <sonarcore:stablestonerimmed_normal>,
    <sonarcore:stablestoneblackrimmed_normal>,
    <sonarcore:stablestone_black>,
    <sonarcore:stablestonerimmed_black>,
    <sonarcore:stablestoneblackrimmed_black>,
    <sonarcore:stablestone_blue>,
    <sonarcore:stablestonerimmed_blue>,
    <sonarcore:stablestoneblackrimmed_blue>,
    <sonarcore:stablestone_brown>,
    <sonarcore:stablestonerimmed_brown>,
    <sonarcore:stablestoneblackrimmed_brown>,
    <sonarcore:stablestone_cyan>,
    <sonarcore:stablestonerimmed_cyan>,
    <sonarcore:stablestone_green>,
    <sonarcore:stablestoneblackrimmed_green>,
    <sonarcore:stablestonerimmed_green>,
    <sonarcore:stablestone_lightblue>,
    <sonarcore:stablestonerimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_cyan>,
    <sonarcore:stablestone_lightgrey>,
    <sonarcore:stablestonerimmed_lightgrey>,
    <sonarcore:stablestone_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestone_magenta>,
    <sonarcore:stablestonerimmed_magenta>,
    <sonarcore:stablestoneblackrimmed_magenta>,
    <sonarcore:stablestone_orange>,
    <sonarcore:stablestonerimmed_orange>,
    <sonarcore:stablestoneblackrimmed_orange>,
    <sonarcore:stablestone_pink>,
    <sonarcore:stablestonerimmed_pink>,
    <sonarcore:stablestoneblackrimmed_pink>,
    <sonarcore:stablestonerimmed_plain>,
    <sonarcore:stablestone_purple>,
    <sonarcore:stablestonerimmed_purple>,
    <sonarcore:stablestone_red>,
    <sonarcore:stablestoneblackrimmed_purple>,
    <sonarcore:stablestonerimmed_red>,
    <sonarcore:stablestoneblackrimmed_red>,
    <sonarcore:stablestone_yellow>,
    <sonarcore:stablestonerimmed_yellow>,
    <sonarcore:stablestoneblackrimmed_yellow>,
];

for i in sonarcore {
    JEI.removeAndHide(i);
}

//remove useless item from FTBquest
val uselessFTB as IItemStack[] = [
	<ftbquests:chest>,
	<ftbquests:loot_crate_storage>,
	<ftbquests:loot_crate_opener>,
	<ftbquests:barrier>,
	<ftbquests:reward_collector>,
];

for i in uselessFTB {
	JEI.removeAndHide(i);
}
