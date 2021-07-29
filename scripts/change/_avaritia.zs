/*
Provide some useful functions of avaritia
mods.avaritia.ExtremeCrafting.addShapeless("name",output, ingredients);
mods.avaritia.ExtremeCrafting.addShaped("name",output, ingredients);
mods.avaritia.ExtremeCrafting.remove(output);
mods.avaritia.Compressor.add(str, output, amount, input); //(amount is an int)
mods.avaritia.Compressor.add(str, output, amount, input, false); //(if you want the recipe to use the scaling system)
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
val engraver = RecipeMap.getByName("laser_engraver");

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
engraver.recipeBuilder()
	.inputs(<avaritia:resource:4>)
	.outputs(<gregtech:meta_item_1:10671>)
	.notConsumable(<ore:craftingLensWhite>)
	.EUt(32)
	.duration(10)
	.buildAndRegister();
engraver.recipeBuilder()
	.inputs(<gregtech:meta_item_1:10671>)
	.outputs(<avaritia:resource:4>)
	.notConsumable(<ore:craftingLensWhite>)
	.EUt(32)
	.duration(10)
	.buildAndRegister();

recipes.addShapeless(<avaritia:resource:4>,[<gregtech:meta_item_1:10671>]);
recipes.addShapeless(<gregtech:meta_item_1:10671>,[<avaritia:resource:4>]);

//to gregtech's neutron
compressor.recipeBuilder()
	.inputs(<avaritia:block_resource>*2)
	.outputs(<gregtech:meta_item_1:9993>)
	.EUt(12000)
	.duration(1000)
	.buildAndRegister();

//cosmic food
mods.avaritia.ExtremeCrafting.remove(<avaritia:cosmic_meatballs>);
assembly_line.recipeBuilder()
	.inputs(<minecraft:rabbit>,
			<gregtech:meta_item_1:2996>,
			<minecraft:spider_eye>,
			<minecraft:rabbit_foot>,
			<minecraft:dragon_egg>,
			<minecraft:dragon_breath>,
			<gtadditions:ga_meta_item:32018>,
			<deepmoblearning:glitch_heart>,
			<minecraft:fish>,
			<minecraft:fish:2>,
			<minecraft:fish:1>,
			<minecraft:fish:3>,
			<minecraft:porkchop>,
			<minecraft:beef>,
			<minecraft:chicken>,
			<minecraft:mutton>)
	.fluidInputs(<liquid:sterilized_growth_medium>*288)
	.outputs(<avaritia:cosmic_meatballs>)
	.EUt(4200)
	.duration(500)
	.buildAndRegister();

//ultimate stew
mods.avaritia.ExtremeCrafting.remove(<avaritia:ultimate_stew>);
assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32018>,
			<deepmoblearning:glitch_heart>,
			<minecraft:cake>,
			<actuallyadditions:item_food:8>,
			<harvestcraft:carrotcakeitem>,
			<harvestcraft:cheesecakeitem>,
			<harvestcraft:redvelvetcakeitem>,
			<harvestcraft:pumpkincheesecakeitem>,
			<harvestcraft:pancakesitem>,
			<harvestcraft:maplesyruppancakesitem>,
			<harvestcraft:holidaycakeitem>,
			<harvestcraft:pineappleupsidedowncakeitem>,
			<harvestcraft:blueberrypancakesitem>,
			<harvestcraft:lemondrizzlecakeitem>,
			<harvestcraft:chocolatesprinklecakeitem>,
			<harvestcraft:cherrycheesecakeitem>)
	.fluidInputs(<liquid:sterilized_growth_medium>*288)
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
	<ore:blockIron>,<gregtech:machine:2070>,<ore:blockIron>,
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

//neutron fix
recipes.removeByRecipeName("avaritia:items/resources/neutronium_nugget");

//infinity fix
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
assembly_line.recipeBuilder()
	.inputs(<avaritia:singularity>,
			<avaritia:singularity:3>,
			<avaritia:singularity:4>,
			<avaritia:singularity:5>,
			<avaritia:singularity:6>,
			<avaritia:ultimate_stew>,
			<avaritia:cosmic_meatballs>,
			<avaritia:endest_pearl>,
			<avaritia:extreme_crafting_table>,
			<avaritia:resource:7>)
	.fluidInputs([<liquid:osmium>*125,<liquid:americium>*1000])
	.outputs(<avaritia:resource:5>)
	.EUt(8192)
	.duration(500)
	.buildAndRegister();

//singularity
for i in 0 to 15{
	var singularity as IItemStack = itemUtils.getItem("avaritia:singularity",i);
	mods.avaritia.Compressor.remove(singularity);
}

val singularityAdd as string[IItemStack] = {
	<avaritia:singularity:3> : "Iron",
	<avaritia:singularity:4> : "Redstone",
	<avaritia:singularity:5> : "Quartz",
	<avaritia:singularity:6> : "Copper",
	<avaritia:singularity> : "Tin"
};

for item,str in singularityAdd{
	var block = oreDict["block"~str];
	mods.avaritia.Compressor.add(str,item,1000,block,true);
}

