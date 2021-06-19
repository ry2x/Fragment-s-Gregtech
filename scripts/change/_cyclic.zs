//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

val assembler = RecipeMap.getByName("assembler");
val blast_alloy as RecipeMap = GARecipeMaps.BLAST_ALLOY_RECIPES;
val solidifier = RecipeMap.getByName("fluid_solidifier");
val alloy = RecipeMap.getByName("alloy_smelter");

//transfer node
val node as IItemStack[] = [
    <cyclicmagic:cable_wireless>,
    <cyclicmagic:cable_wireless_energy>,
    <cyclicmagic:cable_wireless_fluid>,
];
for i in node {
    recipes.remove(i);
}

    #energy
assembler.recipeBuilder()
    .inputs(<ore:dyeRed>*4,<overloaded:energy_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless_energy>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();
    #item
assembler.recipeBuilder()
    .inputs(<ore:dyePurple>*4,<overloaded:item_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();
    #fluid
assembler.recipeBuilder()
    .inputs(<ore:dyeBlue>*4,<overloaded:fluid_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless_fluid>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();

//change some food's recipes
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

//Sprinkler
recipes.remove(<cyclicmagic:sprinkler>);
recipes.addShaped(<cyclicmagic:sprinkler>,[
    [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],
    [<gregtech:meta_item_1:32601>,<forestry:fertilizer_bio>,<gregtech:meta_item_1:32601>],
    [<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]
]);

//Sleeping Mat
recipes.replaceAllOccurences(<minecraft:wool:14>,<minecraft:bed:14>,<cyclicmagic:sleeping_mat>);

//crystallized obsidian
#fluid
blast_alloy.recipeBuilder()
	.inputs(<ore:dustObsidian>*5,<ore:gemEmerald>*4,<ore:nuggetIron>*3)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:1}))
	.fluidOutputs(<liquid:crystal>*900)
	.EUt(2048)
	.duration(5000)
	.buildAndRegister();
#solid
solidifier.recipeBuilder()
	.fluidInputs(<liquid:crystal>*200)
	.notConsumable(<gregtech:meta_item_1:32307>)
	.outputs(<cyclicmagic:crystallized_obsidian>)
	.EUt(128)
	.duration(20)
	.buildAndRegister();

//swords
val weak as IItemStack = <minecraft:lingering_potion>.withTag({Potion: "minecraft:weakness"});
val slow as IItemStack = <minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"});
val swords as IItemStack[IItemStack] = {
	weak as IItemStack : <cyclicmagic:sword_weakness>,
	slow as IItemStack : <cyclicmagic:sword_slowness>,
	<gregtech:meta_item_1:32724> : <cyclicmagic:sword_ender>
};

for i,o in swords {
	alloy.recipeBuilder()
		.inputs(i, <cyclicmagic:crystal_sword>)
		.outputs(o)
		.EUt(8120)
		.duration(5000)
		.buildAndRegister();
}

//item collector
recipes.removeByRecipeName("cyclicmagic:tile.block_vacuum_1");
recipes.addShaped(<cyclicmagic:block_vacuum>,[
	[<ore:woolWhite>,<ore:blockLapis>,<ore:woolWhite>],
	[<ore:stoneCobble>,<mob_grinding_utils:absorption_hopper>,<ore:stoneCobble>],
	[<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]
]);

//uncrafting
recipes.removeByRecipeName("cyclicmagic:tile.uncrafting_block_1");
recipes.addShaped(<cyclicmagic:uncrafting_block>,[
	[<ore:blockDiamond>,<ore:obsidian>,<ore:blockDiamond>],
	[<ore:stoneCobble>,<gregtech:machine:4204>,<ore:stoneCobble>],
	[<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]
]);

//automated user
recipes.removeByRecipeName("cyclicmagic:tile.block_user_1");
recipes.addShaped(<cyclicmagic:block_user>,[
	[<ore:blockGold>,<ore:obsidian>,<ore:blockGold>],
	[<ore:stoneCobble>,<ore:MVcasing>,<ore:stoneCobble>],
	[<ore:stoneCobble>,<ore:dustRedstone>,<ore:stoneCobble>]
]);

//screen
recipes.removeByRecipeName("cyclicmagic:tile.block_screen_1");
recipes.addShaped(<cyclicmagic:block_screen>,[
	[<ore:nuggetIron>,<gtadditions:ga_meta_item:32129>,<ore:nuggetIron>],
	[<ore:nuggetIron>,<ore:nuggetIron>,<ore:nuggetIron>],
	[<ore:barsIron>,<minecraft:repeater>,<ore:barsIron>]
]);

//fan
recipes.removeByRecipeName("cyclicmagic:tile.fan_1");
recipes.addShaped(<cyclicmagic:fan>,[
	[<ore:nuggetIron>,<ore:nuggetIron>,<ore:nuggetIron>],
	[<ore:nuggetIron>,<mob_grinding_utils:fan>,<ore:nuggetIron>],
	[<ore:nuggetIron>,<ore:nuggetIron>,<ore:nuggetIron>]
]);
