//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");

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

