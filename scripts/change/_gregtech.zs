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

val blast_furnace = RecipeMap.getByName("blast_furnace");
val hammer = RecipeMap.getByName("forge_hammer");
val compressor = RecipeMap.getByName("compressor");
val macerator = RecipeMap.getByName("macerator");
val assembler = RecipeMap.getByName("assembler");
val alloy = RecipeMap.getByName("alloy_smelter");
val extractor = RecipeMap.getByName("extractor");
val lathe = RecipeMap.getByName("lathe");
val canner = RecipeMap.getByName("canner");
val fluid_canner = RecipeMap.getByName("fluid_canner");
val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val freezer = RecipeMap.getByName("vacuum_freezer");
val mixer = RecipeMap.getByName("mixer");
val thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val sifter = RecipeMap.getByName("sifter");
val autoclave = RecipeMap.getByName("autoclave");
val reactor = RecipeMap.getByName("chemical_reactor");
val solidifier = RecipeMap.getByName("fluid_solidifier");
val saw = RecipeMap.getByName("cutting_saw");
val forming = RecipeMap.getByName("forming_press");
val electrolyzer = RecipeMap.getByName("electrolyzer");
val circuit_assembler = RecipeMap.getByName("circuit_assembler");
val implosion = RecipeMap.getByName("implosion_compressor");
val engraver = RecipeMap.getByName("laser_engraver");
val attractor = RecipeMap.getByName("attractor");
val packer = RecipeMap.getByName("packer");
val unpacker = RecipeMap.getByName("unpacker");
val arc = RecipeMap.getByName("arc_furnace");
val plasma_arc = RecipeMap.getByName("plasma_arc_furnace");
val bath = RecipeMap.getByName("chemical_bath");
val mill = RecipeMap.getByName("wiremill");
val centrifuge = RecipeMap.getByName("centrifuge");
val metal_bender = RecipeMap.getByName("metal_bender");
val extruder = RecipeMap.getByName("extruder");
val gas_turbine as RecipeMap = RecipeMap.getByName("gas_turbine");
val steam_turbine as RecipeMap = RecipeMap.getByName("steam_turbine");
val diesel_generator as RecipeMap = RecipeMap.getByName("diesel_generator");
val plasma_generator as RecipeMap = RecipeMap.getByName("plasma_generator");
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


//remove chest from gregtech
val chest =[
    <gregtech:machine:802>,
    <gregtech:machine:803>,
    <gregtech:machine:804>,
    <gregtech:machine:805>,
    <gregtech:machine:806>,
    <gregtech:machine:807>,
    <gregtech:machine:808>,
] as IItemStack[];

for i in chest {
    JEI.removeAndHide(i);
}
//remove tank form gregtech use drum
val tank = [
    <gregtech:machine:811>,
    <gregtech:machine:812>,
    <gregtech:machine:813>,
    <gregtech:machine:814>,
    <gregtech:machine:815>,
    <gregtech:machine:816>,
] as IItemStack[];

for i in tank {
    JEI.removeAndHide(i);
}

//Remove LV Thermal Centrifuge
mods.jei.JEI.removeAndHide(<gregtech:machine:460>);

//remove basic laser engraver
mods.jei.JEI.removeAndHide(<gregtech:machine:430>);

//add recipe to ender pearl liquid
recipes.remove(<minecraft:ender_pearl>);

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
electrolyzer.findRecipe(60, [<ore:dustZeolite>.firstItem*141],[]).remove();
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

//add recipes bronze machine casing to steel
assembler.recipeBuilder()
	.inputs(<gregtech:metal_casing>, <ore:plateSteel>*2)
	.outputs(<gregtech:metal_casing:4>)
	.duration(60)
	.EUt(8)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:boiler_firebox_casing>, <ore:plateSteel>*2)
	.outputs(<gregtech:boiler_firebox_casing:1>)
	.duration(60)
	.EUt(8)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gregtech:boiler_casing>, <ore:plateSteel>*5)
	.outputs(<gregtech:boiler_casing:1>)
	.duration(60)
	.EUt(8)
	.buildAndRegister();
//Turbine recipes same as boillar
assembler.recipeBuilder()
	.inputs(<gregtech:turbine_casing:5>, <ore:plateTitanium>*2)
	.outputs(<gregtech:turbine_casing:4>)
	.duration(100)
	.EUt(8)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<gregtech:turbine_casing:4>, <ore:plateTungstenSteel>*2)
	.outputs(<gregtech:turbine_casing:6>)
	.duration(150)
	.EUt(8)
	.buildAndRegister();
//drums to dusts
macerator.recipeBuilder()
    .inputs(<gregtech:machine:2196>)
	.outputs(<ore:dustBronze>.firstItem*6)
    .duration(30)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:machine:2198>)
	.outputs(<ore:dustStainlessSteel>.firstItem*6)
    .duration(30)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:machine:2197>)
	.outputs(<ore:dustSteel>.firstItem*6)
    .duration(30)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:machine:2199>)
	.outputs(<ore:dustTitanium>.firstItem*6)
    .duration(30)
    .EUt(8)
    .buildAndRegister();

macerator.recipeBuilder()
    .inputs(<gregtech:machine:2200>)
	.outputs(<ore:dustTungstenSteel>.firstItem*6)
    .duration(30)
    .EUt(8)
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
//concrete to cement
recipes.addShapeless(<railcraft:concrete>,[<gregtech:meta_item_1:16196>,<gregtech:meta_item_1:2296>,<gregtech:meta_item_1:16196>]);
//concrete to sherd
recipes.addShapeless(<tconstruct:soil>*4,[<gregtech:meta_item_1:2296>,<gregtech:meta_item_1:2296>,<gregtech:meta_item_1:2296>,<gregtech:meta_item_1:2296>]);
//resin to rubber
reactor.recipeBuilder()
	.inputs(<ore:dustSulfur>)
	.fluidInputs([<liquid:resin>*100])
	.fluidOutputs([<liquid:rubber>*900])
    .duration(400)
    .EUt(20)
    .buildAndRegister();
#cryotheum helps cool-downing hot ingots
freezer.recipeBuilder()
	.inputs(<ore:ingotHotErbium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotErbium>.firstItem)
	.duration(56)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotBlackBronze>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotBlackBronze>.firstItem)
	.duration(62)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotNaquadahEnriched>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNaquadahEnriched>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotNaquadahAlloy>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNaquadahAlloy>.firstItem)
	.duration(225)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotYttriumBariumCuprate>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotYttriumBariumCuprate>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotOsmiridium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotOsmiridium>.firstItem)
	.duration(78)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotEnderium>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotEnderium>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotYttrium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotYttrium>.firstItem)
	.duration(56)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotVanadiumGallium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotVanadiumGallium>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotVanadium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotVanadium>.firstItem)
	.duration(280)
	.EUt(68)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotUltimet>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotUltimet>.firstItem)
	.duration(84)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotTungstenSteel>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotTungstenSteel>.firstItem)
	.duration(93)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotHssg>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotHssg>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotHsse>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotHsse>.firstItem)
	.duration(168)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotOsmium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotOsmium>.firstItem)
	.duration(103)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotScandium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotScandium>.firstItem)
	.duration(56)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotHsss>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotHsss>.firstItem)
	.duration(168)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotNiobiumTitanium>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNiobiumTitanium>.firstItem)
	.duration(140)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotNiobiumNitride>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNiobiumNitride>.firstItem)
	.duration(80)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotLutetium>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotLutetium>.firstItem)
	.duration(60)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotIridium>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotIridium>.firstItem)
	.duration(84)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotKanthal>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotKanthal>.firstItem)
	.duration(56)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()
	.inputs(<ore:ingotHotNaquadah>)	
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNaquadah>.firstItem)
	.duration(168)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotNaquadria>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNaquadria>.firstItem)
	.duration(281)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotTungsten>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotTungsten>.firstItem)
	.duration(93)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotThulium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotThulium>.firstItem)
	.duration(56)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotTitanium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotTitanium>.firstItem)
	.duration(60)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotNichrome>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNichrome>.firstItem)
	.duration(84)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotTungstenCarbide>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotTungstenCarbide>.firstItem)
	.duration(76)
	.EUt(32)
	.buildAndRegister();
freezer.recipeBuilder()	
	.inputs(<ore:ingotHotNiobium>)
	.fluidInputs([<liquid:cryotheum>*10])
	.outputs(<ore:ingotNiobium>.firstItem)
	.duration(85)
	.EUt(32)
	.buildAndRegister();
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
	.EUt(540000)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:13>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32687>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_chestplate>)
	.duration(6000)
	.EUt(540000)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:5>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32608>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_leggings>)
	.duration(6000)
	.EUt(540000)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_armor:7>,<gtadditions:ga_meta_item2:7>*2,<gregtech:meta_item_1:12745>*8,<gregtech:meta_item_1:32647>,<ore:circuitSuperconductor>*4,<gregtech:meta_item_1:32677>*2)
	.outputs(<overloaded:multi_boots>)
	.duration(6000)
	.EUt(540000)
	.buildAndRegister();
	#railguns
assembler.recipeBuilder()
	.inputs(<gtadditions:ga_meta_item:32372>*3,<gtadditions:ga_meta_item:32378>*5,<gtadditions:ga_meta_item:32354>*6,<ore:circuitInfinite>*6,<gtadditions:ga_meta_item2:2>*2,<ore:ingotDoubleUhvSuperconductorBase>*2)
	.fluidInputs([<liquid:cryotheum>*8000])
	.outputs(<overloaded:railgun>)
	.duration(6000)
	.EUt(640000)
	.buildAndRegister();
//drum recipes fix
	#TungstenSteel Drum
recipes.addShaped(<gregtech:machine:2200>, [
	[<ore:boltTungstenSteel>, <ore:plateTungstenSteel>, <ore:boltTungstenSteel>],
    [<ore:plateTungstenSteel>, <ore:stickLongTungstenSteel>, <ore:plateTungstenSteel>], 
    [<ore:boltTungstenSteel>, <ore:plateTungstenSteel>, <ore:boltTungstenSteel>]
]);
	#Titanium Drum
recipes.addShaped(<gregtech:machine:2199>, [
	[<ore:boltTriniumTitanium>, <ore:plateTitanium>, <ore:boltTriniumTitanium>],
    [<ore:plateTitanium>, <ore:stickLongTitanium>, <ore:plateTitanium>], 
    [<ore:boltTriniumTitanium>, <ore:plateTitanium>, <ore:boltTriniumTitanium>]
]);
	#Stainless Steel Drum
recipes.addShaped(<gregtech:machine:2198>, [
	[<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>],
    [<ore:plateStainlessSteel>, <ore:stickLongStainlessSteel>, <ore:plateStainlessSteel>], 
    [<ore:boltStainlessSteel>, <ore:plateStainlessSteel>, <ore:boltStainlessSteel>]
]);
	#Steel Drum
recipes.addShaped(<gregtech:machine:2197>, [
	[<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>],
    [<ore:plateSteel>, <ore:stickLongSteel>, <ore:plateSteel>], 
    [<ore:boltSteel>, <ore:plateSteel>, <ore:boltSteel>]
]);
	#Bronze Drum
recipes.addShaped(<gregtech:machine:2196>, [
	[<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>],
    [<ore:plateBronze>, <ore:stickLongBronze>, <ore:plateBronze>], 
    [<ore:boltBronze>, <ore:plateBronze>, <ore:boltBronze>]
]);
	#in assembler
assembler.recipeBuilder()
	.inputs(<ore:stickLongTungstenSteel>*2, <ore:plateTungstenSteel>*4)
	.outputs(<gregtech:machine:2200>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:stickLongTitanium>*2, <ore:plateTitanium>*4)
	.outputs(<gregtech:machine:2199>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:stickLongStainlessSteel>*2, <ore:plateStainlessSteel>*4)
	.outputs(<gregtech:machine:2198>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:stickLongSteel>*2, <ore:plateSteel>*4)
	.outputs(<gregtech:machine:2197>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:stickLongBronze>*2, <ore:plateBronze>*4)
	.outputs(<gregtech:machine:2196>)
	.duration(80)
	.EUt(18)
	.buildAndRegister();
//fix compressed recipes
	#ruby
compressor.findRecipe(2,[<projectred-core:resource_item:200>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:gemRuby>*9)
	.outputs(<ore:blockRuby>.firstItem)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
hammer.findRecipe(24,[<projectred-exploration:stone:5>],null).remove();
hammer.recipeBuilder()
	.inputs(<ore:blockRuby>)
	.outputs(<ore:gemRuby>.firstItem*9)
	.duration(100)
	.EUt(24)
	.buildAndRegister();
large_forge_hammer.recipeBuilder()
	.inputs(<ore:blockRuby>)
	.fluidInputs([<liquid:lubricant>*2])
	.outputs(<ore:gemRuby>.firstItem*9)
	.duration(100)
	.EUt(24)
	.buildAndRegister();
	#sapphire
compressor.findRecipe(2,[<projectred-core:resource_item:201>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:gemSapphire>*9)
	.outputs(<ore:blockSapphire>.firstItem)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
hammer.findRecipe(24,[<projectred-exploration:stone:6>],null).remove();
hammer.recipeBuilder()
	.inputs(<ore:blockSapphire>)
	.outputs(<ore:gemSapphire>.firstItem*9)
	.duration(100)
	.EUt(24)
	.buildAndRegister();
large_forge_hammer.recipeBuilder()
	.inputs(<ore:blockSapphire>)
	.fluidInputs([<liquid:lubricant>*2])
	.outputs(<ore:gemSapphire>.firstItem*9)
	.duration(100)
	.EUt(24)
	.buildAndRegister();
	#cobalt
compressor.findRecipe(2,[<tconstruct:ingots>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotCobalt>*9)
	.outputs(<gregtech:compressed_0:14>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#copper
compressor.findRecipe(2,[<thermalfoundation:material:128>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotCopper>*9)
	.outputs(<gregtech:compressed_0:15>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#bronze
compressor.findRecipe(2,[<thermalfoundation:material:163>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotBronze>*9)
	.outputs(<gregtech:compressed_4:10>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#lead
compressor.recipeBuilder()
	.inputs(<ore:ingotLead>*9)
	.outputs(<gregtech:compressed_1:9>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#silver
compressor.findRecipe(2,[<thermalfoundation:material:130>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotSilver>*9)
	.outputs(<gregtech:compressed_3>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#electrum
compressor.findRecipe(2,[<thermalfoundation:material:161>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotElectrum>*9)
	.outputs(<gregtech:compressed_5:7>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#steel
compressor.recipeBuilder()
	.inputs(<ore:ingotSteel>*9)
	.outputs(<gregtech:compressed_8:4>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#Tin
compressor.findRecipe(2,[<thermalfoundation:material:129>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotTin>*9)
	.outputs(<gregtech:compressed_3:9>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#nickel
compressor.findRecipe(2,[<thermalfoundation:material:133>*9],null).remove();
compressor.recipeBuilder()
	.inputs(<ore:ingotNickel>*9)
	.outputs(<gregtech:compressed_2:1>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();
	#Aluminium
compressor.recipeBuilder()
	.inputs(<ore:ingotAluminium>*9)
	.outputs(<gregtech:compressed_0>)
	.duration(400)
	.EUt(2)
	.buildAndRegister();

//cable from rubber foil and wire
	#rubber foil IItemStack
val rubber as IItemStack = <ore:foilRubber>.firstItem;
	#1x cable
val CableSingleFix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtSingleAnnealedCopper> : <ore:cableGtSingleAnnealedCopper>,
    <ore:wireGtSingleCopper> : <ore:cableGtSingleCopper>,
    <ore:wireGtSingleCupronickel> : <ore:cableGtSingleCupronickel>,
    <ore:wireGtSingleIron> : <ore:cableGtSingleIron>,
    <ore:wireGtSingleMvSuperconductor> : <ore:cableGtSingleMvSuperconductor>,
    <ore:wireGtSingleMvSuperconductorBase> : <ore:cableGtSingleMvSuperconductorBase>,
    <ore:wireGtSingleNickel> : <ore:cableGtSingleNickel>,
    <ore:wireGtSingleElectrum> : <ore:cableGtSingleElectrum>,
    <ore:wireGtSingleGold> : <ore:cableGtSingleGold>,
    <ore:wireGtSingleHvSuperconductor> : <ore:cableGtSingleHvSuperconductor>,
    <ore:wireGtSingleHvSuperconductorBase> : <ore:cableGtSingleHvSuperconductorBase>,
    <ore:wireGtSingleKanthal> : <ore:cableGtSingleKanthal>,
    <ore:wireGtSingleSilver> : <ore:cableGtSingleSilver>,
};

for input, output in CableSingleFix {
	assembler.recipeBuilder()
		.inputs(input.firstItem,rubber)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

	#2x cable
val CableDoubleFix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtDoubleAnnealedCopper> : <ore:cableGtDoubleAnnealedCopper>,
    <ore:wireGtDoubleCopper> : <ore:cableGtDoubleCopper>,
    <ore:wireGtDoubleCupronickel> : <ore:cableGtDoubleCupronickel>,
    <ore:wireGtDoubleIron> : <ore:cableGtDoubleIron>,
    <ore:wireGtDoubleMvSuperconductor> : <ore:cableGtDoubleMvSuperconductor>,
    <ore:wireGtDoubleMvSuperconductorBase> : <ore:cableGtDoubleMvSuperconductorBase>,
    <ore:wireGtDoubleNickel> : <ore:cableGtDoubleNickel>,
    <ore:wireGtDoubleElectrum> : <ore:cableGtDoubleElectrum>,
    <ore:wireGtDoubleGold> : <ore:cableGtDoubleGold>,
    <ore:wireGtDoubleHvSuperconductor> : <ore:cableGtDoubleHvSuperconductor>,
    <ore:wireGtDoubleHvSuperconductorBase> : <ore:cableGtDoubleHvSuperconductorBase>,
    <ore:wireGtDoubleKanthal> : <ore:cableGtDoubleKanthal>,
    <ore:wireGtDoubleSilver> : <ore:cableGtDoubleSilver>,
};

for input, output in CableDoubleFix {
	assembler.recipeBuilder()
		.inputs(input.firstItem,rubber*2)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

val CableDouble2Fix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtSingleAnnealedCopper> : <ore:cableGtDoubleAnnealedCopper>,
    <ore:wireGtSingleCopper> : <ore:cableGtDoubleCopper>,
    <ore:wireGtSingleCupronickel> : <ore:cableGtDoubleCupronickel>,
    <ore:wireGtSingleIron> : <ore:cableGtDoubleIron>,
    <ore:wireGtSingleMvSuperconductor> : <ore:cableGtDoubleMvSuperconductor>,
    <ore:wireGtSingleMvSuperconductorBase> : <ore:cableGtDoubleMvSuperconductorBase>,
    <ore:wireGtSingleNickel> : <ore:cableGtDoubleNickel>,
    <ore:wireGtSingleElectrum> : <ore:cableGtDoubleElectrum>,
    <ore:wireGtSingleGold> : <ore:cableGtDoubleGold>,
    <ore:wireGtSingleHvSuperconductor> : <ore:cableGtDoubleHvSuperconductor>,
    <ore:wireGtSingleHvSuperconductorBase> : <ore:cableGtDoubleHvSuperconductorBase>,
    <ore:wireGtSingleKanthal> : <ore:cableGtDoubleKanthal>,
    <ore:wireGtSingleSilver> : <ore:cableGtDoubleSilver>,
};

for input, output in CableDouble2Fix {
	assembler.recipeBuilder()
		.inputs(input.firstItem*2,rubber*2)
		.property("circuit", 25)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

	#4x cable
val CableQuadrupleFix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtQuadrupleAnnealedCopper> : <ore:cableGtQuadrupleAnnealedCopper>,
    <ore:wireGtQuadrupleCopper> : <ore:cableGtQuadrupleCopper>,
    <ore:wireGtQuadrupleCupronickel> : <ore:cableGtQuadrupleCupronickel>,
    <ore:wireGtQuadrupleIron> : <ore:cableGtQuadrupleIron>,
    <ore:wireGtQuadrupleMvSuperconductor> : <ore:cableGtQuadrupleMvSuperconductor>,
    <ore:wireGtQuadrupleMvSuperconductorBase> : <ore:cableGtQuadrupleMvSuperconductorBase>,
    <ore:wireGtQuadrupleNickel> : <ore:cableGtQuadrupleNickel>,
    <ore:wireGtQuadrupleElectrum> : <ore:cableGtQuadrupleElectrum>,
    <ore:wireGtQuadrupleGold> : <ore:cableGtQuadrupleGold>,
    <ore:wireGtQuadrupleHvSuperconductor> : <ore:cableGtQuadrupleHvSuperconductor>,
    <ore:wireGtQuadrupleHvSuperconductorBase> : <ore:cableGtQuadrupleHvSuperconductorBase>,
    <ore:wireGtQuadrupleKanthal> : <ore:cableGtQuadrupleKanthal>,
    <ore:wireGtQuadrupleSilver> : <ore:cableGtQuadrupleSilver>,
};

for input, output in CableQuadrupleFix {
	assembler.recipeBuilder()
		.inputs(input.firstItem,rubber*4)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

val CableQuadruple4Fix as IOreDictEntry[IOreDictEntry] = {
	<ore:wireGtSingleAnnealedCopper> : <ore:cableGtQuadrupleAnnealedCopper>,
	<ore:wireGtSingleCopper> : <ore:cableGtQuadrupleCopper>,
	<ore:wireGtSingleCupronickel> : <ore:cableGtQuadrupleCupronickel>,
	<ore:wireGtSingleIron> : <ore:cableGtQuadrupleIron>,
	<ore:wireGtSingleMvSuperconductor> : <ore:cableGtQuadrupleMvSuperconductor>,
	<ore:wireGtSingleMvSuperconductorBase> : <ore:cableGtQuadrupleMvSuperconductorBase>,
	<ore:wireGtSingleNickel> : <ore:cableGtQuadrupleNickel>,
	<ore:wireGtSingleElectrum> : <ore:cableGtQuadrupleElectrum>,
	<ore:wireGtSingleGold> : <ore:cableGtQuadrupleGold>,
	<ore:wireGtSingleHvSuperconductor> : <ore:cableGtQuadrupleHvSuperconductor>,
	<ore:wireGtSingleHvSuperconductorBase> : <ore:cableGtQuadrupleHvSuperconductorBase>,
	<ore:wireGtSingleKanthal> : <ore:cableGtQuadrupleKanthal>,
	<ore:wireGtSingleSilver> : <ore:cableGtQuadrupleSilver>,
};

for input, output in CableQuadruple4Fix {
	assembler.recipeBuilder()
		.inputs(input.firstItem*4,rubber*4)
		.property("circuit", 25)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

	#8x cable
val CableOctalFix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtOctalAnnealedCopper> : <ore:cableGtOctalAnnealedCopper>,
    <ore:wireGtOctalCopper> : <ore:cableGtOctalCopper>,
    <ore:wireGtOctalCupronickel> : <ore:cableGtOctalCupronickel>,
    <ore:wireGtOctalIron> : <ore:cableGtOctalIron>,
    <ore:wireGtOctalMvSuperconductor> : <ore:cableGtOctalMvSuperconductor>,
    <ore:wireGtOctalMvSuperconductorBase> : <ore:cableGtOctalMvSuperconductorBase>,
    <ore:wireGtOctalNickel> : <ore:cableGtOctalNickel>,
    <ore:wireGtOctalElectrum> : <ore:cableGtOctalElectrum>,
    <ore:wireGtOctalGold> : <ore:cableGtOctalGold>,
    <ore:wireGtOctalHvSuperconductor> : <ore:cableGtOctalHvSuperconductor>,
    <ore:wireGtOctalHvSuperconductorBase> : <ore:cableGtOctalHvSuperconductorBase>,
    <ore:wireGtOctalKanthal> : <ore:cableGtOctalKanthal>,
    <ore:wireGtOctalSilver> : <ore:cableGtOctalSilver>,
};

for input, output in CableOctalFix {
	assembler.recipeBuilder()
		.inputs(input.firstItem,rubber*8)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}
val CableOctal8Fix as IOreDictEntry[IOreDictEntry] ={
	<ore:wireGtSingleAnnealedCopper> : <ore:cableGtOctalAnnealedCopper>,
	<ore:wireGtSingleCopper> : <ore:cableGtOctalCopper>,
	<ore:wireGtSingleCupronickel> : <ore:cableGtOctalCupronickel>,
	<ore:wireGtSingleIron> : <ore:cableGtOctalIron>,
	<ore:wireGtSingleMvSuperconductor> : <ore:cableGtOctalMvSuperconductor>,
	<ore:wireGtSingleMvSuperconductorBase> : <ore:cableGtOctalMvSuperconductorBase>,
	<ore:wireGtSingleNickel> : <ore:cableGtOctalNickel>,
	<ore:wireGtSingleElectrum> : <ore:cableGtOctalElectrum>,
	<ore:wireGtSingleGold> : <ore:cableGtOctalGold>,
	<ore:wireGtSingleHvSuperconductor> : <ore:cableGtOctalHvSuperconductor>,
	<ore:wireGtSingleHvSuperconductorBase> : <ore:cableGtOctalHvSuperconductorBase>,
	<ore:wireGtSingleKanthal> : <ore:cableGtOctalKanthal>,
	<ore:wireGtSingleSilver> : <ore:cableGtOctalSilver>,
};

for input, output in CableOctal8Fix {
	assembler.recipeBuilder()
		.inputs(input.firstItem*8,rubber*8)
		.property("circuit", 25)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

	#x16 cable
val CableHexFix as IOreDictEntry[IOreDictEntry] = {
    <ore:wireGtHexAnnealedCopper> : <ore:cableGtHexAnnealedCopper>,
    <ore:wireGtHexCopper> : <ore:cableGtHexCopper>,
    <ore:wireGtHexCupronickel> : <ore:cableGtHexCupronickel>,
    <ore:wireGtHexIron> : <ore:cableGtHexIron>,
    <ore:wireGtHexMvSuperconductor> : <ore:cableGtHexMvSuperconductor>,
    <ore:wireGtHexMvSuperconductorBase> : <ore:cableGtHexMvSuperconductorBase>,
    <ore:wireGtHexNickel> : <ore:cableGtHexNickel>,
    <ore:wireGtHexElectrum> : <ore:cableGtHexElectrum>,
    <ore:wireGtHexGold> : <ore:cableGtHexGold>,
    <ore:wireGtHexHvSuperconductor> : <ore:cableGtHexHvSuperconductor>,
    <ore:wireGtHexHvSuperconductorBase> : <ore:cableGtHexHvSuperconductorBase>,
    <ore:wireGtHexKanthal> : <ore:cableGtHexKanthal>,
    <ore:wireGtHexSilver> : <ore:cableGtHexSilver>,
};

for input, output in CableHexFix {
	assembler.recipeBuilder()
		.inputs(input.firstItem,rubber*16)
		.property("circuit", 24)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}

val CableHex16Fix as IOreDictEntry[IOreDictEntry] = {
	<ore:wireGtSingleAnnealedCopper> : <ore:cableGtHexAnnealedCopper>,
	<ore:wireGtSingleCopper> : <ore:cableGtHexCopper>,
	<ore:wireGtSingleCupronickel> : <ore:cableGtHexCupronickel>,
	<ore:wireGtSingleIron> : <ore:cableGtHexIron>,
	<ore:wireGtSingleMvSuperconductor> : <ore:cableGtHexMvSuperconductor>,
	<ore:wireGtSingleMvSuperconductorBase> : <ore:cableGtHexMvSuperconductorBase>,
	<ore:wireGtSingleNickel> : <ore:cableGtHexNickel>,
	<ore:wireGtSingleElectrum> : <ore:cableGtHexElectrum>,
	<ore:wireGtSingleGold> : <ore:cableGtHexGold>,
	<ore:wireGtSingleHvSuperconductor> : <ore:cableGtHexHvSuperconductor>,
	<ore:wireGtSingleHvSuperconductorBase> : <ore:cableGtHexHvSuperconductorBase>,
	<ore:wireGtSingleKanthal> : <ore:cableGtHexKanthal>,
	<ore:wireGtSingleSilver> : <ore:cableGtHexSilver>,
};

for input, output in CableHex16Fix {
	assembler.recipeBuilder()
		.inputs(input.firstItem*16,rubber*16)
		.property("circuit", 25)
		.outputs(output.firstItem)
		.duration(150)
		.EUt(8)
		.buildAndRegister();
}
