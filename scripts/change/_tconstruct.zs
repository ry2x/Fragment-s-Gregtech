//import greg
import mods.gregtech.recipe.RecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val blast_furnace = RecipeMap.getByName("blast_furnace");
val arc = RecipeMap.getByName("arc_furnace");
val compressor = RecipeMap.getByName("compressor");
val packer = RecipeMap.getByName("packer");
val unpacker = RecipeMap.getByName("unpacker");

//fix hopper
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>, [
    [<ore:plankWood>, craftingToolWrench, <ore:plankWood>],
    [<ore:plankWood>, <ore:chest>, <ore:plankWood>],
    [null, <ore:plankWood>, null]
]);

//Ardite ore in arc furnace
arc.recipeBuilder()
	.inputs(<ore:oreArdite>)
	.fluidInputs([<liquid:oxygen>*60])
	.outputs(<gregtech:meta_item_1:10506>)
	.duration(60)
	.EUt(24)
	.buildAndRegister();

//manyullyn in blast furnace
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotArdite>,<ore:ingotCobalt>)
    .fluidInputs([<liquid:oxygen>*576])
    .outputs(<tconstruct:ingots:2>)
    .property("temperature", 2000)
    .duration(800)
    .EUt(2048)
    .buildAndRegister();

//Ardite fix
#ingot to block
	#compressor
compressor.findRecipe(2, [<tconstruct:ingots:1>*9],[]).remove();
compressor.recipeBuilder()
	.inputs(<ore;ingotArdite>*9)
	.outputs(<tconstruct:metal:1>)
	.EUt(2)
	.duration(160)
	.buildAndRegister();
	#packer
packer.findRecipe(4, [<tconstruct:ingots:1>*9,<gtadditions:ga_meta_item:32133>],[]).remove();
packer.recipeBuilder()
	.inputs(<ore;ingotArdite>*9)
	.notConsumable(<gtadditions:ga_meta_item:32133>)
	.outputs(<tconstruct:metal:1>)
	.EUt(4)
	.duration(100)
	.buildAndRegister();
#block to ingot
	#unpacker
unpacker.findRecipe(8, [<gtadditions:ga_meta_item:32133>,<tconstruct:metal:1>],[]).remove();
unpacker.recipeBuilder()
	.inputs(<tconstruct:metal:1>)
	.notConsumable(<gtadditions:ga_meta_item:32133>)
	.outputs(<tconstruct:ingots:1>*9)
	.EUt(4)
	.duration(100)
	.buildAndRegister();
