//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

//import JEI function
import mods.jei.JEI;

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

val alloy = RecipeMap.getByName("alloy_smelter");
val arc = RecipeMap.getByName("arc_furnace");
val assembler = RecipeMap.getByName("assembler");
val attractor = RecipeMap.getByName("attractor");
val autoclave = RecipeMap.getByName("autoclave");
val bath = RecipeMap.getByName("chemical_bath");
val blast_furnace = RecipeMap.getByName("blast_furnace");
val canner = RecipeMap.getByName("canner");
val centrifuge = RecipeMap.getByName("centrifuge");
val circuit_assembler = RecipeMap.getByName("circuit_assembler");
val compressor = RecipeMap.getByName("compressor");
val diesel_generator as RecipeMap = RecipeMap.getByName("diesel_generator");
val electrolyzer = RecipeMap.getByName("electrolyzer");
val engraver = RecipeMap.getByName("laser_engraver");
val extractor = RecipeMap.getByName("extractor");
val extruder = RecipeMap.getByName("extruder");
val fluid_canner = RecipeMap.getByName("fluid_canner");
val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val forming = RecipeMap.getByName("forming_press");
val freezer = RecipeMap.getByName("vacuum_freezer");
val gas_turbine as RecipeMap = RecipeMap.getByName("gas_turbine");
val hammer = RecipeMap.getByName("forge_hammer");
val implosion = RecipeMap.getByName("implosion_compressor");
val lathe = RecipeMap.getByName("lathe");
val macerator = RecipeMap.getByName("macerator");
val metal_bender = RecipeMap.getByName("metal_bender");
val mill = RecipeMap.getByName("wiremill");
val mixer = RecipeMap.getByName("mixer");
val packer = RecipeMap.getByName("packer");
val plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
val plasma_generator as RecipeMap = RecipeMap.getByName("plasma_generator");
val reactor = RecipeMap.getByName("chemical_reactor");
val saw = RecipeMap.getByName("cutting_saw");
val sifter = RecipeMap.getByName("sifter");
val solidifier = RecipeMap.getByName("fluid_solidifier");
val steam_turbine as RecipeMap = RecipeMap.getByName("steam_turbine");
val thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val unpacker = RecipeMap.getByName("unpacker");
val uu = RecipeMap.getByName("uuamplifier");

//Gregicality
val cluster_mill as RecipeMap = GARecipeMaps.CLUSTER_MILL_RECIPES;
val assembly_line as RecipeMap = GARecipeMaps.ASSEMBLY_LINE_RECIPES;
val mass_fab as RecipeMap = GARecipeMaps.MASS_FAB_RECIPES;
val replicator as RecipeMap = GARecipeMaps.REPLICATOR_RECIPES;
val cracker_unit as RecipeMap = GARecipeMaps.CRACKER_UNIT_RECIPES;
val electric_sieve as RecipeMap = GARecipeMaps.SIEVE_RECIPES;
val chemical_dehydrator as RecipeMap = GARecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES;
val chemical_plant as RecipeMap = GARecipeMaps.CHEMICAL_PLANT_RECIPES;
val blast_alloy as RecipeMap = GARecipeMaps.BLAST_ALLOY_RECIPES;
val simple_ore_washer as RecipeMap = GARecipeMaps.SIMPLE_ORE_WASHER_RECIPES;
val nuclear_reactor as RecipeMap = GARecipeMaps.NUCLEAR_REACTOR_RECIPES;
val nuclear_breeder as RecipeMap = GARecipeMaps.NUCLEAR_BREEDER_RECIPES;
val decay_chamber as RecipeMap = GARecipeMaps.DECAY_CHAMBERS_RECIPES;
// Large
val large_chemical_reactor as RecipeMap = GARecipeMaps.LARGE_CHEMICAL_RECIPES;
val large_mixer as RecipeMap = GARecipeMaps.LARGE_MIXER_RECIPES;
val large_forge_hammer as RecipeMap = GARecipeMaps.LARGE_FORGE_HAMMER_RECIPES;
val large_centrifuge as RecipeMap = GARecipeMaps.LARGE_CENTRIFUGE_RECIPES;
val bio_reactor as RecipeMap = GARecipeMaps.BIO_REACTOR_RECIPES;

//remove recipes
val removeRecipes as string[] = [
	#Gregtech Chest
	"gregtech:bronze_chest",
	"gregtech:steel_chest",
	"gregtech:stainless_steel_chest",
	"gregtech:titanium_chest",
	"gregtech:tungsten_steel_chest",
	#Gregtech Tank, use drum instead
	"gregtech:wooden_tank",
	"gregtech:steel_tank",
	"gregtech:stainless_steel_tank",
	"gregtech:titanium_tank",
	"gregtech:tungsten_steel_tank",
	#Gregtech LV Thermal Centrifuge
	"gtadditions:ga_gregtech.machine.thermal_centrifuge.lv",
	#Gregtech LV laser Engraver
	"gtadditions:ga_gregtech.machine.laser_engraver.lv",
	#Gregicality integrated circuit recipe
	"gtadditions:basic_to_configurable_circuit",
	#Gregicality Primitive Blast Furnace recipes
    "gtadditions:block_decompress_clay",
];

for name in removeRecipes {
	recipes.removeByRecipeName(name);
}

val removeFromJEI as IItemStack[] = [
	#gregtech chest
    <gregtech:machine:802>,
    <gregtech:machine:803>,
    <gregtech:machine:804>,
    <gregtech:machine:805>,
    <gregtech:machine:806>,
    <gregtech:machine:807>,
    <gregtech:machine:808>,
	#Gregtech Tank
    <gregtech:machine:811>,
    <gregtech:machine:812>,
    <gregtech:machine:813>,
    <gregtech:machine:814>,
    <gregtech:machine:815>,
    <gregtech:machine:816>,
	#Gregtech LV Thermal Centrifuge
	<gregtech:machine:460>,
	#Gregtech LV laser Engraver
	<gregtech:machine:430>
];

for item in removeFromJEI {
	JEI.hide(item);
}

//remove gregtech flour
val flour as IItemStack[] = [
	<gregtech:meta_item_1:2345>,
	<gregtech:meta_item_1:1345>,
	<gregtech:meta_item_1:345>
];

for i in flour {
	JEI.removeAndHide(i);
}

val flourMaterial as IItemStack[] = [
	<minecraft:wheat>,
	<minecraft:hay_block>
];
for i in flourMaterial{
	macerator.findRecipe(8,[i],null).remove();
}

//add recipe to ender pearl liquid
fluid_extractor.recipeBuilder()
    .inputs([<minecraft:ender_pearl>])
    .fluidOutputs([<liquid:ender>*250])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

//fixing <ore:dustTungsten> recipes due to no existing recipes
electrolyzer.recipeBuilder()
    .inputs(<ore:dustTungstate>*7)
    .outputs(<ore:dustTungsten>.firstItem,<ore:dustLithium>.firstItem*2)
    .fluidInputs([<liquid:hydrogen>*7000])
    .fluidOutputs([<liquid:oxygen>*4000])
    .duration(3000)
    .EUt(512)
    .buildAndRegister();
electrolyzer.recipeBuilder()
    .inputs(<ore:dustScheelite>*7)
    .outputs(<ore:dustTungsten>.firstItem,<ore:dustCalcium>.firstItem*2)
    .fluidInputs([<liquid:hydrogen>*7000])
    .fluidOutputs([<liquid:oxygen>*4000])
    .duration(3000)
    .EUt(512)
    .buildAndRegister();

//lath bucket
lathe.recipeBuilder()
	.inputs(<ore:blockIron>)
	.outputs(<minecraft:bucket>*3)
	.duration(60)
	.EUt(18)
	.buildAndRegister();

//Steel in arc furnace
arc.recipeBuilder()
	.inputs(<ore:ingotWroughtIron>)
	.fluidInputs([<liquid:oxygen>*60])
	.outputs(<ore:ingotSteel>.firstItem)
	.duration(60)
	.EUt(24)
	.buildAndRegister();

//aluminium ore in arc furnace
arc.recipeBuilder()
	.inputs(<ore:oreAluminium>)
	.fluidInputs([<liquid:oxygen>*60])
	.outputs(<ore:ingotAluminium>.firstItem)
	.duration(60)
	.EUt(24)
	.buildAndRegister();

//Backport Sphalerite Electrolysis from 5U modpacks
electrolyzer.recipeBuilder()
	.inputs([<ore:dustSphalerite>*2])
    .fluidInputs([<liquid:chlorine>*200])
	.outputs([<ore:dustZinc>.firstItem, <ore:dustSulfur>.firstItem])
    .fluidOutputs([<liquid:chlorine>*200])
	.EUt(60)
	.duration(600)
	.buildAndRegister();

//Import Zeolite Electrolysis from 5U modpack
electrolyzer.recipeBuilder()
	.inputs([<ore:dustZeolite>*32])
	.outputs([<ore:dustSodium>.firstItem, <ore:dustCalcium>.firstItem*2,<ore:dustSilicon>.firstItem*15, <ore:dustAluminium>.firstItem*2])
	.fluidOutputs([<liquid:water>*19000, <liquid:oxygen>*24000])
	.EUt(60)
	.duration(900)
	.buildAndRegister();

//gem in autoclaves
var autoclaveGems as string[] = [
	"Topaz",
	"Tanzanite",
	"Almandine",
	"BlueTopaz",
	"Jasper",
	"GarnetRed",
	"GarnetYellow",
	"Vinteum"
];

for key in autoclaveGems {
	var dust as IItemStack = oreDict["crushedPurified"~key].firstItem;
	var gem as IItemStack = oreDict["gem"~key].firstItem;

	autoclave.recipeBuilder()
		.inputs(dust*1)
		.fluidInputs([<liquid:water>*1000])
		.outputs(gem*1)
		.duration(2000)
		.EUt(24)
		.buildAndRegister();
}

//ender perl
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2218>)
	.fluidInputs([<liquid:water>*1000])
	.outputs(<minecraft:ender_pearl>)
	.duration(2000)
	.EUt(24)
	.buildAndRegister();
solidifier.recipeBuilder()
	.fluidInputs([<liquid:ender>*250])
	.notConsumable(<gregtech:meta_item_1:32307>)
	.outputs(<minecraft:ender_pearl>)
	.duration(100)
	.EUt(16)
	.buildAndRegister();

//add metal casing upgrade recipes
	#bronze to steel
assembler.recipeBuilder()
	.inputs(<gregtech:metal_casing>, <ore:plateSteel>*2)
	.outputs(<gregtech:metal_casing:4>)
	.duration(60)
	.EUt(16)
	.buildAndRegister();
	#steel to titanium
assembler.recipeBuilder()
	.inputs(<gregtech:metal_casing:4>, <ore:plateTitanium>*2)
	.outputs(<gregtech:metal_casing:6>)
	.duration(60)
	.EUt(16)
	.buildAndRegister();
	#titanium to tungstenSteel
assembler.recipeBuilder()
	.inputs(<gregtech:metal_casing:6>, <ore:plateTungstenSteel>*2)
	.outputs(<gregtech:metal_casing:7>)
	.duration(60)
	.EUt(16)
	.buildAndRegister();

//add boiler upgrade recipes
val boilerUpdate as IOreDictEntry[string[]] = {
	["0","1"] : <ore:plateSteel>,
	["1","2"] : <ore:plateTitanium>,
	["2","3"] : <ore:plateTungstenSteel>
};

for inputInfo, plate in boilerUpdate {
	var fireCasing = itemUtils.getItem("gregtech:boiler_firebox_casing",(inputInfo[0]) as int);
	var boilerCasing = itemUtils.getItem("gregtech:boiler_casing",(inputInfo[0]) as int);
	var fireCasing2 = itemUtils.getItem("gregtech:boiler_firebox_casing",(inputInfo[1]) as int);
	var boilerCasing2 = itemUtils.getItem("gregtech:boiler_casing",(inputInfo[1]) as int);
	#fireCasing
	assembler.recipeBuilder()
		.inputs(fireCasing,plate*2)
		.outputs(fireCasing2)
		.duration(60)
		.EUt(16)
		.buildAndRegister();
	#boilerCasing
	assembler.recipeBuilder()
		.inputs(boilerCasing,plate*5)
		.outputs(boilerCasing2)
		.duration(60)
		.EUt(16)
		.buildAndRegister();
}

//Turbine recipes same as boillar
assembler.recipeBuilder()
	.inputs(<gregtech:turbine_casing:5>, <ore:plateTitanium>*2)
	.outputs(<gregtech:turbine_casing:4>)
	.duration(100)
	.EUt(16)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:turbine_casing:4>, <ore:plateTungstenSteel>*2)
	.outputs(<gregtech:turbine_casing:6>)
	.duration(150)
	.EUt(16)
	.buildAndRegister();

//blue steel in alloy
alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10184>*2,<gregtech:meta_item_1:2128>])
    .outputs([<gregtech:meta_item_1:10233>*2])
    .duration(35)
    .EUt(16)
    .buildAndRegister();

//concrete to vanilla concrete
solidifier.findRecipe(8, [<gregtech:meta_item_1:32308>], [<liquid:concrete>*1296]).remove();
compressor.findRecipe(2, [<gregtech:meta_item_1:2296>*9],[]).remove();
solidifier.recipeBuilder()
    .fluidInputs([<liquid:concrete>*576])
	.notConsumable(<gregtech:meta_item_1:32308>)
	.outputs(<minecraft:concrete:8>*4)
	.duration(300)
	.EUt(14)
	.buildAndRegister();
compressor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2296>*9)
    .outputs(<minecraft:concrete:8>)
    .duration(400)
    .EUt(2)
    .buildAndRegister();

//resin to rubber
reactor.recipeBuilder()
	.inputs(<ore:dustSulfur>)
	.fluidInputs([<liquid:resin>*100])
	.fluidOutputs([<liquid:rubber>*900])
    .duration(400)
    .EUt(20)
    .buildAndRegister();

//cryotheum helps cool-downing hot ingots
val FreezerHot as IData[string] = {
    Erbium : 56,
    BlackBronze : 62,
    NaquadahEnriched :140,
    NaquadahAlloy : 225,
    YttriumBariumCuprate : 140,
    Osmiridium : 78,
    Enderium : 140,
    Yttrium : 56,
    VanadiumGallium : 140,
    Vanadium : 280,
    Ultimet : 84,
    TungstenSteel : 93,
    Hssg : 140,
    Hsse : 168,
    Osmium : 103,
    Scandium : 56,
    Hsss : 168,
    NiobiumTitanium : 140,
    NiobiumNitride : 80,
    Lutetium : 60,
    Iridium : 84,
    Kanthal : 56,
    Naquadah : 168,
    Naquadria : 281,
    Tungsten : 93,
    Thulium : 56,
    Titanium : 60,
    Nichrome : 84,
    TungstenCarbide : 76,
    Niobium : 85,
	NitinolA : 60,

};

for MetalName, Time in FreezerHot {
    var HotIngot as IOreDictEntry = oreDict["ingotHot"~MetalName];
    var ColdIngot as IItemStack = oreDict["ingot"~MetalName].firstItem;
    freezer.recipeBuilder()
        .inputs(HotIngot)
        .fluidInputs([<liquid:cryotheum>*10])
        .outputs(ColdIngot)
        .duration(Time)
        .EUt(32)
        .buildAndRegister();
}

//add end game content
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32479>*4,<gregtech:meta_item_2:32435>*4,<gregtech:meta_item_2:32213>,<gregtech:meta_item_2:32213>,<ore:circuitExtreme>*4,<gtadditions:ga_armor:15>,<gtadditions:ga_armor:4>)
	.outputs(<gtadditions:ga_armor:13>)
	.duration(4000)
	.EUt(1600)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32435>*10,<gregtech:meta_item_2:32213>*2,<gregtech:meta_item_2:32213>*2,<ore:circuitExtreme>*6,<gregtech:meta_item_1:32673>,<gtadditions:ga_armor:14>)
	.outputs(<gtadditions:ga_armor:13>)
	.duration(6000)
	.EUt(1600)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:6>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32697>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_helmet>)
	.duration(6000)
	.EUt(13700)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:13>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32687>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_chestplate>)
	.duration(6000)
	.EUt(13700)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:5>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32608>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_leggings>)
	.duration(6000)
	.EUt(13700)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:7>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32647>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_boots>)
	.duration(6000)
	.EUt(13700)
	.buildAndRegister();
	#railguns
assembler.recipeBuilder()
	.inputs(<overloaded:energy_core>,<ore:circuitSuperconductor>,<ore:wireGtDoubleZpmSuperconductor>*8,<ore:plateDarkSteel>*8,<ore:pipeMediumNaquadah>*3)
	.fluidInputs([<liquid:cryotheum>*8000])
	.outputs(<overloaded:railgun>)
	.duration(6000)
	.EUt(13700)
	.buildAndRegister();

//drum recipes fix
val DrumFix as IItemStack[string] = {
    TungstenSteel : <gregtech:machine:2200>,
    TriniumTitanium : <gregtech:machine:2199>,
    StainlessSteel : <gregtech:machine:2198>,
    Steel : <gregtech:machine:2197>,
    Bronze : <gregtech:machine:2196>
};
for key, drum in DrumFix {
    var drumDust as IOreDictEntry = oreDict["dust"~key];
    var bolt as IOreDictEntry = oreDict["bolt"~key];
    var plate as IOreDictEntry = oreDict["plate"~key];
    var longStick as IOreDictEntry = oreDict["stickLong"~key];
        #macerate
    macerator.recipeBuilder()
		.inputs(drum)
		.outputs(drumDust.firstItem*6)
		.duration(30)
		.EUt(8)
		.buildAndRegister();
        #drum crafting
    recipes.addShaped(drum,[
        [bolt,plate,bolt],
        [plate,longStick,plate],
        [bolt,plate,bolt]
    ]);
        #assembler
    assembler.recipeBuilder()
        .inputs(longStick*2, plate*4)
		.circuit(4)
        .outputs(drum)
        .duration(80)
        .EUt(18)
        .buildAndRegister();
}

//cable from rubber foil and wire
	#rubber foil IItemStack
val rubber as IItemStack = <ore:foilRubber>.firstItem;
val cableFix as string[] = [
    "AnnealedCopper",
    "Copper",
    "Cupronickel",
    "Iron",
    "MvSuperconductor",
    "MvSuperconductorBase",
    "Nickel",
    "Electrum",
    "Gold",
    "HvSuperconductor",
    "HvSuperconductorBase",
    "Kanthal",
    "Silver"
];

for key in cableFix {
    #single
    var SingleWire as IOreDictEntry = oreDict["wireGtSingle"~key];
    var SingleCable as IOreDictEntry = oreDict["cableGtSingle"~key];
    #double
    var DoubleWire as IOreDictEntry = oreDict["wireGtDouble"~key];
    var DoubleCable as IOreDictEntry = oreDict["cableGtDouble"~key];
   #Quadruple
    var QuadrupleWire as IOreDictEntry = oreDict["wireGtQuadruple"~key];
    var QuadrupleCable as IOreDictEntry = oreDict["cableGtQuadruple"~key];
    #Octal
    var OctalWire as IOreDictEntry = oreDict["wireGtOctal"~key];
    var OctalCable as IOreDictEntry = oreDict["cableGtOctal"~key];
    #Hex
    var HexWire as IOreDictEntry = oreDict["wireGtHex"~key];
    var HexCable as IOreDictEntry = oreDict["cableGtHex"~key];
    #single to single
    assembler.recipeBuilder()
		.inputs(SingleWire.firstItem,rubber)
		.circuit(24)
		.outputs(SingleCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #double to double
    assembler.recipeBuilder()
		.inputs(DoubleWire.firstItem,rubber*2)
		.circuit(24)
		.outputs(DoubleCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #single to double
    assembler.recipeBuilder()
		.inputs(SingleWire.firstItem*2,rubber*2)
		.circuit(25)
		.outputs(DoubleCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #4 to 4
    assembler.recipeBuilder()
		.inputs(QuadrupleWire.firstItem,rubber*4)
		.circuit(24)
		.outputs(QuadrupleCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #1 to 4
	assembler.recipeBuilder()
		.inputs(SingleWire.firstItem*4,rubber*4)
		.circuit(26)
		.outputs(QuadrupleCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #8 to 8
    assembler.recipeBuilder()
		.inputs(OctalWire.firstItem,rubber*8)
		.circuit(24)
		.outputs(OctalCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #1 to 8
	assembler.recipeBuilder()
		.inputs(SingleWire.firstItem*8,rubber*8)
		.circuit(27)
		.outputs(OctalCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #16 to 16
    assembler.recipeBuilder()
		.inputs(HexWire.firstItem,rubber*16)
		.circuit(24)
		.outputs(HexCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
    #1 to 16
    	assembler.recipeBuilder()
		.inputs(SingleWire.firstItem*16,rubber*16)
		.circuit(28)
		.outputs(HexCable.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

//glass fix(Glass block>liquid 1000mb, stain>375mb)
	#remove fluid glass recipes in fluid extractor
for extract in fluid_extractor.recipes {
	if ((extract.fluidOutputs[0] * 0).matches(<liquid:glass> * 0))
        {
		//	print("Removing extractor recipes: " + extract.inputs[0].matchingItems[0].displayName + " to " + extract.fluidOutputs[0].displayName + ":" + extract.fluidOutputs[0].amount);
			extract.remove();
		}
}

	#add fluid glass recipes in fluid extractor
val glassfix as int[IIngredient]= {
	<ore:sand> : 8,
	<ore:gemGlass> : 8,
	<ore:plateGlass> :8,
	<minecraft:glass_bottle> : 8,
	<ore:gemChippedGlass> : 2,
	<ore:gemFlawedGlass> : 4,
	<ore:lensGlass> : 3
};

for input,x in glassfix {
	fluid_extractor.recipeBuilder()
		.inputs(input)
		.fluidOutputs([<liquid:glass>*((125*x)as int)])
		.duration((10*x) as int)
		.EUt(32)
		.buildAndRegister();
}

	#fix clear tinker glass in solidifier
solidifier.findRecipe(4, [<metaitem:shape.mold.block>], [<liquid:glass> * 1000]).remove();
solidifier.recipeBuilder()
    .fluidInputs([<liquid:glass> * 1000])
	.notConsumable(<metaitem:shape.mold.block>)
	.outputs(<minecraft:glass>)
	.duration(12)
	.EUt(4)
	.buildAndRegister();

//change recipes use plutonium244 to uranium
bath.findRecipe(384, [<minecraft:nether_star>], [<liquid:plutonium> * 1152]).remove();
bath.findRecipe(384, [<minecraft:ender_eye>], [<liquid:plutonium> * 288]).remove();

bath.recipeBuilder()
	.inputs(<minecraft:nether_star>)
	.fluidInputs([<liquid:uranium> * 1152])
	.outputs(<metaitem:quantumstar>)
    .duration(1920)
    .EUt(384)
    .buildAndRegister();

bath.recipeBuilder()
	.inputs(<minecraft:ender_eye>)
	.fluidInputs([<liquid:uranium> * 288])
	.outputs(<metaitem:quantumeye>)
    .duration(480)
    .EUt(384)
    .buildAndRegister();

//add diamond gem in implosion
implosion.recipeBuilder()
    .inputs(<ore:dustDiamond>*4)
    .outputs(<ore:gemDiamond>.firstItem*3,<ore:dustTinyDarkAsh>.firstItem*2)
    .property("explosives",48)
    .duration(20)
    .EUt(30)
    .buildAndRegister();

//add molten obsidian in greg
fluid_extractor.recipeBuilder()
	.inputs(<ore:obsidian>)
	.fluidOutputs([<liquid:obsidian>*1000])
	.duration(80)
	.EUt(32)
	.buildAndRegister();

//add crate in assembler
	#only wood
assembler.recipeBuilder()
	.inputs(<ore:screwIron>*4,<ore:plankWood>*4)
	.outputs(<meta_tile_entity:gtadditions:crate.wood>)
	.circuit(4)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
	#others
val crateMaterials as IItemStack[string] = {
	"Bronze":<meta_tile_entity:gtadditions:crate.bronze>,
	"Steel":<meta_tile_entity:gtadditions:crate.steel>,
	"StainlessSteel":<meta_tile_entity:gtadditions:crate.stainless_steel>,
	"Titanium":<meta_tile_entity:gtadditions:crate.titanium>,
	"TungstenSteel":<meta_tile_entity:gtadditions:crate.tungstensteel>
};

for key, meta in crateMaterials {
	var Mplate = oreDict["plate"~key];
	var MlongStick = oreDict["stickLong"~key];

	assembler.recipeBuilder()
		.inputs(Mplate*4,MlongStick*4)
		.outputs(meta)
		.circuit(4)
		.duration(80)
		.EUt(18)
		.buildAndRegister();
}

//dark steel and Stellar
val removeFurnace as IIngredient[] = [
	<gregtech:meta_item_1:10502>,
	<gregtech:meta_item_1:9502>,
	<gregtech:meta_item_1:10501>,
	<gregtech:meta_item_1:9501>
];

for i in removeFurnace {
	furnace.remove(i);
}

	#dark steel (in HV)
mixer.recipeBuilder()
	.inputs(<ore:dustTungsten>*4,<ore:dustBlackSteel>*5,<ore:dustNetherrack>*3)
	.outputs(<gregtech:meta_item_1:2502>*12)
	.EUt(8)
	.duration(360)
	.buildAndRegister();
blast_furnace.recipeBuilder()
	.inputs(<ore:dustDarkSteel>)
	.fluidInputs([<liquid:oxygen>*1000])
	.outputs(<gregtech:meta_item_1:10502>)
	.property("temperature", 2800)
	.EUt(490)
	.duration(3200)
	.buildAndRegister();

	#stellar alloy
large_mixer.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2859> * 13,<gregtech:meta_item_1:2307> * 2,<gregtech:meta_item_1:2032> * 5,<gregtech:meta_item_1:2180> * 3,<gregtech:meta_item_1:2001> * 5,<gregtech:meta_item_1:2007> * 10,<gregtech:meta_item_1:2184> * 2)
	.outputs(<gregtech:meta_item_1:2501> * 45)
	.fluidInputs([<liquid:hydrogen>*5000])
	.EUt(800)
	.duration(800)
	.buildAndRegister();
blast_furnace.recipeBuilder()
	.inputs(<ore:dustStellarAlloy>)
	.fluidInputs([<liquid:oxygen>*500])
	.outputs(<gregtech:meta_item_1:10501>)
	.property("temperature", 9500)
	.EUt(8000)
	.duration(3200)
	.buildAndRegister();

//change and fix recipes
val FixLuVCompo as IItemStack[] = [
	<gregtech:machine_casing:6>,
	<gregtech:machine:506>,
	<gregtech:machine:2253>,
	<gregtech:machine:2041>,
	<gregtech:machine:2033>,
	<gregtech:machine:2149>,
	<gtadditions:ga_meta_item2:102>
];

for i in FixLuVCompo {
	recipes.replaceAllOccurences(<gregtech:meta_item_1:12859>,<ore:plateChrome>,i);
}

	#prospector
recipes.replaceAllOccurences(<gregtech:meta_item_2:8859>,<gregtech:meta_item_2:8016>,<gtadditions:ga_meta_item2:102>);

	#rocket engine
recipes.replaceAllOccurences(<gregtech:meta_item_1:13859>,<gregtech:meta_item_1:13016>,<gregtech:machine:2238>);

	#machines in assembler
		#machine casing
assembler.findRecipe(16, [<metaitem:circuit.integrated>.withTag({Configuration:8}),<gregtech:meta_item_1:12859>*8],[]).remove();
assembler.recipeBuilder()
	.inputs(<ore:plateChrome>*8)
	.outputs(<gregtech:machine_casing:6>)
	.circuit(8)
	.EUt(16)
	.duration(50)
	.buildAndRegister();
		#crucible
assembler.findRecipe(8400, [<gregtech:meta_item_1:12859>*4,<gregtech:meta_item_1:32606>],[]).remove();
assembler.recipeBuilder()
	.inputs(<ore:plateChrome>*4,<gregtech:meta_item_1:32606>)
	.outputs(<gtadditions:ga_meta_item:32440>)
	.EUt(8400)
	.duration(240)
	.buildAndRegister();

	#ethanol
reactor.recipeBuilder()
	.fluidInputs(<liquid:water>*1000,<liquid:ethylene>*1000)
	.fluidOutputs(<liquid:bio.ethanol>*1000)
	.EUt(32)
	.duration(100)
	.buildAndRegister();

	#methanol
reactor.recipeBuilder()
	.fluidInputs(<liquid:carbon_monoxide>*1000,<liquid:hydrogen>*2000)
	.fluidOutputs(<liquid:methanol>*1000)
	.EUt(32)
	.duration(100)
	.buildAndRegister();
reactor.recipeBuilder()
	.fluidInputs(<liquid:carbon_dioxide>*1000,<liquid:hydrogen>*3000)
	.fluidOutputs(<liquid:methanol>*1000,<liquid:water>*1000)
	.EUt(64)
	.duration(100)
	.buildAndRegister();

	#rh miss fix
reactor.recipeBuilder()
	.inputs(<ore:dustPalladiumSalt>)
	.fluidInputs(<liquid:aqua_regia>*250)
	.fluidOutputs(<liquid:platinum_concentrate>*250)
	.outputs(<ore:dustPlatinumResidue>.firstItem)
	.EUt(64)
	.duration(2400)
	.buildAndRegister();

	#spray can
assembler.findRecipe(8,[<minecraft:redstone>,<gregtech:meta_item_1:12071>*2],[]).remove();
assembler.recipeBuilder()
	.inputs(<ore:dustRedstone>,<ore:plateTin>*2)
	.circuit(1)
	.outputs(<gregtech:meta_item_1:32402>)
	.EUt(8)
	.duration(200)
	.buildAndRegister();

	#buff lapotron crystal
val CrystalMaterials as string[] = [
	"Lapis",
	"Lazurite",
	"Sodalite"
];

for key in CrystalMaterials {
	var Cplate as IOreDictEntry = oreDict["plate"~key];
	var Cstick as IOreDictEntry = oreDict["stick"~key];
	var Cflowl as IOreDictEntry = oreDict["gemFlawed"~key];
	recipes.addShaped(<gregtech:meta_item_2:32213>,[
		[Cplate,<gregtech:meta_item_2:32452>],
		[Cflowl,Cstick]
	]);
}

	#metals and gems
val CompressorFixRemoval as IItemStack[] = [
	<thermalfoundation:material:129>,
	<thermalfoundation:material:160>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:131>,
	<thermalfoundation:material:135>,
	<thermalfoundation:material:128>,
	<thermalfoundation:material:132>,
	<thermalfoundation:material:167>,
	<thermalfoundation:material:163>,
	<thermalfoundation:material:162>,
	<thermalfoundation:material:161>,
	<tconstruct:ingots>,
	#gems
	<projectred-core:resource_item:201>,
	<projectred-core:resource_item:200>,
	#nether star
	<minecraft:nether_star>
];

for item in CompressorFixRemoval {
	compressor.findRecipe(2,[item*9],null).remove();
}

val CompressorFixAdding as IItemStack[IItemStack] = {
	<gregtech:meta_item_1:10071> : <gregtech:meta_block_compressed_4:7>,
	<gregtech:meta_item_1:10184> : <gregtech:meta_block_compressed_11:8>,
	<gregtech:meta_item_1:10062> : <gregtech:meta_block_compressed_3:14>,
	<gregtech:meta_item_1:10051> : <gregtech:meta_block_compressed_3:3>,
	<gregtech:meta_item_1:10044> : <gregtech:meta_block_compressed_2:12>,
	<gregtech:meta_item_1:10035> : <gregtech:meta_block_compressed_2:3>,
	<gregtech:meta_item_1:10032> : <gregtech:meta_block_compressed_2>,
	<gregtech:meta_item_1:10018> : <gregtech:meta_block_compressed_1:2>,
	<gregtech:meta_item_1:10001> : <gregtech:meta_block_compressed_0:1>,
	<gregtech:meta_item_1:10017> : <gregtech:meta_block_compressed_1:1>,
	<gregtech:meta_item_1:10963> : <gregtech:meta_block_compressed_60:3>,
	<gregtech:meta_item_1:10095> : <gregtech:meta_block_compressed_5:15>,
	<gregtech:meta_item_1:10126> : <gregtech:meta_block_compressed_7:14>,
	<gregtech:meta_item_1:10112> : <gregtech:meta_block_compressed_7>,
	#gems
	<gregtech:meta_item_1:8157> : <gregtech:meta_block_compressed_9:13>,
	<gregtech:meta_item_1:8154> : <gregtech:meta_block_compressed_9:10>,
	#nether star
	<minecraft:nether_star> : <gregtech:meta_block_compressed_20:11>
};

for input,output in CompressorFixAdding {
	compressor.recipeBuilder()
		.inputs(input*9)
		.outputs(output)
		.EUt(2)
		.duration(400)
		.buildAndRegister();
}

//end
#ribbon
assembly_line.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32018>,
			<avaritia:resource:5>,
			<avaritia:endest_pearl>,
			<minecraft:dragon_egg>,
			<gregtech:meta_block_compressed_62:1>,
			<quark:quilted_wool:2>,
			<gregtech:meta_block_compressed_3:4>,
			<gregtech:meta_block_compressed_31:5>,
			<deepmoblearning:infused_ingot_block>,
			<portalgun:item_miniature_black_hole>,
			<extracells:storage.component:3>,
			<extracells:storage.component:10>,
			<minecraft:end_crystal>)
	.outputs(<contenttweaker:ribbon>)
	.fluidInputs(<liquid:crystal>*1000,<liquid:soldering_alloy>*72,<liquid:linoleic_acid>*1000)
	.EUt(131072)
	.duration(10000)
	.buildAndRegister();

	#to memories
bio_reactor.recipeBuilder()
	.inputs(<actuallyadditions:item_crystal_empowered:3>)
	.fluidInputs(<liquid:animal_cells>*7)
	.notConsumable(<contenttweaker:ribbon>)
	.outputs(<contenttweaker:memories>)
	.EUt(8192)
	.duration(1000)
	.buildAndRegister();

#memories to some
	#memories to purematter
uu.recipeBuilder()
	.inputs(<contenttweaker:memories>)
	.fluidOutputs(<liquid:pure_matter>*250)
	.EUt(2048)
	.duration(200)
	.buildAndRegister();
	#to exp
fluid_extractor.recipeBuilder()
	.inputs(<contenttweaker:memories>)
	.fluidInputs(<liquid:xpjuice>*1000)
	.EUt(8192)
	.duration(200)
	.buildAndRegister();

#purematter to some
	#pure matter to matters
large_centrifuge.recipeBuilder()
	.fluidInputs(<liquid:pure_matter>*200)
	.fluidOutputs(<liquid:fermionic_uu_matter>*100,<liquid:bosonic_uu_matter>*100)
	.EUt(2048)
	.duration(500)
	.buildAndRegister();
	#to cosmic neutronium
solidifier.recipeBuilder()
	.fluidInputs(<liquid:pure_matter>*144)
	.notConsumable(<gregtech:meta_item_1:32306>)
	.outputs(<avaritia:resource:4>)
	.EUt(512)
	.duration(100)
	.buildAndRegister();
	#to infinity ctaryst
autoclave.recipeBuilder()
	.fluidInputs(<liquid:pure_matter>*100)
	.inputs(<ore:nuggetCosmicNeutronium>)
	.outputs(<avaritia:resource:5>)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	#to crystal matrix
solidifier.recipeBuilder()
	.inputs(<ore:dustTinyDiamond>)
	.fluidInputs(<liquid:pure_matter>*144)
	.outputs(<avaritia:resource:1>)
	.EUt(2048)
	.duration(400)
	.buildAndRegister();

