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

val mill = RecipeMap.getByName("wiremill");
val packer = RecipeMap.getByName("packer");
val assembler = RecipeMap.getByName("assembler");
val freezer = RecipeMap.getByName("vacuum_freezer");

//make liquid nitorgen from nitrogen
freezer.recipeBuilder()
    .fluidInputs([<liquid:nitrogen>*696])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:3}))
    .fluidOutputs([<liquid:liquid_nitrogen>*1])
    .duration(240)
    .EUt(64)
    .buildAndRegister();

//change recipes of armor
recipes.remove(<powersuits:powerarmor_head>);
recipes.addShaped(<powersuits:powerarmor_head>, [
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>], 
    [<ore:wireFineAnnealedCopper>, <ore:ingotIronMagnetic>, <ore:wireFineAnnealedCopper>]
]);
recipes.remove(<powersuits:powerarmor_torso>);
recipes.addShaped(<powersuits:powerarmor_torso>, [
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>],
    [<ore:wireFineAnnealedCopper>, <ore:plateAluminium>, <ore:wireFineAnnealedCopper>], 
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>]
]);
recipes.remove(<powersuits:powerarmor_legs>);
recipes.addShaped(<powersuits:powerarmor_legs>, [
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>], 
    [<ore:plateAluminium>, <ore:wireFineAnnealedCopper>, <ore:plateAluminium>]
]);
recipes.remove(<powersuits:powerarmor_feet>);
recipes.addShaped(<powersuits:powerarmor_feet>, [
    [<ore:wireFineAnnealedCopper>, <ore:wireFineAnnealedCopper>, <ore:wireFineAnnealedCopper>],
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>], 
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>]
]);

/*
* change material recipes; sorry its so difficult to read
*/

//Servo Motor
recipes.remove(<powersuits:powerarmorcomponent:2>);
recipes.addShaped(<powersuits:powerarmorcomponent:2>, [
    [null, <ore:wireGtSingleAnnealedCopper>, null],
    [null, <gregtech:meta_item_1:32641>, null], 
    [<ore:gearAluminium>, <ore:wireGtSingleAnnealedCopper>, <ore:gearAluminium>]
]);

//Glider Wing
recipes.remove(<powersuits:powerarmorcomponent:3>);
recipes.addShaped(<powersuits:powerarmorcomponent:3>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:wireGtSingleAnnealedCopper>],
    [<ore:plateSilver>, <ore:plateSteel>, null], 
    [<ore:plateSilver>, <ore:plateSteel>, null]
]);

//Ion Thruster
recipes.remove(<powersuits:powerarmorcomponent:4>);
recipes.addShaped(<powersuits:powerarmorcomponent:4>, [
    [<ore:wireGtSingleAnnealedCopper>, <gtadditions:ga_meta_item:32304>, <ore:ingotIronMagnetic>],
    [<ore:wireGtSingleAnnealedCopper>, <ore:dustSodium>, <ore:ingotIronMagnetic>], 
    [<ore:wireGtSingleAnnealedCopper>, <gtadditions:ga_meta_item:32304>, <ore:ingotIronMagnetic>]
]);

//Iron Plating
recipes.remove(<powersuits:powerarmorcomponent:10>);
recipes.addShaped(<powersuits:powerarmorcomponent:10>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, craftingToolHardHammer, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);

//Diamond Plating
recipes.remove(<powersuits:powerarmorcomponent:11>);
recipes.addShaped(<powersuits:powerarmorcomponent:11>, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
    [<ore:plateDiamond>, craftingToolHardHammer, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
]);

//Force Field Emitter
recipes.remove(<powersuits:powerarmorcomponent:12>);
recipes.addShaped(<powersuits:powerarmorcomponent:12>, [
    [<ore:wireGtSingleAnnealedCopper>, <gregtech:meta_item_1:32685>, <ore:wireGtSingleAnnealedCopper>],
    [<ore:plateRhodiumPlatedPalladium>, <ore:dustDiamond>, <ore:plateRhodiumPlatedPalladium>], 
    [<ore:plateRhodiumPlatedPalladium>, <ore:dustDiamond>, <ore:plateRhodiumPlatedPalladium>]
]);

//Remove capacitor for powersuits
val capacitor as IItemStack[] = [ 
    <powersuits:powerarmorcomponent:5>,
    <powersuits:powerarmorcomponent:6>,
    <powersuits:powerarmorcomponent:7>,
    <powersuits:powerarmorcomponent:8>
];
for i in capacitor {
    recipes.remove(i);
}

<powersuits:powerarmorcomponent:8>.displayName = "Ultimate Capacitor";

//Parachute
recipes.remove(<powersuits:powerarmorcomponent:9>);
recipes.addShaped(<powersuits:powerarmorcomponent:9>, [
    [<minecraft:carpet>, <minecraft:carpet>, <minecraft:carpet>],
    [<minecraft:string>, null, <minecraft:string>], 
    [<minecraft:wool>, <minecraft:string>, <minecraft:wool>]
]);

//Hologram Emitter
recipes.remove(<powersuits:powerarmorcomponent:13>);
recipes.addShaped(<powersuits:powerarmorcomponent:13>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:dyeGreen>, <gregtech:meta_item_1:32682>, <ore:dyeGreen>], 
    [<ore:blockGlassHardened>, <gregtech:meta_item_1:32682>, <ore:blockGlassHardened>]
]);

//Control Circuit
recipes.remove(<powersuits:powerarmorcomponent:15>);
recipes.addShaped(<powersuits:powerarmorcomponent:15>, [
    [<gregtech:cable:87>, <gregtech:meta_item_1:12033>, <gregtech:cable:87>],
    [<minecraft:dye:2>, <ore:circuitGood>, <minecraft:dye:2>], 
    [<minecraft:dye:2>, <gregtech:cable:87>, <minecraft:dye:2>]
]);

//Solar Panel
recipes.remove(<powersuits:powerarmorcomponent:18>);
recipes.addShaped(<powersuits:powerarmorcomponent:18>, [
    [<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>],
    [<gregtech:meta_item_1:32752>, <gtadditions:ga_meta_item:32030>, <gregtech:meta_item_1:32752>], 
    [<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>]
]);

//Magnet
recipes.remove(<powersuits:powerarmorcomponent:19>);
recipes.addShaped(<powersuits:powerarmorcomponent:19>, [
    [<gregtech:cable:87>, <gregtech:meta_item_1:10297>, <gregtech:cable:87>],
    [<gregtech:cable:87>, <gregtech:meta_item_1:32671>, <gregtech:cable:87>], 
    [<gregtech:cable:87>, <gregtech:meta_item_1:10297>, <gregtech:cable:87>]
]);

//Computer Chip
recipes.remove(<powersuits:powerarmorcomponent:20>);
recipes.addShaped(<powersuits:powerarmorcomponent:20>, [
    [<ore:circuitGood>, <minecraft:dye:2>, <ore:circuitGood>],
    [<minecraft:dye:2>, <gtadditions:ga_meta_item:32030>, <minecraft:dye:2>], 
    [<gregtech:cable:87>, <gregtech:cable:87>, <gregtech:cable:87>]
]);

//Insulated Rubber Hose
recipes.remove(<powersuits:powerarmorcomponent:21>);
recipes.addShaped(<powersuits:powerarmorcomponent:21>, [
    [<gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>], 
    [<gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>]
]);

// Power Armor Tinker Table
recipes.remove(<powersuits:tinkertable>);
recipes.addShaped(<powersuits:tinkertable>, [
    [<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
    [<gregtech:meta_item_1:10184>, <tconstruct:toolforge>, <gregtech:meta_item_1:10184>],
    [<gregtech:meta_item_1:10184>, <minecraft:emerald>, <gregtech:meta_item_1:10184>]
]);

//Power Fist
recipes.remove(<powersuits:power_fist>);
assembler.recipeBuilder()
	.inputs(<ore:plateAluminium>*2,<ore:wireFineAnnealedCopper>,<gregtech:meta_item_1:32500>,<ore:ingotIronMagnetic>*2)
	.outputs(<powersuits:power_fist>)
	.duration(200)
	.EUt(512)
	.buildAndRegister();

assembler.recipeBuilder()
	.inputs(<ore:blockWoolGreen>*2,<ore:wireGtSingleAnnealedCopper>*4,<ore:plateIron>*2,<ore:LVbattery>)
	.outputs(<ore:componentLVCapacitor>.firstItem*1)
	.duration(200)
	.EUt(16)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:blockWoolRed>*2,<ore:wireGtSingleAnnealedCopper>*4,<ore:plateIron>*2,<ore:MVbattery>)
	.outputs(<ore:componentMVCapacitor>.firstItem*1)
	.duration(200)
	.EUt(128)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:woolLightBlue>*2,<ore:wireGtSingleAnnealedCopper>*4,<ore:plateIron>*2,<ore:HVbattery>,<ore:dustDiamond>*2)
	.outputs(<ore:componentHVCapacitor>.firstItem*1)
	.duration(200)
	.EUt(512)
	.buildAndRegister();
assembler.recipeBuilder()
	.inputs(<ore:woolLightBlue>*2,<ore:wireGtSingleHssg>*4,<ore:plateIron>*2,<gregtech:meta_item_1:32605>,<ore:dustDiamond>*2)
	.outputs(<ore:componentEVCapacitor>.firstItem*1)
	.duration(200)
	.EUt(524288)
	.buildAndRegister();

//Schematic (3x3)
packer.findRecipe(4,[<minecraft:coal_block>*9,<gtadditions:ga_meta_item:32133>],[]).remove();
packer.findRecipe(4,[<powersuits:powerarmorcomponent:14>*9,<gtadditions:ga_meta_item:32133>],[]).remove();
