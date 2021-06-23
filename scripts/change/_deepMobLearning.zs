//import greg
import mods.gregtech.recipe.RecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;

val assembler = RecipeMap.getByName("assembler");
val forming = RecipeMap.getByName("forming_press");

//scoot machine casing
recipes.removeByRecipeName("deepmoblearning:recipe2_machine_casing");
assembler.recipeBuilder()
	.inputs(<gregtech:machine:505>,<deepmoblearning:soot_covered_plate>*6,<deepmoblearning:soot_covered_redstone>*4)
	.outputs(<deepmoblearning:machine_casing>)
	.EUt(8012)
	.duration(600)
	.buildAndRegister();

//simulation chamber
recipes.removeByRecipeName("deepmoblearning:simulation_chamber/recipe1_simulation_chamber");
assembler.recipeBuilder()
	.inputs(<deepmoblearning:machine_casing>,<ore:circuitElite>*4,<gregtech:meta_item_2:32476>*2)
	.outputs(<deepmoblearning:simulation_chamber>)
	.EUt(8012)
	.duration(600)
	.buildAndRegister();

//loot fabricator
recipes.removeByRecipeName("deepmoblearning:extraction_chamber/extraction_chamber");
recipes.addShaped(<deepmoblearning:extraction_chamber>,[
	[<ore:circuitElite>,<gregtech:meta_item_1:32674>,<ore:circuitElite>],
	[<ore:wireGtOctalIvSuperconductor>,<deepmoblearning:machine_casing>,<ore:wireGtOctalIvSuperconductor>],
	[<ore:circuitElite>,<gregtech:meta_item_1:32674>,<ore:circuitElite>]
]);

//hand device
recipes.removeByRecipeName("deepmoblearning:recipe1_deep_learner");
assembler.recipeBuilder()
	.inputs(<deepmoblearning:soot_covered_plate>*2,<ore:circuitGood>,<ore:circuitGood>,<deepmoblearning:data_model_blank>,<ore:wireGtSingleAnnealedCopper>*3)
	.outputs(<deepmoblearning:deep_learner>)
	.EUt(4000)
	.duration(500)
	.buildAndRegister();

//armor
val glitch as IItemStack = <deepmoblearning:glitch_infused_ingot>;
val infinity as IItemStack = <avaritia:resource:6>;
	#helm
recipes.removeByRecipeName("deepmoblearning:armor_tools/recipe2_helm");
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>,[
	[glitch,glitch,glitch],
	[glitch,infinity,glitch]
]);

	#chest
recipes.removeByRecipeName("deepmoblearning:armor_tools/recipe3_chestplate");
recipes.addShaped(<deepmoblearning:glitch_infused_chestplate>,[
	[glitch,infinity,glitch],
	[glitch,glitch,glitch],
	[glitch,glitch,glitch]
]);

	#leggins
recipes.removeByRecipeName("deepmoblearning:armor_tools/recipe4_leggings");
recipes.addShaped(<deepmoblearning:glitch_infused_leggings>,[
	[glitch,glitch,glitch],
	[glitch,null,glitch],
	[glitch,infinity,glitch]
]);

	#boots
recipes.removeByRecipeName("deepmoblearning:armor_tools/recipe5_boots");
recipes.addShaped(<deepmoblearning:glitch_infused_boots>,[
	[glitch,infinity,glitch],
	[glitch,null,glitch]
]);

//card
recipes.removeByRecipeName("deepmoblearning:date_model/data_model_blank");
forming.recipeBuilder()
	.inputs(<ore:circuitBasic>,<practicallogistics2:stoneplate>,<ore:plateTin>)
	.outputs(<deepmoblearning:data_model_blank>)
	.EUt(128)
	.duration(500)
	.buildAndRegister();
