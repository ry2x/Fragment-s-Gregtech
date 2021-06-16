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

//stone plate
val lub as IData[][ILiquidStack] = {
	<liquid:water> : [5,20],
	<liquid:distilled_water> : [3,13],
	<liquid:lubricant> : [1,5]
};
for l, d in lub {
	saw.recipeBuilder()
		.inputs(<appliedenergistics2:smooth_sky_stone_block>)
		.fluidInputs(l*d[0])
		.outputs(<practicallogistics2:stoneplate>)
		.EUt(8)
		.duration(d[1])
		.buildAndRegister();

//etched plate
reactor.recipeBuilder()
	.inputs(<practicallogistics2:stoneplate>,<ore:wireFineGold>*2)
	.fluidInputs(<liquid:hydrofluoric_acid>*100)
	.outputs(<practicallogistics2:etchedplate>)
	.fluidOutputs(<liquid:hydrogen>*100)
	.EUt(1024)
	.duration(300)
	.buildAndRegister();

//wireless and signal plate
val plate as ILiquidStack[IItemStack] = {
	<practicallogistics2:signallingplate> : <liquid:redstone>,
	<practicallogistics2:wirelessplate> : <liquid:uranium>
};
for i, l in plate {
	reactor.recipeBuilder()
		.inputs(<practicallogistics2:etchedplate>,<ore:wireFinePlatinum>*2)
		.fluidInputs(l*100)
		.outputs(i)
		.EUt(256)
		.duration(200)
		.buildAndRegister();
}

//displays
val liquid as ILiquidStack[] = [
	<liquid:soldering_alloy>*72,
	<liquid:tin>*144,
	<liquid:lead>*288
];

for l in liquid {
	#display
	recipes.removeByRecipeName("practicallogistics2:tile.displayscreen91");
	assembler.recipeBuilder()
		.inputs(<gtadditions:ga_meta_item:32579>,<practicallogistics2:stoneplate>,<practicallogistics2:datacable>)
		.property("circuit", 1)
		.fluidInputs(l)
		.outputs(<practicallogistics2:displayscreen>)
		.EUt(128)
		.duration(80)
		.buildAndRegister();

	#simple hologram
	recipes.removeByRecipeName("practicallogistics2:tile.holographicdisplay93");
	assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>,<practicallogistics2:displayscreen>,<practicallogistics2:signallingplate>,<practicallogistics2:stoneplate>)
		.property("circuit", 1)
		.fluidInputs(l)
		.outputs(<practicallogistics2:holographicdisplay>)
		.EUt(512)
		.duration(100)
		.buildAndRegister();

	#advanced hologram
	recipes.removeByRecipeName("practicallogistics2:tile.advancedholographicdisplay94");
	assembler.recipeBuilder()
		.inputs(<practicallogistics2:minidisplay>,<practicallogistics2:stoneplate>,<practicallogistics2:signallingplate>*2,<ore:circuitBasic>*2,<ore:paneGlassColorless>)
		.property("circuit", 2)
		.fluidInputs(l)
		.outputs(<practicallogistics2:advancedholographicdisplay>)
		.EUt(1024)
		.duration(200)
		.buildAndRegister();
}

	#large display
recipes.removeByRecipeName("practicallogistics2:tile.largedisplayscreen92");
recipes.addShapeless(<practicallogistics2:largedisplayscreen>,[<practicallogistics2:displayscreen>,<practicallogistics2:displayscreen>]);
