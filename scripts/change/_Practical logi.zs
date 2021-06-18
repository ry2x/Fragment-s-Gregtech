//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val saw = RecipeMap.getByName("cutting_saw");
val reactor = RecipeMap.getByName("chemical_reactor");
val assembler = RecipeMap.getByName("assembler");

//val
val plate as IItemStack = <practicallogistics2:stoneplate>;

//stone plate
val lub as IData[ILiquidStack] = {
	<liquid:water>*5 : 20 ,
	<liquid:distilled_water>*3 : 13,
	<liquid:lubricant>*1 : 5
};
for l, d in lub {
	saw.recipeBuilder()
		.inputs(<appliedenergistics2:smooth_sky_stone_block>)
		.fluidInputs([l])
		.outputs(plate*2)
		.EUt(8)
		.duration(d)
		.buildAndRegister();
}

//etched plate
reactor.recipeBuilder()
	.inputs(plate,<ore:wireFineGold>*2)
	.fluidInputs(<liquid:hydrofluoric_acid>*100)
	.outputs(<practicallogistics2:etchedplate>)
	.fluidOutputs(<liquid:hydrogen>*100)
	.EUt(1024)
	.duration(300)
	.buildAndRegister();

//wireless and signal plate
val makePlate as ILiquidStack[IItemStack] = {
	<practicallogistics2:signallingplate> : <liquid:redstone>,
	<practicallogistics2:wirelessplate> : <liquid:uranium>
};
for i, l in makePlate {
	reactor.recipeBuilder()
		.inputs(<practicallogistics2:etchedplate>,<ore:wireFinePlatinum>*2)
		.fluidInputs([l*144])
		.outputs(i)
		.EUt(256)
		.duration(200)
		.buildAndRegister();
}

//displays
val liquid as IData[ILiquidStack] = {
	<liquid:soldering_alloy> : 72,
	<liquid:tin> : 144,
	<liquid:lead> : 288
};

for l,q in liquid {
	#display
	recipes.removeByRecipeName("practicallogistics2:tile.displayscreen91");
	assembler.recipeBuilder()
		.inputs(<gtadditions:ga_meta_item:32579>,plate,<practicallogistics2:datacable>)
		.property("circuit", 1)
		.fluidInputs([l*q])
		.outputs(<practicallogistics2:displayscreen>)
		.EUt(128)
		.duration(80)
		.buildAndRegister();

	#simple hologram
	recipes.removeByRecipeName("practicallogistics2:tile.holographicdisplay93");
	assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>,<practicallogistics2:displayscreen>,<practicallogistics2:signallingplate>,plate)
		.property("circuit", 1)
		.fluidInputs([l*q])
		.outputs(<practicallogistics2:holographicdisplay>)
		.EUt(512)
		.duration(100)
		.buildAndRegister();

	#advanced hologram
	recipes.removeByRecipeName("practicallogistics2:tile.advancedholographicdisplay94");
	assembler.recipeBuilder()
		.inputs(<practicallogistics2:minidisplay>,plate,<practicallogistics2:signallingplate>*2,<ore:circuitBasic>*2,<ore:paneGlassColorless>)
		.property("circuit", 2)
		.fluidInputs([l*q])
		.outputs(<practicallogistics2:advancedholographicdisplay>)
		.EUt(1024)
		.duration(200)
		.buildAndRegister();
}

	#large display
recipes.removeByRecipeName("practicallogistics2:tile.largedisplayscreen92");
recipes.addShapeless(<practicallogistics2:largedisplayscreen>,[<practicallogistics2:displayscreen>,<practicallogistics2:displayscreen>]);

//date cable
recipes.removeByRecipeName("practicallogistics2:tile.datacable87");
recipes.addShaped(<practicallogistics2:datacable>,[
	[plate,plate,plate],
	[<ore:dustFluix>,<ore:dustFluix>,<ore:dustFluix>],
	[plate,plate,plate]
]);

//Node
recipes.removeByRecipeName("practicallogistics2:tile.node105");
recipes.addShaped(<practicallogistics2:node>,[
	[null,<practicallogistics2:datacable>,null],
	[plate,<ore:dustFluix>,plate]
]);

//date receiver
recipes.removeByRecipeName("practicallogistics2:tile.datareceiver97");
recipes.addShaped(<practicallogistics2:datareceiver>,[
	[plate,<ore:dustFluix>,plate],
	[<ore:dustFluix>,<practicallogistics2:inforeader>,<ore:dustFluix>],
	[plate,plate,plate]
]);

//info reader
recipes.removeByRecipeName("practicallogistics2:tile.inforeader100");
recipes.addShaped(<practicallogistics2:inforeader>,[
	[plate,<ore:ingotIron>,plate],
	[<ore:dustRedstone>,<practicallogistics2:datacable>,<ore:dustFluix>],
	[plate,<ore:ingotIron>,plate]
]);

//energy reader
recipes.removeByRecipeName("practicallogistics2:tile.energyreader103");
recipes.addShapeless(<practicallogistics2:energyreader>,[<practicallogistics2:inforeader>,<ore:dustFluix>]);

//clock
recipes.removeByRecipeName("practicallogistics2:tile.clock109");
recipes.addShaped(<practicallogistics2:clock>,[
	[<ore:dustFluix>,<minecraft:clock>,<ore:dustRedstone>],
	[plate,<practicallogistics2:signallingplate>,plate]
]);

//transceiver
recipes.removeByRecipeName("practicallogistics2:item.transceiver111");
recipes.addShaped(<practicallogistics2:transceiver>,[
	[<ore:dustFluix>,plate,<ore:dustRedstone>],
	[<practicallogistics2:wirelessplate>,<practicallogistics2:node>,<practicallogistics2:wirelessplate>],
	[<ore:dustFluix>,plate,<ore:dustRedstone>]
]);

//guide
recipes.removeByRecipeName("practicallogistics2:item.plguide86");
recipes.addShapeless(<practicallogistics2:plguide>,[<minecraft:book>,<ore:gemSapphire>]);

//operator
recipes.removeByRecipeName("practicallogistics2:item.operator112");
recipes.addShaped(<practicallogistics2:operator>,[
	[null,null,plate],
	[null,<ore:rodStone>,null],
	[plate,null,null]
]);
