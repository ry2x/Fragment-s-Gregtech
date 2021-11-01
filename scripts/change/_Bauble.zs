//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val metal_bender = RecipeMap.getByName("metal_bender");
val bath = RecipeMap.getByName("chemical_bath");
val reactor = RecipeMap.getByName("chemical_reactor");

#<bhc:relic_apple>
recipes.removeByRecipeName("bhc:relic_apple");
fluid_extractor.recipeBuilder()
	.inputs(<ore:gemEmerald>)
	.fluidOutputs(<liquid:emerald>*222)
	.EUt(32)
	.duration(160)
	.buildAndRegister();
bath.recipeBuilder()
	.inputs(<minecraft:apple>)
	.fluidInputs(<liquid:emerald>*11664)
	.outputs(<bhc:relic_apple>)
	.EUt(64)
	.duration(120)
	.buildAndRegister();
reactor.recipeBuilder()
	.inputs(<minecraft:apple>,<ore:blockEmerald>*8)
	.outputs(<bhc:relic_apple>)
	.EUt(64)
	.duration(120)
	.buildAndRegister();

#canister
recipes.removeByRecipeName("bhc:canister");
metal_bender.recipeBuilder()
	.inputs(<ore:plateIron>*4)
	.property("circuit", 4)
	.outputs(<bhc:canister>)
	.EUt(64)
	.duration(500)
	.buildAndRegister();
