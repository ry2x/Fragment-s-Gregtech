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
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

val assembler = RecipeMap.getByName("assembler");
val implosion = RecipeMap.getByName("implosion_compressor");
val macerator = RecipeMap.getByName("macerator");
val compressor = RecipeMap.getByName("compressor");
val packer = RecipeMap.getByName("packer");
val assembly_line as RecipeMap = GARecipeMaps.ASSEMBLY_LINE_RECIPES;

//diamond lattice
recipes.removeByRecipeName("avaritia:items/resource/diamond_lattice");
assembler.recipeBuilder()
	.inputs(<ore:plateDiamond>*8,<ore:gemFlawedDiamond>,<ore:stickDiamond>*7)
	.outputs(<avaritia:resource>)
	.EUt(8000)
	.duration(500)
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

	[<ore:blockIron>,<minecraft:daylight_detector>,<gregtech:meta_item_1:32676>,<gregtech:meta_item_1:32676>,
	<minecraft:daylight_detector>,<gregtech:meta_item_1:32696>,<gregtech:meta_item_1:32696>,
	<minecraft:daylight_detector>,<ore:blockIron>],

	[<ore:blockIron>,<avaritia:resource:1>,<avaritia:resource:1>,
	<avaritia:resource:1>,<avaritia:resource:1>,<avaritia:resource:1>,
	<avaritia:resource:1>,<avaritia:resource:1>,<ore:blockIron>],

	[<ore:blockIron>,null,null,null,<ore:blockTritanium>,null,null,null,<ore:blockIron>],

	[<ore:blockIron>,<avaritia:resource:1>,<gregtech:meta_item_1:32676>,
	<avaritia:resource:1>,<ore:blockTritanium>,<avaritia:resource:1>,
	<gregtech:meta_item_1:32696>,<avaritia:resource:1>,<ore:blockIron>],

	[<ore:blockIron>,null,null,null,<ore:blockTritanium>,null,null,null,<ore:blockIron>],
	[<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>],

	[<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>,
	<ore:blockIron>,null,<ore:blockIron>],

	[<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>,
	<ore:blockIron>,<avaritia:resource:1>,<ore:blockIron>]
]);

//record fragment
recipes.removeByRecipeName("avaritia:items/record_fragment");
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
	.inputs(<avaritia:resource:2>*12)
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
	.outputs(<gregtech:meta_item_1:9993>)
	.EUt(12000)
	.duration(1000)
	.buildAndRegister();

//ultimate stew
mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32018>,
			<deepmoblearning:glitch_heart>,
			<cyclicmagic:crafting_food>,
			<minecraft:cake>,
			<actuallyadditions:item_food:8>,
			<harvestcraft:carrotcakeitem>,
			<harvestcraft:cheesecakeitem>,
			<harvestcraft:cherrycheesecakeitem>)
	.outputs(<avaritia:ultimate_stew>)
	.EUt(8192)
	.duration(1000)
	.buildAndRegister();

//neutron compressor
mods.avaritia.ExtremeCrafting.remove(<avaritia:neutronium_compressor>);
mods.avaritia.ExtremeCrafting.addShaped("re_neutron_compressor",<avaritia:neutronium_compressor>, [
	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<gregtech:meta_item_1:32750>,<gregtech:meta_item_1:32750>,<gregtech:meta_item_1:32750>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>],

	[<ore:blockIron>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockIron>,<ore:ingotCosmicNeutronium>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockIron>,<ore:blockIron>],

	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>],

	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>],

	[<ore:blockIron>,<ore:blockCosmicNeutronium>,<ore:blockIron>,
	<ore:blockCosmicNeutronium>,<ore:blockNeutronium>,<ore:blockCosmicNeutronium>,
	<ore:blockIron>,<ore:blockCosmicNeutronium>,<ore:blockIron>],

	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,<ore:ingotCosmicNeutronium>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>],

	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockCrystalMatrix>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>],

	[<ore:blockIron>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockIron>,<gregtech:machine:2070>,<ore:blockIron>,
	<ore:blockIron>,<ore:blockIron>,<ore:blockIron>],

	[<avaritia:resource:1>,<ore:blockIron>,<ore:blockIron>,
	<ore:blockCrystalMatrix>,<ore:blockCrystalMatrix>,<ore:blockCrystalMatrix>,
	<ore:blockIron>,<ore:blockIron>,<avaritia:resource:1>]
]);

