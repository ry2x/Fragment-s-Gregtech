/*
don't use oredict of PSI
getting oredict by oredict[] is OK, but calling <ore:*> directly is bad way
don't hide creative CAD
*/

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val alloy = RecipeMap.getByName("alloy_smelter");
val assembler = RecipeMap.getByName("assembler");
val forming = RecipeMap.getByName("forming_press");

//removal
val removal as string[] = [
	#ingot
	"psi:material",
	"psi:material_1",
	#assembly
	"psi:cad_assembly",
	"psi:cad_assembly_1",
	"psi:cad_assembly_2",
	"psi:cad_assembly_3",
	"psi:cad_assembly_4",
	#core
	"psi:cad_core",
	"psi:cad_core_1",
	"psi:cad_core_2",
	"psi:cad_core_3",
	"psi:cad_core_4",
	#socket
	"psi:cad_socket",
	"psi:cad_socket_1",
	"psi:cad_socket_2",
	"psi:cad_socket_3",
	"psi:cad_socket_4",
	#battery
	"psi:cad_battery",
	"psi:cad_battery_1",
	"psi:cad_battery_2",
	#bullet
	"psi:spell_bullet",
	"psi:spell_bullet_1",
	"psi:spell_bullet_2",
	"psi:spell_bullet_2",
	"psi:spell_bullet_3",
	"psi:spell_bullet_4",
	"psi:spell_bullet_5",
	"psi:spell_bullet_6",
	"psi:spell_bullet_7",
	#detonator
	"psi:detonator",
	#exosuit controller
	"psi:exosuit_controller",
	#sensor
	"psi:exosuit_sensor",
	"psi:exosuit_sensor_1",
	"psi:exosuit_sensor_2",
	"psi:exosuit_sensor_3",
	#tool
	"psi:psimetal_shovel",
	"psi:psimetal_pickaxe",
	"psi:psimetal_axe",
	"psi:psimetal_sword",
	#armor
	"psi:psimetal_exosuit_helmet",
	"psi:psimetal_exosuit_chestplate",
	"psi:psimetal_exosuit_leggings",
	"psi:psimetal_exosuit_boots",
	#machine
	"psi:cad_assembler"
];

for name in removal {
	recipes.removeByRecipeName(name);
}

//ingots
	#alloy
val ingotsAlloy as IItemStack[][] = [
	[<psi:material:6>,<psi:material:4>],
	[<psi:material:5>,<psi:material:3>]
];

for i in ingotsAlloy {
	alloy.recipeBuilder()
		.inputs(i[0]*8,<psi:material:1>)
		.outputs(i[1])
		.EUt(500)
		.duration(120)
		.buildAndRegister();
}

//CAD assembly
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
		.circuit(1)
		.EUt(500)
		.duration(300)
		.buildAndRegister();
}

//CAD core
	#assembly
val liquid as ILiquidStack[] = [
	<liquid:soldering_alloy>*72,
	<liquid:tin>*144,
	<liquid:lead>*288
];

for i in liquid {
	assembler.recipeBuilder()
		.inputs(<ore:ingotIron>*4,<ore:circuitBasic>,<psi:material>)
		.circuit(5)
		.fluidInputs(i)
		.outputs(<psi:cad_core>)
		.EUt(128)
		.duration(300)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<ore:circuitBasic>,<psi:material>,<psi:material:1>*4)
		.outputs(<psi:cad_core:1>)
		.circuit(5)
		.fluidInputs(i)
		.EUt(128)
		.duration(300)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<ore:circuitGood>,<psi:material:2>,<psi:material:1>*4)
		.outputs(<psi:cad_core:2>)
		.circuit(5)
		.fluidInputs(i)
		.EUt(128)
		.duration(300)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<ore:circuitGood>,<randomthings:ingredient:5>,<psi:material:2>*2,<psi:material:1>*2)
		.outputs(<psi:cad_core:3>)
		.circuit(5)
		.fluidInputs(i)
		.EUt(500)
		.duration(300)
		.buildAndRegister();

	assembler.recipeBuilder()
		.inputs(<ore:circuitGood>,<gtadditions:ga_meta_item:32018>,<psi:material:2>*2,<psi:material:1>*2)
		.outputs(<psi:cad_core:4>)
		.circuit(5)
		.fluidInputs(i)
		.EUt(8000)
		.duration(200)
		.buildAndRegister();
}

//socket
	#assembly
val socketA as int[IItemStack[]] = {
	[<psi:cad_socket>,<minecraft:glowstone_dust>,<psi:material>*3] : 20,
	[<psi:cad_socket:1>,<psi:material:1>*3,<minecraft:redstone>]: 21,
	[<psi:cad_socket:2>,<psi:material:1>*3,<randomthings:ingredient:5>]: 22,
	[<psi:cad_socket:3>,<psi:material:1>*2,<psi:material:2>*2]: 23,
	[<psi:cad_socket:4>,<psi:material:1>*3,<deepmoblearning:glitch_infused_ingot>]: 30,
};

for item, number in socketA {
	for l in liquid {
		assembler.recipeBuilder()
			.inputs(item[1],item[2])
			.fluidInputs(l)
			.circuit(6)
			.outputs(item[0])
			.duration((20*number)as int)
			.EUt((40*number)as int)
			.buildAndRegister();
	}
}

//battery
	#forming
val battery as IData[IItemStack[]] ={
	[<psi:cad_battery>,<gregtech:cable:87>*3,<psi:material>*3,<enderio:item_basic_capacitor>] : 128,
	[<psi:cad_battery:1>,<gregtech:cable:87>*3,<psi:material:3>*3,<enderio:item_basic_capacitor:1>] : 512,
	[<psi:cad_battery:2>,<gregtech:cable:87>*3,<psi:material:3>*3,<enderio:item_basic_capacitor:2>] : 2048,
};

for item, voltage in battery {
	for l in liquid {
		assembler.recipeBuilder()
			.inputs(item[1],item[2],item[3])
			.fluidInputs(l)
			.circuit(7)
			.outputs(item[0])
			.duration(600)
			.EUt(voltage as int)
			.buildAndRegister();
	}
}

//bullet
	#forming
val arrow = <tconstruct:arrow_head>.withTag({Material: "iron"});
val bullet as IData[IItemStack[]] = {
	[<psi:spell_bullet>,<psi:material>*2,<ore:plateDarkSteel>.firstItem,<ore:plateDarkSteel>.firstItem] : 10,
	[<psi:spell_bullet:2>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,arrow] : 12,
	[<psi:spell_bullet:6>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,<deepmoblearning:soot_covered_redstone>] : 14,
	[<psi:spell_bullet:8>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,<minecraft:gunpowder>] : 11,
	[<psi:spell_bullet:10>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,<gregtech:meta_item_1:2112>] : 12,
	[<psi:spell_bullet:12>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,<minecraft:stone_pressure_plate>] : 11
};

for item, multi in bullet {
	forming.recipeBuilder()
		.inputs(item[1],item[2],item[3])
		.outputs(item[0])
		.circuit(multi)
		.EUt(200 * multi)
		.duration(50)
		.buildAndRegister();
}

forming.recipeBuilder()
	.inputs(<psi:spell_bullet:4>,<psi:material>,<ore:plateDarkSteel>.firstItem*2,<ore:slimeball>)
	.outputs(<psi:spell_bullet:4>)
	.circuit(12)
	.EUt(2400)
	.duration(50)
	.buildAndRegister();

//detonator
assembler.recipeBuilder()
	.inputs(<psi:material>*2,<minecraft:iron_ingot>*2,<gregtech:meta_item_2:32485>)
	.outputs(<psi:detonator>)
	.property("circuit", 2)
	.EUt(64)
	.duration(200)
	.buildAndRegister();

//exosuit controller
assembler.recipeBuilder()
	.inputs(<minecraft:iron_ingot>*2,<minecraft:redstone>*2,<minecraft:glass>,<gregtech:meta_item_2:32486>*3)
	.outputs(<psi:exosuit_controller>)
	.property("circuit", 2)
	.EUt(64)
	.duration(300)
	.buildAndRegister();

//sensor
val sensor as IItemStack[IItemStack] = {
	<minecraft:daylight_detector> : <psi:exosuit_sensor>,
	<powersuits:powerarmorcomponent:5> : <psi:exosuit_sensor:1>,
	<gregtech:cable:1127> : <psi:exosuit_sensor:2>,
	<gregtech:meta_item_2:21072> : <psi:exosuit_sensor:3>
};

for i,o in sensor {
	for l in liquid{
		assembler.recipeBuilder()
			.inputs(i,<ore:ingotIron>*2,<gregtech:meta_item_1:32692>,<psi:material:1>*2)
			.outputs(o)
			.fluidInputs(l)
			.circuit(2)
			.EUt(256)
			.duration(250)
			.buildAndRegister();
	}
}

//tools
recipes.addShaped(<psi:psimetal_shovel>,[
	[<psi:material:2>,<psi:material:1>,null],
	[null,<ore:ingotIron>,null],
	[<ore:circuitBasic>,<ore:ingotIron>,<gregtech:meta_item_2:32476>]
]);
recipes.addShaped(<psi:psimetal_pickaxe>,[
	[<psi:material:1>,<psi:material:2>,<psi:material:1>],
	[null,<ore:ingotIron>,null],
	[<ore:circuitBasic>,<ore:ingotIron>,<gregtech:meta_item_2:32476>]
]);
recipes.addShaped(<psi:psimetal_axe>,[
	[<psi:material:1>,<psi:material:2>,null],
	[<psi:material:1>,<ore:ingotIron>,null],
	[<ore:circuitBasic>,<ore:ingotIron>,<gregtech:meta_item_2:32476>]
]);
recipes.addShaped(<psi:psimetal_sword>,[
	[null,<psi:material:1>,null],
	[null,<psi:material:2>,null],
	[<ore:circuitBasic>,<ore:ingotIron>,<gregtech:meta_item_2:32476>]
]);

//armor
val g = <psi:material:2>;
val i = <psi:material:1>;
val c = <ore:circuitElite>;

recipes.addShaped(<psi:psimetal_exosuit_helmet>,[
	[g,i,g],
	[i,c,i]
]);
recipes.addShaped(<psi:psimetal_exosuit_chestplate>,[
	[i,c,i],
	[g,i,g],
	[i,i,i]
]);
recipes.addShaped(<psi:psimetal_exosuit_leggings>,[
	[g,i,g],
	[i,c,i],
	[i,null,i]
]);
recipes.addShaped(<psi:psimetal_exosuit_boots>,[
	[g,c,g],
	[i,null,i]
]);

//assembler
recipes.addShaped(<psi:cad_assembler>,[
	[<ore:circuitAdvanced>,<gregtech:meta_item_1:32652>,<ore:circuitAdvanced>],
	[<gregtech:meta_item_1:32632>,<deepmoblearning:machine_casing>,<gregtech:meta_item_1:32632>],
	[<ore:circuitAdvanced>,<gregtech:meta_item_1:32652>,<ore:circuitAdvanced>]
]);
