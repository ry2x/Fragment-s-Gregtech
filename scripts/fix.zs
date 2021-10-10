//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

val reactor = RecipeMap.getByName("chemical_reactor");
val large_chemical_reactor as RecipeMap = GARecipeMaps.LARGE_CHEMICAL_RECIPES;

//Air or oxygen + isoprene = raw rubber pulp  0
reactor.findRecipe(30,[],[<liquid:oxygen>*2000,<liquid:isoprene>*144]).remove();
large_chemical_reactor.findRecipe(30,[],[<liquid:oxygen>*2000,<liquid:isoprene>*144]).remove();
large_chemical_reactor.recipeBuilder()
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*144)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<gregtech:meta_item_1:2153>*3)
	.EUt(30)
	.duration(160)
	.buildAndRegister();
reactor.recipeBuilder()
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*144)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<gregtech:meta_item_1:2153>*3)
	.EUt(30)
	.duration(160)
	.buildAndRegister();
//oxygen + isoprene + beta pinene = citral 1
reactor.findRecipe(480,[<gtadditions:ga_dust:25>*26],[<liquid:oxygen>*2000,<liquid:isoprene>*2000]).remove();
large_chemical_reactor.findRecipe(480,[<gtadditions:ga_dust:25>*26],[<liquid:oxygen>*2000,<liquid:isoprene>*2000]).remove();
large_chemical_reactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:25>*26)
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*2000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:citral>*2000)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
reactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:25>*26)
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*2000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:citral>*2000)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
