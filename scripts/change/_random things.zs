//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;

val alloy = RecipeMap.getByName("alloy_smelter");
val reactor = RecipeMap.getByName("chemical_reactor");
val assembler = RecipeMap.getByName("assembler");
val bath = RecipeMap.getByName("chemical_bath");
val forming = RecipeMap.getByName("forming_press");
val blast_furnace = RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

//blue glass
recipes.remove(<randomthings:lapisglass>);
alloy.recipeBuilder()
    .inputs(<minecraft:dye:4>,<ore:blockGlass>)
    .outputs(<randomthings:lapisglass>)
    .EUt(16)
    .duration(40)
    .buildAndRegister();

//blue red stone lump
recipes.remove(<randomthings:lapislamp>);
alloy.recipeBuilder()
    .inputs(<minecraft:dye:4>*4,<minecraft:redstone_lamp>)
    .outputs(<randomthings:lapislamp>)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

//water flower
reactor.recipeBuilder()
    .inputs(<minecraft:red_flower:2>)
    .fluidInputs([<liquid:hydrogen>*500,<liquid:oxygen>*250])
    .outputs(<randomthings:pitcherplant>)
    .EUt(64)
    .duration(100)
    .buildAndRegister();

//imbusing
recipes.remove(<randomthings:imbuingstation>);
recipes.addShaped(<randomthings:imbuingstation>, [
    [<minecraft:bucket>, <minecraft:brewing_stand>, <minecraft:bucket>],
    [<minecraft:waterlily>, <minecraft:stained_hardened_clay:13>, <minecraft:waterlily>], 
    [<minecraft:vine>, <ore:gemEmerald>, <minecraft:vine>]
]);

//quartz glass
recipes.remove(<randomthings:quartzglass>);
furnace.addRecipe(<randomthings:quartzglass>, <enderio:block_holy_fused_glass>, 2);

//quartz lamp
recipes.remove(<randomthings:quartzlamp>);
assembler.recipeBuilder()
    .inputs(<randomthings:quartzglass>*4,<minecraft:redstone_lamp>)
    .outputs(<randomthings:quartzlamp>)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

//block of sticks
recipes.remove(<randomthings:blockofsticks>);
recipes.addShaped(<randomthings:blockofsticks>,[
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [<ore:stickWood>,craftingToolWrench,<ore:stickWood>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>]
]);

//ender block of stick
recipes.remove(<randomthings:blockofsticks:1>);
bath.recipeBuilder()
    .inputs(<randomthings:blockofsticks>)
    .fluidInputs([<liquid:ender>*288])
    .outputs(<randomthings:blockofsticks:1>)
    .EUt(48)
    .duration(20)
    .buildAndRegister();

//rain shield
recipes.remove(<randomthings:rainshield>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32681>,<minecraft:netherrack>*3,<minecraft:blaze_rod>)
    .fluidInputs([<liquid:pyrotheum>*250])
    .outputs(<randomthings:rainshield>)
    .EUt(512)
    .duration(80)
    .buildAndRegister();

//iron hopper
recipes.remove(<randomthings:irondropper>);
recipes.addShaped(<randomthings:irondropper>,[
    [<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
    [<ore:plateIron>,craftingToolWrench,<ore:plateIron>],
    [<ore:plateIron>,<ore:dustRedstone>,<ore:plateIron>]
]);

//slime cube
recipes.remove(<randomthings:slimecube>);
forming.recipeBuilder()
    .inputs(<minecraft:nether_star>,<ore:blockSlime>*6)
    .outputs(<randomthings:slimecube>)
    .EUt(48)
    .duration(100)
    .buildAndRegister();

//advanced repeater
recipes.remove(<randomthings:advancedredstonerepeater>);
assembler.recipeBuilder()
    .inputs(<projectred-core:resource_item:11>*2,<projectred-core:resource_item:1>)
    .fluidInputs([<liquid:iron>*288])
    .outputs(<randomthings:advancedredstonerepeater>)
    .EUt(16)
    .duration(100)
    .buildAndRegister();

//rainbow lamp
recipes.remove(<randomthings:rainbowlamp>);
recipes.addShaped(<randomthings:rainbowlamp>, [
    [null, <randomthings:luminousblock:14>, null],
    [null, <minecraft:redstone_lamp>, null], 
    [<randomthings:luminousblock:11>, null, <randomthings:luminousblock:13>]
]);

//super lubricant stone
recipes.remove(<randomthings:superlubricentstone>);
bath.recipeBuilder()
    .inputs(<minecraft:stone>)
    .fluidInputs([<liquid:lubricant>*144])
    .outputs(<randomthings:superlubricentstone>)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

//stable ender pearl 
recipes.remove(<randomthings:stableenderpearl>);
reactor.recipeBuilder()
    .inputs(<minecraft:ender_pearl>)
    .fluidInputs([<liquid:obsidian>*576])
    .outputs(<randomthings:stableenderpearl>)
    .EUt(48)
    .duration(200)
    .buildAndRegister();

//spectre ingot
recipes.remove(<randomthings:ingredient:3>);
blast_furnace.recipeBuilder()
    .inputs(<ore:dustLapis>,<ore:dustGold>,<randomthings:ingredient:2>)
    .fluidInputs([<liquid:hydrogen>*250])
    .outputs(<randomthings:ingredient:3>)
    .property("temperature", 2200)
    .duration(800)
    .EUt(512)
    .buildAndRegister();

//biome sensor
recipes.remove(<randomthings:ingredient:4>);
forming.recipeBuilder()
    .inputs(<ore:plateIron>*6,<randomthings:biomecrystal>,<ore:dustRedstone>*2)
    .outputs(<randomthings:ingredient:4>)
    .duration(50)
    .EUt(56)
    .buildAndRegister();

//floo dust
recipes.remove(<randomthings:ingredient:7>);
recipes.addShapeless(<randomthings:ingredient:7>*4,[<minecraft:gunpowder>,<gregtech:meta_item_1:2218>,<minecraft:redstone>,<randomthings:ingredient:2>]);
mixer.recipeBuilder()
    .inputs(<minecraft:gunpowder>,<gregtech:meta_item_1:2218>,<minecraft:redstone>,<randomthings:ingredient:2>)
    .outputs(<randomthings:ingredient:7>*5)
    .EUt(8)
    .duration(40)
    .buildAndRegister();

//luminous powder
recipes.remove(<randomthings:ingredient:5>);
recipes.addShapeless(<randomthings:ingredient:5>,[<randomthings:ingredient:7>,<ore:dustGlass>,<ore:dustGlowstone>]);
mixer.recipeBuilder()
    .inputs(<randomthings:ingredient:7>,<ore:dustGlowstone>)
    .fluidInputs([<liquid:glass>*144])
    .outputs(<randomthings:ingredient:5>*2)
    .EUt(8)
    .duration(40)
    .buildAndRegister();

//super lubricant boots
recipes.remove(<randomthings:superlubricentboots>);
bath.recipeBuilder()
    .inputs(<minecraft:iron_boots>)
    .fluidInputs([<liquid:lubricant>*144])
    .outputs(<randomthings:superlubricentboots>)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

//ender bucket
recipes.remove(<randomthings:enderbucket>);
bath.recipeBuilder()
    .inputs(<minecraft:bucket>)
    .fluidInputs([<liquid:ender>*1000])
    .outputs(<randomthings:enderbucket>)
    .EUt(128)
    .duration(20)
    .buildAndRegister();

//improved ender bucket
recipes.remove(<randomthings:reinforcedenderbucket>);
<randomthings:reinforcedenderbucket>.displayName = "Improved Ender Bucket";
assembler.recipeBuilder()
    .inputs(<randomthings:enderbucket>,<minecraft:obsidian>*4,<randomthings:stableenderpearl>)
    .outputs(<randomthings:reinforcedenderbucket>)
    .EUt(128)
    .duration(100)
    .buildAndRegister();

//time in a bottle
recipes.remove(<randomthings:timeinabottle>);
assembler.recipeBuilder()
    .inputs(<minecraft:glass_bottle>,<ore:lensDiamond>*4,<ore:dustObsidian>*4,<gregtech:meta_item_1:32724>)
    .outputs(<randomthings:timeinabottle>)
    .EUt(8)
    .duration(500)
    .buildAndRegister();

//chunk analyzer
recipes.replaceAllOccurences(<ore:blockGlass>,<gtadditions:ga_meta_item2:100>,<randomthings:chunkanalyzer>);

//gold compass
recipes.replaceAllOccurences(<minecraft:gold_ingot>,<ore:plateGold>,<randomthings:goldencompass>);

