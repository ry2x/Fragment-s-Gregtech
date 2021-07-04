//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

val assembler = RecipeMap.getByName("assembler");
val forming = RecipeMap.getByName("forming_press");

//removal
#"actuallyadditions:recipes"
val removal as string[] = [
	#coils
	"actuallyadditions:recipes44",
	"actuallyadditions:recipes47",
	#atomic
	"actuallyadditions:recipes105",
	#display stand
	"actuallyadditions:recipes88",
	#iron casing
	"actuallyadditions:recipes120",
];

for name in removal {
	recipes.removeByRecipeName(name);
}

//coils
recipes.addShaped(<actuallyadditions:item_misc:7>,[
	[<ore:wireFineIron>,<ore:wireFineIron>,<ore:wireFineIron>],
	[<ore:wireFineIron>,<ore:boltSteel>,<ore:wireFineIron>],
	[<ore:wireFineIron>,<ore:wireFineIron>,<ore:wireFineIron>]
]);
recipes.addShaped(<actuallyadditions:item_misc:8>,[
	[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>],
	[<ore:wireFineGold>,<actuallyadditions:item_misc:7>,<ore:wireFineGold>],
	[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>]
]);

//atomic
assembler.recipeBuilder()
	.inputs(<gregtech:machine:504>,<gregtech:meta_item_1:32683>,<ore:craftingLensWhite>,<ore:circuitAdvanced>*2,<ore:wireGtDoubleAnnealedCopper>*6)
	.outputs(<actuallyadditions:block_atomic_reconstructor>)
	.circuit(2)
	.EUt(2000)
	.duration(500)
	.buildAndRegister();

//display stand
forming.recipeBuilder()
	.inputs(<actuallyadditions:block_crystal>,<actuallyadditions:block_testifi_bucks_green_wall>*3,<actuallyadditions:block_testifi_bucks_white_wall>*3)
	.outputs(<actuallyadditions:block_display_stand>)
	.EUt(512)
	.duration(120)
	.buildAndRegister();

//iron casing
recipes.addShaped(<actuallyadditions:block_misc:9>,[
	[<ore:blockIron>,<ore:gemQuartzBlack>,<ore:blockIron>],
	[<ore:gemQuartzBlack>,craftingToolWrench,<ore:gemQuartzBlack>],
	[<ore:blockIron>,<ore:gemQuartzBlack>,<ore:blockIron>]
]);
assembler.recipeBuilder()
	.inputs(<ore:blockIron>*4,<ore:gemQuartzBlack>*4)
	.outputs(<actuallyadditions:block_misc:9>)
	.EUt(48)
	.duration(200)
	.buildAndRegister();
	