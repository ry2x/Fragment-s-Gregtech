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

//block of  sticks
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

//rain
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