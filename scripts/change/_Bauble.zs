//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val metal_bender = RecipeMap.getByName("metal_bender");

#<bhc:relic_apple>
recipes.removeByRecipeName("bhc:relic_apple").remove();
fluid_extractor.recipeBuilder()
	.inputs(<ore:gemEmerald>)
	.fluidOutputs(<liquid:emerald>*222)
	.Eut(32)
	.duration(160)
	.buildAndRegister();

#canister
recipes.removeByRecipeName("bhc:canister").remove();
metal_bender.recipeBuilder()
	.inputs(<ore:plateIron>*4)
	.property("circuit", 4)
	.outputs(<bhc:canister>)
	.Eut(64)
	.duration(500)
	.buildAndRegister();
