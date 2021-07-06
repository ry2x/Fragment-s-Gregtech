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
val autoclave = RecipeMap.getByName("autoclave");

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
	#empowerer
	"actuallyadditions:recipes83",
	#ender casing
	"actuallyadditions:recipes121",
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
	.inputs(<ore:MVcasing>,<actuallyadditions:block_crystal>,<actuallyadditions:block_testifi_bucks_green_wall>*3,<actuallyadditions:block_testifi_bucks_white_wall>*3)
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

//empowered enroi first recipe
recipes.addShaped(<actuallyadditions:block_crystal_empowered:5>,[
	[<gregtech:meta_item_2:32213>,<gregtech:meta_item_1:32682>,<gregtech:meta_item_2:32213>],
	[<gregtech:meta_item_1:32673>,<actuallyadditions:block_crystal:5>,<gregtech:meta_item_1:32673>],
	[<appliedenergistics2:material:47>,<appliedenergistics2:material:1>,<appliedenergistics2:material:47>]
]);

//empowerer
assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_crystal_empowered:5>*3,<actuallyadditions:battery_bauble>,<actuallyadditions:block_display_stand>,<ore:circuitExtreme>*2)
	.outputs(<actuallyadditions:block_empowerer>)
	.EUt(2048)
	.duration(200)
	.buildAndRegister();

//ender casing
recipes.addShaped(<actuallyadditions:block_misc:8>,[
	[<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_crystal_empowered:2>],
	[<ore:gemQuartzBlack>,craftingToolWrench,<ore:gemQuartzBlack>],
	[<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_misc:6>,<actuallyadditions:block_crystal_empowered:2>]
]);

assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_crystal_empowered:2>*4,<actuallyadditions:block_misc:6>*2,<ore:gemQuartzBlack>*2)
	.outputs(<actuallyadditions:block_misc:8>)
	.EUt(48)
	.duration(200)
	.buildAndRegister()

//dark quartz
furnace.remove(<actuallyadditions:item_misc:5>);
autoclave.recipeBuilder()
	.inputs(<ore:gemQuartz>)
	.fluidInputs(<liquid:carbon>*144)
	.outputs(<actuallyadditions:item_misc:5>)
	.EUt(200)
	.duration(600)
	.buildAndRegister();


