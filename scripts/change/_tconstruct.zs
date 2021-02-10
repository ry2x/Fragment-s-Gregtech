//import greg
import mods.gregtech.recipe.RecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val blast_furnace = RecipeMap.getByName("blast_furnace");
val arc = RecipeMap.getByName("arc_furnace");

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
	.outputs(<tconstruct:ingots:1>)
	.duration(60)
	.EUt(24)
	.buildAndRegister();

//manyuline in blast furnace 	
blast_furnace.recipeBuilder()
    .inputs(<ore:ingotArdite>,<ore:ingotCobalt>)
    .fluidInputs([<liquid:oxygen>*576])
    .outputs(<tconstruct:ingots:2>)
    .property("temperature", 2000)
    .duration(800)
    .EUt(2048)
    .buildAndRegister();
