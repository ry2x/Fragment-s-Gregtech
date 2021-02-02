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
//import JEI function
import mods.jei.JEI;

val mill = RecipeMap.getByName("wiremill");
val packer = RecipeMap.getByName("packer");
val assembler = RecipeMap.getByName("assembler");

//hide and remove useless liquid
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000}));
JEI.hide(<liquid:liquid_nitrogen>);

//hide and remove useless items
val useless as IItemStack[] = [
    <powersuits:powerarmorcomponent>,
    <powersuits:powerarmorcomponent:1>
];

for i in useless {
    JEI.removeAndHide(i);
}

//change recipes of armer
recipes.remove(<powersuits:powerarmor_feet>);
recipes.remove(<powersuits:powerarmor_legs>);
recipes.remove(<powersuits:powerarmor_torso>);
recipes.remove(<powersuits:powerarmor_head>);
recipes.addShaped(<powersuits:powerarmor_feet>, [
    [<ore:wireFineAnnealedCopper>, <ore:wireFineAnnealedCopper>, <ore:wireFineAnnealedCopper>],
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>], 
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>]
]);
recipes.addShaped(<powersuits:powerarmor_legs>, [
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>], 
    [<ore:plateAluminium>, <ore:wireFineAnnealedCopper>, <ore:plateAluminium>]
]);
recipes.addShaped(<powersuits:powerarmor_torso>, [
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>],
    [<ore:wireFineAnnealedCopper>, <ore:plateAluminium>, <ore:wireFineAnnealedCopper>], 
    [<ore:plateAluminium>, <ore:ingotIronMagnetic>, <ore:plateAluminium>]
]);
recipes.addShaped(<powersuits:powerarmor_head>, [
    [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
    [<ore:plateAluminium>, <gregtech:meta_item_1:32500>, <ore:plateAluminium>], 
    [<ore:wireFineAnnealedCopper>, <ore:ingotIronMagnetic>, <ore:wireFineAnnealedCopper>]
]);

//change meterial recipes sorry its so difficult to read 
recipes.remove(<powersuits:powerarmorcomponent:2>);
recipes.addShaped(<powersuits:powerarmorcomponent:2>, [
    [null, <ore:wireGtSingleAnnealedCopper>, null],
    [null, <gregtech:meta_item_1:32641>, null], 
    [<ore:gearAluminium>, <ore:wireGtSingleAnnealedCopper>, <ore:gearAluminium>]
]);
recipes.remove(<powersuits:powerarmorcomponent:12>);
recipes.remove(<powersuits:powerarmorcomponent:4>);
recipes.remove(<powersuits:powerarmorcomponent:3>);
recipes.addShaped(<powersuits:powerarmorcomponent:4>, [
    [<ore:wireGtSingleAnnealedCopper>, <gtadditions:ga_meta_item:32304>, <ore:ingotIronMagnetic>],
    [<ore:wireGtSingleAnnealedCopper>, <ore:dustSodium>, <ore:ingotIronMagnetic>], 
    [<ore:wireGtSingleAnnealedCopper>, <gtadditions:ga_meta_item:32304>, <ore:ingotIronMagnetic>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:12>, [
    [<ore:wireGtSingleAnnealedCopper>, <gregtech:meta_item_1:32685>, <ore:wireGtSingleAnnealedCopper>],
    [<ore:plateRhodiumPlatedPalladium>, <ore:dustDiamond>, <ore:plateRhodiumPlatedPalladium>], 
    [<ore:plateRhodiumPlatedPalladium>, <ore:dustDiamond>, <ore:plateRhodiumPlatedPalladium>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:3>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:wireGtSingleAnnealedCopper>],
    [<ore:plateSilver>, <ore:plateSteel>, null], 
    [<ore:plateSilver>, <ore:plateSteel>, null]
]);
recipes.remove(<powersuits:powerarmorcomponent:10>);
recipes.remove(<powersuits:powerarmorcomponent:11>);
recipes.addShaped(<powersuits:powerarmorcomponent:10>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, craftingToolHardHammer, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:11>, [
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>],
    [<ore:plateDiamond>, craftingToolHardHammer, <ore:plateDiamond>], 
    [<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>]
]);
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

JEI.removeAndHide(<powersuits:powerarmorcomponent:14>);
JEI.removeAndHide(<powersuits:powerarmorcomponent:17>);

JEI.removeAndHide(<ore:componentMyofiberGel>);

recipes.remove(<powersuits:powerarmorcomponent:18>);
recipes.remove(<powersuits:powerarmorcomponent:21>);
recipes.remove(<powersuits:powerarmorcomponent:19>);
recipes.remove(<powersuits:powerarmorcomponent:20>);
recipes.remove(<powersuits:powerarmorcomponent:15>);
recipes.remove(<powersuits:powerarmorcomponent:9>);
recipes.remove(<powersuits:powerarmorcomponent:13>);

recipes.addShaped(<powersuits:powerarmorcomponent:18>, [
    [<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>],
    [<gregtech:meta_item_1:32752>, <gtadditions:ga_meta_item:32030>, <gregtech:meta_item_1:32752>], 
    [<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:21>, [
    [<gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>],
    [<ore:blockGlassHardened>, null, <ore:blockGlassHardened>], 
    [<gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:12152>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:19>, [
    [<gregtech:cable:87>, <gregtech:meta_item_1:10297>, <gregtech:cable:87>],
    [<gregtech:cable:87>, <gregtech:meta_item_1:32671>, <gregtech:cable:87>], 
    [<gregtech:cable:87>, <gregtech:meta_item_1:10297>, <gregtech:cable:87>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:20>, [
    [<ore:circuitGood>, <minecraft:dye:2>, <ore:circuitGood>],
    [<minecraft:dye:2>, <gtadditions:ga_meta_item:32030>, <minecraft:dye:2>], 
    [<gregtech:cable:87>, <gregtech:cable:87>, <gregtech:cable:87>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:15>, [
    [<gregtech:cable:87>, <gregtech:meta_item_1:12033>, <gregtech:cable:87>],
    [<minecraft:dye:2>, <ore:circuitGood>, <minecraft:dye:2>], 
    [<minecraft:dye:2>, <gregtech:cable:87>, <minecraft:dye:2>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:9>, [
    [<minecraft:carpet>, <minecraft:carpet>, <minecraft:carpet>],
    [<minecraft:string>, null, <minecraft:string>], 
    [<minecraft:wool>, <minecraft:string>, <minecraft:wool>]
]);
recipes.addShaped(<powersuits:powerarmorcomponent:13>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
    [<ore:dyeGreen>, <gregtech:meta_item_1:32682>, <ore:dyeGreen>], 
    [<ore:blockGlassHardened>, <gregtech:meta_item_1:32682>, <ore:blockGlassHardened>]
]);
recipes.remove(<powersuits:tinkertable>);

recipes.addShaped(<powersuits:tinkertable>, [
    [<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
    [<gregtech:meta_item_1:10184>, <tconstruct:toolforge>, <gregtech:meta_item_1:10184>],
     [<gregtech:meta_item_1:10184>, <minecraft:emerald>, <gregtech:meta_item_1:10184>]
]);

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

packer.findRecipe(4,[<minecraft:coal_block>*9,<gtadditions:ga_meta_item:32133>],[]).remove();
packer.findRecipe(4,[<powersuits:powerarmorcomponent:14>*9,<gtadditions:ga_meta_item:32133>],[]).remove();

