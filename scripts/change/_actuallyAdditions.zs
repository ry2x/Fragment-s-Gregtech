//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;

//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

val assembler = RecipeMap.getByName("assembler");
val forming = RecipeMap.getByName("forming_press");
val autoclave = RecipeMap.getByName("autoclave");
val saw = RecipeMap.getByName("cutting_saw");

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
	#void bag
	"actuallyadditions:recipes6",
	#laser
	"actuallyadditions:recipes106",
	"actuallyadditions:recipes107",
	"actuallyadditions:recipes108",
	"actuallyadditions:recipes109",
	#energy sup
	"actuallyadditions:recipes124",
	#phantom
	"actuallyadditions:recipes130",
	#knife
	"actuallyadditions:recipes220",
	#battery
	"actuallyadditions:recipes39",
	"actuallyadditions:double_battery",
	"actuallyadditions:triple_battery",
	"actuallyadditions:quadruple_battery",
	"actuallyadditions:quintuple_battery"
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
	.buildAndRegister();

//dark quartz
furnace.remove(<actuallyadditions:item_misc:5>);
autoclave.recipeBuilder()
	.inputs(<ore:gemQuartz>)
	.fluidInputs(<liquid:carbon>*144)
	.outputs(<actuallyadditions:item_misc:5>)
	.EUt(200)
	.duration(600)
	.buildAndRegister();

//void bag
recipes.addShaped(<actuallyadditions:item_void_bag>,[
	[<extrautils2:trashcan>,<ore:leather>,],
	[<ore:leather>,<ore:string>,<ore:leather>],
	[null,null,<ore:stickLongWood>]
]);

//laser
#energy laser
	#basic
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32683>,<ore:wireGtSingleOsmium>*2,<ore:lensGlass>,<ore:obsidian>*3,<actuallyadditions:item_crystal>*2)
	.outputs(<actuallyadditions:block_laser_relay>)
	.duration(600)
	.EUt(2048)
	.buildAndRegister();
	#advanced
assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_laser_relay_advanced>*2,<actuallyadditions:item_crystal:5>*5,<actuallyadditions:item_crystal_empowered>*5,<ore:gemQuartzBlack>*2)
	.outputs(<actuallyadditions:block_laser_relay_advanced>*2)
	.EUt(2048)
	.duration(300)
	.buildAndRegister();
	#ex
assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_laser_relay_advanced>*2,<actuallyadditions:item_crystal_empowered:3>*3,<actuallyadditions:item_crystal_empowered:2>*5,<actuallyadditions:item_crystal_empowered>*5)
	.outputs(<actuallyadditions:block_laser_relay_extreme>*2)
	.EUt(8012)
	.duration(600)
	.buildAndRegister();
#item
assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_laser_relay_item>*2,<actuallyadditions:item_misc:8>*6,<actuallyadditions:item_crystal_empowered:1>*4,<actuallyadditions:item_crystal_empowered:5>*6)
	.outputs(<actuallyadditions:block_laser_relay_item_whitelist>)
	.EUt(2048)
	.duration(300)
	.buildAndRegister();

//energy sup
recipes.addShaped(<actuallyadditions:block_energizer>,[
	[<actuallyadditions:item_misc:8>,<actuallyadditions:battery_bauble>,<actuallyadditions:item_misc:8>],
	[<actuallyadditions:item_misc:8>,craftingToolWrench,<actuallyadditions:item_misc:8>],
	[<actuallyadditions:item_misc:8>,<actuallyadditions:item_misc:8>,<actuallyadditions:item_misc:8>]
]);

//phantom face
recipes.addShaped(<actuallyadditions:block_phantomface>,[
	[<actuallyadditions:block_crystal_empowered:5>,<actuallyadditions:block_misc:8>,<actuallyadditions:block_crystal_empowered:5>],
	[<actuallyadditions:block_crystal_empowered:5>,craftingToolWrench,<actuallyadditions:block_crystal_empowered:5>],
	[<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:2>,<actuallyadditions:block_crystal_empowered:2>]
]);

assembler.recipeBuilder()
	.inputs(<actuallyadditions:block_crystal_empowered:5>*4,<actuallyadditions:block_crystal_empowered:2>*3,<actuallyadditions:block_misc:8>)
	.outputs(<actuallyadditions:block_phantomface>)
	.circuit(2)
	.EUt(256)
	.duration(500)
	.buildAndRegister();

//knife
val lub as IData[ILiquidStack] = {
	<liquid:water>*5 : 20 ,
	<liquid:distilled_water>*3 : 13,
	<liquid:lubricant>*1 : 5
};
for l, d in lub {
	saw.recipeBuilder()
		.inputs(<ore:plateIron>)
		.fluidInputs([l])
		.outputs(<actuallyadditions:item_misc:2>*2)
		.EUt(8)
		.duration(d)
		.buildAndRegister();
}

//battery
val liquid as ILiquidStack[] = [
	<liquid:soldering_alloy>*72,
	<liquid:tin>*144,
	<liquid:lead>*288
];

val battery as IItemStack[][IData] = {
	16:[<gregtech:meta_item_2:32213>,<actuallyadditions:item_crystal_empowered:5>*5,<actuallyadditions:item_misc:7>*3,<actuallyadditions:item_battery>],
	64:[<actuallyadditions:item_battery>*2,<actuallyadditions:item_crystal_empowered:5>*5,<actuallyadditions:item_misc:7>*3,<actuallyadditions:item_battery_double>],
	512:[<actuallyadditions:item_battery_double>,<actuallyadditions:item_crystal_empowered:4>*5,<actuallyadditions:item_misc:8>*3,<actuallyadditions:item_battery_triple>],
	2048:[<actuallyadditions:item_battery_triple>,<actuallyadditions:item_crystal_empowered:4>*5,<actuallyadditions:item_misc:8>*3,<actuallyadditions:item_battery_quadruple>],
	8192:[<actuallyadditions:item_battery_quadruple>,<actuallyadditions:item_crystal_empowered:2>*5,<actuallyadditions:item_misc:8>*3,<actuallyadditions:item_battery_quintuple>]
};

for voltage, item in battery{
	for l in liquid{
		assembler.recipeBuilder()
			.inputs(item[0],item[1],item[2])
			.fluidInputs(l)
			.circuit(2)
			.outputs(item[3])
			.EUt(voltage)
			.duration(600)
			.buildAndRegister();
	}
}
