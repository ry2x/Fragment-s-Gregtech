//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val alloy = RecipeMap.getByName("alloy_smelter");
val assembler = RecipeMap.getByName("assembler");

//ingots
	#removal
val ingotsRemoval as string[] = [
	"psi:material",
	"psi:material_1"
];

for n in ingotsRemoval {
	recipes.removeByRecipeName(n);
}

	#alloy
val ingotsAlloy as string[] = [
	"Ivory",
	"Ebony"
];

for i in ingotsAlloy {
	var psi as IItemStack = oreDict["ingot"~i~"Psi"].firstItem;
	var substance = oreDict["substance"~i];
	alloy.recipeBuilder()
		.inputs(substance,<ore:ingotPsi>)
		.outputs(psi)
		.EUt(500)
		.duration(120)
		.buildAndRegister();
}

//CAD assembly
	#removal
val cadARemoval as string[] = [
	"psi:cad_assembly",
	"psi:cad_assembly_1",
	"psi:cad_assembly_2",
	"psi:cad_assembly_3",
	"psi:cad_assembly_4"
];

for n in cadARemoval {
	recipes.removeByRecipeName(n);
}

	#assemble
val cadA as IItemStack[][IItemStack] = {
	<psi:cad_assembly> : [
		<minecraft:iron_ingot>,
		<gregtech:meta_item_2:32486>
	],
	<psi:cad_assembly:1> : [
		<minecraft:gold_ingot>,
		<gregtech:meta_item_2:32486>
	],
	<psi:cad_assembly:2> : [
		<psi:material:1>,
		<gregtech:meta_item_2:32486>
	],
	<psi:cad_assembly:4> : [
		<psi:material:4>,
		<gregtech:meta_item_2:32476>
	],
	<psi:cad_assembly:3> : [
		<psi:material:3>,
		<gregtech:meta_item_2:32476>
	]
};

for o, i in cadA {
	assembler.recipeBuilder()
		.inputs(i[0]*8,i[1]*2,<ore:circuitAdvanced>)
		.outputs(o)
		.property("circuit", 1)
		.EUt(500)
		.duration(300)
		.buildAndRegister();
}

//CAD core
	#removal
val core as string[] = [
	"psi:cad_core",
	"psi:cad_core_1",
	"psi:cad_core_2",
	"psi:cad_core_3",
	"psi:cad_core_4"
];

for n in core {
	recipes.removeByRecipeName(n);
}

	#assembly
	#1
assembler.recipeBuilder()
	.inputs(<ore:circuitBasic>,<ore:dustPsi>,<ore:ingotIron>*4)
	.outputs(<psi:cad_core>)
	.property("circuit", 5)
	.EUt(128)
	.duration(300)
	.buildAndRegister();

	#2
assembler.recipeBuilder
	.inputs(<ore:circuitBasic>,<ore:dustPsi>,<ore:ingotPsi>*4)
	.outputs(<psi:cad_core:1>)
	.property("circuit", 5)
	.EUt(128)
	.duration(300)
	.buildAndRegister();

	#3
assembler.recipeBuilder
	.inputs(<ore:circuitGood>,<ore:gemPsi>,<ore:ingotPsi>*4)
	.outputs(<psi:cad_core:2>)
	.property("circuit", 5)
	.EUt(128)
	.duration(300)
	.buildAndRegister();

	#4
assembler.recipeBuilder
	.inputs(<ore:circuitGood>,<randomthings:ingredient:5>,<ore:gemPsi>*2,<ore:ingotPsi>*)
	.outputs(<psi:cad_core:3>)
	.property("circuit", 5)
	.EUt(500)
	.duration(300)
	.buildAndRegister();

	#5
assembler.recipeBuilder
	.inputs(<ore:circuitGood>,<gtadditions:ga_meta_item:32018>,<ore:gemPsi>*2,<ore:ingotPsi>*)
	.outputs(<psi:cad_core:4>)
	.property("circuit", 5)
	.EUt(8000)
	.duration(200)
	.buildAndRegister();
