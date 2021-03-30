//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import Forestry Carpenter function
import mods.forestry.Carpenter.removeRecipe;
import mods.forestry.Carpenter.addRecipe;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");
val distillery = RecipeMap.getByName("distillery");
val extractor = RecipeMap.getByName("fluid_extractor");
val macerator = RecipeMap.getByName("macerator");

print("start forestry");

//beeswax from Comb of bee
macerator.recipeBuilder()
    .inputs(<ore:beeComb>)
    .outputs(<ore:itemBeeswax>.firstItem*4)
    .duration(20)
    .EUt(16)
    .buildAndRegister();

//change recipe of Portable analyzer
removeRecipe(<forestry:portable_alyzer>);
recipes.addShaped(<forestry:portable_alyzer>,[
    [<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>],
    [<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>],
    [<ore:ingotRedAlloy>,<ore:circuitBasic>,<ore:ingotRedAlloy>]
]);

//add recipe flexible casing
assembler.recipeBuilder()
    .inputs(<ore:slimeball>*8)
    .outputs(<forestry:flexible_casing>)
    .duration(180)
    .EUt(16)
    .buildAndRegister();

//change recipe of chip set//
removeRecipe(<forestry:chipsets>);
removeRecipe(<forestry:chipsets:1>);
removeRecipe(<forestry:chipsets:2>);
removeRecipe(<forestry:chipsets:3>);

assembler.recipeBuilder()
    .inputs(<ore:ingotTin>,<ore:dustRedstone>*6,<gregtech:meta_item_2:32447>)
    .fluidInputs(<liquid:water>*1000)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:0}))
    .outputs(<forestry:chipsets:0>)
    .duration(80)
    .EUt(32)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<forestry:chipsets>,<ore:ingotBronze>*6)
    .fluidInputs(<liquid:water>*1000)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:0}))
    .outputs(<forestry:chipsets:1>)
    .duration(80)
    .EUt(32)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<forestry:chipsets:1>,<ore:ingotInvar>*6)
    .fluidInputs(<liquid:water>*1000)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:0}))
    .outputs(<forestry:chipsets:2>)
    .duration(80)
    .EUt(128)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<forestry:chipsets:2>,<ore:ingotAluminium>*6)
    .fluidInputs(<liquid:water>*1000)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:0}))
    .outputs(<forestry:chipsets:3>)
    .duration(80)
    .EUt(512)
    .buildAndRegister();

//remove recipes chip set in crafting table
recipes.remove(<forestry:thermionic_tubes:*>);

//change recipe of sturdy casing
recipes.remove(<forestry:sturdy_machine>);
assembler.recipeBuilder()
    .inputs(<ore:ingotBronze>*8)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:10}))
    .outputs(<forestry:sturdy_machine>)
    .duration(80)
    .EUt(32)
    .buildAndRegister();

//change recipe of analyzer
recipes.remove(<forestry:analyzer>);
assembler.recipeBuilder()
    .inputs(<ore:ingotBronze>*4,<forestry:portable_alyzer>,<forestry:sturdy_machine>,<ore:ingotTin>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:10}))
    .outputs(<forestry:analyzer>)
    .duration(80)
    .EUt(128)
    .buildAndRegister();

//change recipe of workbench
recipes.remove(<forestry:worktable>);
recipes.addShaped(<forestry:worktable>,[
    [<ore:ingotBronze>,<ore:craftingBook>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<minecraft:crafting_table>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<minecraft:chest>,<ore:ingotBronze>]
]);

//change recipe of habit screen
removeRecipe(<forestry:habitat_screen>);
recipes.addShaped(<forestry:habitat_screen>,[
    [<ore:ingotBronze>,<ore:paneGlass>,<ore:ingotBronze>],
    [<ore:ingotBronze>,<ore:paneGlass>,<ore:ingotBronze>],
    [<ore:gearBronze>,<ore:circuitBasic>,<ore:gearBronze>],
]);

//change soldering
removeRecipe(<forestry:soldering_iron>);
assembler.recipeBuilder()
    .inputs(<forestry:oak_stick>*2,<ore:ingotIron>*4)
    .outputs(<forestry:soldering_iron>)
    .duration(80)
    .EUt(128)
    .buildAndRegister();

//add <forestry:crafting_material:3>
addRecipe(<forestry:crafting_material:3>,[
    [<ore:wool>,<ore:wool>,<ore:wool>],
    [<ore:wool>,<ore:wool>,<ore:wool>],
    [<ore:wool>,<ore:wool>,<ore:wool>]
], 60, <liquid:water> * 500);

//buff fertilizer
recipes.addShaped(<forestry:fertilizer_compound>*9, [
    [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>],
    [<forestry:fertilizer_bio>, <minecraft:dye:15>, <forestry:fertilizer_bio>],
    [<forestry:fertilizer_bio>, <forestry:fertilizer_bio>, <forestry:fertilizer_bio>]
]);

//seed oil to rapeseed oil
distillery.recipeBuilder()
    .fluidInputs([<liquid:seed.oil>*100])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:10}))
    .fluidOutputs([<liquid:seed_oil>*100])
    .duration(50)
    .EUt(8)
    .buildAndRegister();

val seeds as IItemStack[] = [
    <minecraft:pumpkin_seeds>,
    <minecraft:melon_seeds>,
    <minecraft:wheat_seeds>
];

for i in seeds {
    extractor.recipeBuilder()
        .inputs(i)
        .fluidOutputs([<liquid:seed.oil>*10])
        .duration(32)
        .EUt(2)
        .buildAndRegister();
}
print("forestry end");
