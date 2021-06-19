/*
Provide some useful functions of avaritia
mods.avaritia.ExtremeCrafting.addShapeless("name",output, ingredients);

mods.avaritia.ExtremeCrafting.addShaped("name",output, ingredients);

mods.avaritia.ExtremeCrafting.remove(output);

mods.avaritia.Compressor.add(output, amount, input); //(amount is an int)

mods.avaritia.Compressor.add(output, amount, input, false); //(if you want the recipe to use the scaling system)
*/

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");
val implosion = RecipeMap.getByName("implosion_compressor");
val macerator = RecipeMap.getByName("macerator");
val compressor = RecipeMap.getByName("compressor");
val packer = RecipeMap.getByName("packer");

//diamond lattice
recipes.removeByRecipeName("avaritia:items/resource/diamond_lattice");
assembler.recipeBuilder()
	.inputs(<ore:plateDiamond>*8,<ore:gemFlawedDiamond>,<ore:stickDiamond>*7)
	.outputs(<avaritia:resource>)
	.property("circuit", 2)
	.EUt(8000)
	.buildAndRegister();

//crystal matrix
recipes.removeByRecipeName("avaritia:items/resource/crystal_matrix_ingot");
implosion.recipeBuilder()
	.inputs(<avaritia:resource>*4,<ore:netherStar>*2)
	.outputs(<avaritia:resource:1>)
	.property("explosives", 4)
	.EUt(64)
	.duration(50)
	.buildAndRegister();

//neutron collector
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutron_collector>);
mods.avaritia.ExtremeCrafting.addShaped("re_neutron_collector",<avaritia:neutron_collector>, [
	[<ore:blockIron>,<minecraft:daylight_detector>,<minecraft:daylight_detector>,
	<minecraft:daylight_detector>,<minecraft:daylight_detector>,<minecraft:daylight_detector>,
	<minecraft:daylight_detector>,<minecraft:daylight_detector>,<ore:blockIron>],

	[<ore:blockIron>,<minecraft:daylight_detector>,null,null,
	<minecraft:daylight_detector>,null,null,
	<minecraft:daylight_detector>,<ore:blockIron>],

	[<ore:blockIron>,null,null,null,null,null,null,null,<ore:blockIron>],

	[<ore:blockIron>,null,null,null,<ore:blockTritanium>,null,null,null,<ore:blockIron>],

	[<ore:blockIron>,<avaritia:resource:1>,<gregtech:meta_item_1:32676>,
	<avaritia:resource:1>,<ore:blockTritanium>,<avaritia:resource:1>,
	<gregtech:meta_item_1:32696>,<avaritia:resource:1>,<ore:blockIron>],

	[<ore:blockIron>,null,null,null,<ore:blockTritanium>,null,null,null,<ore:blockIron>],
	[<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>],

	[<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>],

	[<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>]
]);

//record fragment
recipes.removeByRecipeName("avaritia:record_fragment");
macerator.recipeBuilder()
	.inputs(<ore:record>)
	.outputs(<avaritia:resource:7>*8)
	.EUt(128)
	.duration(100)
	.buildAndRegister();

//neutron nugget
compressor.findRecipe(2, [<avaritia:resource:2>*9],[]).remove();
packer.findRecipe(4, [<avaritia:resource:2>*9,<gtadditions:ga_meta_item:32133>],[]).remove();
implosion.recipeBuilder()
	.inputs(<avaritia:resource:2>*18)
	.outputs(<avaritia:resource:3>)
	.property("explosives", 9)
	.EUt(64)
	.duration(50)
	.buildAndRegister();

//neutron ingot
recipes.addShapeless(<avaritia:resource:4>,[<gregtech:meta_item_1:10671>]);
recipes.addShapeless(<gregtech:meta_item_1:10671>,[<avaritia:resource:4>]);

//to gregtech's neutron
compressor.recipeBuilder()
	.inputs(<avaritia:block_resource>*9)
	.outputs(<ore:nuggetNeutronium>)
	.EUt(12000)
	.duration(1000)
	.buildAndRegister();
