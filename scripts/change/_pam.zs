//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

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

val assembler = RecipeMap.getByName("assembler");
val fluid_canner = RecipeMap.getByName("fluid_canner");
val hammer = RecipeMap.getByName("forge_hammer");
val macerator = RecipeMap.getByName("macerator");
val mixer = RecipeMap.getByName("mixer");

//use gregtech salt
for i in loadedMods["harvestcraft"].items{
	recipes.replaceAllOccurences(<harvestcraft:saltitem>,<ore:dustSalt>,i);
}
mods.jei.JEI.removeAndHide(<harvestcraft:saltitem>);

//fresh water/milk
val freshRemoval as string[] = [
	"harvestcraft:freshmilkitem_minecraft_milk_bucket",
	"harvestcraft:freshwateritem_minecraft_water_bucket",
	"harvestcraft:freshwateritem_listallwater",
	"harvestcraft:freshmilkitem_cropalmond"
];

for i in freshRemoval{
	recipes.removeByRecipeName(i);
}

val water as ILiquidStack[IItemStack] = {
	<harvestcraft:freshmilkitem>:<liquid:milk>,
	<harvestcraft:freshwateritem>:<liquid:water>
};

for i,l in water{
	fluid_canner.recipeBuilder()
		.fluidInputs(l*125)
		.inputs(<contenttweaker:cup>)
		.outputs(i)
		.EUt(8)
		.duration(2)
		.buildAndRegister();
}

//flour
val flourMaterial as IItemStack[] = [
	<minecraft:wheat>,
	<harvestcraft:taroitem>,
	<harvestcraft:soybeanitem>,
	<harvestcraft:ryeitem>,
	<harvestcraft:riceitem>,
	<harvestcraft:quinoaitem>,
	<harvestcraft:oatsitem>,
	<harvestcraft:peasitem>,
	<minecraft:potato>,
	<harvestcraft:coconutitem>,
	<harvestcraft:milletitem>,
	<harvestcraft:chickpeaitem>,
	<harvestcraft:beanitem>,
	<harvestcraft:cassavaitem>,
	<harvestcraft:barleyitem>,
	<harvestcraft:amaranthitem>,
	<harvestcraft:bananaitem>,
	<harvestcraft:almonditem>,
];

for i in flourMaterial{
	macerator.recipeBuilder()
		.inputs(i)
		.outputs(<harvestcraft:flouritem>)
		.EUt(8)
		.duration(100)
		.buildAndRegister();
}
macerator.recipeBuilder()
	.inputs(<ore:cropChestnut>)
	.outputs(<harvestcraft:flouritem>)
	.EUt(8)
	.duration(100)
	.buildAndRegister();

//dough
mixer.recipeBuilder()
	.inputs(<harvestcraft:flouritem>)
	.fluidInputs(<liquid:salt_water>*125)
	.circuit(1)
	.outputs(<harvestcraft:doughitem>)
	.EUt(8)
	.duration(100)
	.buildAndRegister();

furnace.addRecipe(<minecraft:bread>,<harvestcraft:doughitem>);

//tools
val toolsRemoval as string[] = [
	"harvestcraft:tool_mortarandpestleitem",
	"harvestcraft:tool_saucepanitem",
	"harvestcraft:tool_juiceritem",
	"harvestcraft:tool_skilletitem",
	"harvestcraft:tool_mixingbowlitem",
	"harvestcraft:tool_potitem",
	"harvestcraft:tool_cuttingboarditem",
	"harvestcraft:tool_bakewareitem"
];

for i in toolsRemoval{
	recipes.removeByRecipeName(i);
}

	#cutting board
recipes.addShaped(<harvestcraft:cuttingboarditem>,[
	[<actuallyadditions:item_misc:3>,<ore:plateIron>,craftingToolHardHammer],
	[<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]
]);
	#pot
recipes.addShapeless(<harvestcraft:potitem>,[<ore:plateDoubleIron>,craftingToolHardHammer]);
	#skillet
recipes.addShaped(<harvestcraft:skilletitem>,[
	[<ore:plateSteel>,<ore:plateSteel>,craftingToolHardHammer],
	[<ore:plateSteel>,<ore:plateSteel>,<ore:stickSteel>]
]);
	#sauce pan
recipes.addShapeless(<harvestcraft:saucepanitem>,[<harvestcraft:potitem>,<ore:stickSteel>]);
	#bakeware
recipes.addShaped(<harvestcraft:bakewareitem>,[
	[null,craftingToolHardHammer,null],
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]
]);
	#mor
recipes.addShapeless(<harvestcraft:mortarandpestleitem>,[<harvestcraft:potitem>,<ore:stickWood>]);
	#mixing
recipes.addShaped(<harvestcraft:mixingbowlitem>,[
	[null,craftingToolSaw,null],
	[<ore:plankWood>,<ore:stickWood>,<ore:plankWood>],
	[null,<ore:plankWood>,null]
]);
	#jucer
recipes.addShaped(<harvestcraft:juiceritem>,[
	[null,craftingToolHardHammer,null],
	[<ore:plateIron>,<ore:screwIron>,<ore:plateIron>]
]);

#ground
val groundMaterials as IOreDictEntry[][IItemStack] = {
	<harvestcraft:groundfishitem> : [<ore:listAllfishraw>,<ore:listAllfishcooked>],
	<harvestcraft:groundbeefitem> : [<ore:listAllbeefraw>,<ore:listAllbeefcooked>],
	<harvestcraft:groundchickenitem> : [<ore:listAllchickenraw>,<ore:listAllchickencooked>],
	<harvestcraft:groundduckitem> : [<ore:listAllduckraw>,<ore:listAllduckcooked>],
	<harvestcraft:groundmuttonitem> : [<ore:listAllmuttonraw>,<ore:listAllmuttoncooked>],
	<harvestcraft:groundporkitem> : [<ore:listAllporkcooked>,<ore:listAllporkraw>],
	<harvestcraft:groundrabbititem> : [<ore:listAllrabbitraw>,<ore:listAllrabbitcooked>],
	<harvestcraft:groundturkeyitem> : [<ore:foodTurkeyraw>,<ore:listAllturkeycooked>],
	<harvestcraft:groundvenisonitem> : [<ore:listAllvenisonraw>,<ore:listAllvenisoncooked>],
	<harvestcraft:blackpepperitem> : [<ore:cropPeppercorn>],
	<harvestcraft:groundcinnamonitem> : [<ore:cropCinnamon>],
	<harvestcraft:groundnutmegitem> : [<ore:cropNutmeg>]
};

for o,items in groundMaterials {
	for i in items{
		hammer.recipeBuilder()
			.inputs(i)
			.outputs(o)
			.EUt(16)
			.duration(30)
			.buildAndRegister();
	}
}

#shipping bin
recipes.removeByRecipeName("harvestcraft:shippingbin");
recipes.addShapeless(<harvestcraft:shippingbin>,[<farmingforblockheads:market>]);

#well
recipes.removeByRecipeName("harvestcraft:well");
recipes.addShaped(<harvestcraft:well>,[
	[<ore:bricksStone>,<minecraft:cauldron>,<ore:bricksStone>],
	[<ore:bricksStone>,<minecraft:bucket>,<ore:bricksStone>],
	[<ore:bricksStone>,<ore:bricksStone>,<ore:bricksStone>]
]);

#ground trap
recipes.removeByRecipeName("harvestcraft:groundtrap");
recipes.addShaped(<harvestcraft:groundtrap>,[
	[<minecraft:dirt>,<ore:stickLongWood>,<minecraft:dirt>],
	[<ore:stickLongWood>,<tconstruct:wooden_hopper>,<ore:stickLongWood>],
	[<minecraft:dirt>,<ore:stickLongWood>,<minecraft:dirt>]
]);

#water trap
recipes.removeByRecipeName("harvestcraft:watertrap");
recipes.addShaped(<harvestcraft:watertrap>,[
	[<ore:plankWood>,<ore:stickLongWood>,<ore:plankWood>],
	[<ore:stickLongWood>,<gregtech:machine:820>,<ore:stickLongWood>],
	[<ore:plankWood>,<ore:stickLongWood>,<ore:plankWood>]
]);

//jar
assembler.recipeBuilder()
	.inputs(<ore:plateWood>*3,<ore:wireFineIron>*2)
	.outputs(<contenttweaker:cup>)
	.EUt(8)
	.duration(20)
	.buildAndRegister();
