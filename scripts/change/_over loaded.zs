//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
//import greg
import mods.gregtech.recipe.RecipeMap;

val forming = RecipeMap.getByName("forming_press");
val assembler = RecipeMap.getByName("assembler");

//remove and add recipes of overloaded OP items
for item in loadedMods["overloaded"].items {
	recipes.remove(item);
}

//cores
    #energy
forming.recipeBuilder()
    .inputs(<ore:gemEnderEye>*2,<gtadditions:ga_cell_casing:1>,<ore:plateEnderium>*6,<minecraft:end_rod>*2)
    .outputs(<overloaded:energy_core>)
    .duration(60)
    .EUt(1024)
    .buildAndRegister();
    #items
forming.recipeBuilder()
    .inputs(<ore:gemEnderEye>*2,<enderstorage:ender_storage>,<ore:plateEnderium>*6,<minecraft:end_rod>*2)
    .outputs(<overloaded:item_core>)
    .duration(60)
    .EUt(1024)
    .buildAndRegister();
    #fluid
forming.recipeBuilder()
    .inputs(<ore:gemEnderEye>*2,<gregtech:machine:2199>,<ore:plateEnderium>*6,<minecraft:end_rod>*2)
    .outputs(<overloaded:fluid_core>)
    .duration(60)
    .EUt(1024)
    .buildAndRegister();

//transfer node
val node as IItemStack[] = [
    <cyclicmagic:cable_wireless>,
    <cyclicmagic:cable_wireless_energy>,
    <cyclicmagic:cable_wireless_fluid>,
];
for i in node {
    recipes.remove(i);
}

    #energy
assembler.recipeBuilder()
    .inputs(<ore:dyeRed>*4,<overloaded:energy_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless_energy>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();
    #item
assembler.recipeBuilder()
    .inputs(<ore:dyePurple>*4,<overloaded:item_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();
    #fluid
assembler.recipeBuilder()
    .inputs(<ore:dyeBlue>*4,<overloaded:fluid_core>,<ore:plateStainlessSteel>*8)
    .outputs(<cyclicmagic:cable_wireless_fluid>)
    .duration(120)
    .EUt(512)
    .buildAndRegister();

//hyper sender
    //receiver
    #energy
assembler.recipeBuilder()
    .inputs(<overloaded:energy_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_energy_receiver>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:1}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    #fluid
assembler.recipeBuilder()
    .inputs(<overloaded:fluid_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_fluid_receiver>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:1}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    #item
assembler.recipeBuilder()
    .inputs(<overloaded:item_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_item_receiver>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:1}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    //sender
    #energy
assembler.recipeBuilder()
    .inputs(<overloaded:energy_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_energy_sender>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    #fluid
assembler.recipeBuilder()
    .inputs(<overloaded:fluid_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_fluid_sender>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    #item
assembler.recipeBuilder()
    .inputs(<overloaded:item_core>,<danknull:dank_null_panel_2>*2)
    .outputs(<overloaded:hyper_item_sender>)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .duration(240)
    .EUt(520)
    .buildAndRegister();
    #change to each other
recipes.addShapeless(<overloaded:hyper_item_receiver>, [<overloaded:hyper_item_sender>]);
recipes.addShapeless(<overloaded:hyper_item_sender>, [<overloaded:hyper_item_receiver>]);
recipes.addShapeless(<overloaded:hyper_energy_receiver>, [<overloaded:hyper_energy_sender>]);
recipes.addShapeless(<overloaded:hyper_energy_sender>, [<overloaded:hyper_energy_receiver>]);
recipes.addShapeless(<overloaded:hyper_fluid_receiver>, [<overloaded:hyper_fluid_sender>]);
recipes.addShapeless(<overloaded:hyper_fluid_sender>, [<overloaded:hyper_fluid_receiver>]);

//tesseract
recipes.remove(<tesseract:tesseract>);
assembler.recipeBuilder()
    .inputs(<overloaded:energy_core>,<overloaded:fluid_core>,<overloaded:item_core>,<ore:plateEnderium>*4,<gregtech:meta_item_2:19963>*4,<thermalfoundation:glass_alloy:7>*4)
    .fluidInputs([<liquid:enderium>*800])
    .outputs(<tesseract:tesseract>)
    .duration(500)
    .EUt(512)
    .buildAndRegister();

//infinity capacitor blocks
    #tank
assembler.recipeBuilder()
    .inputs(<gregtech:machine:1020>,<overloaded:fluid_core>,<ore:plateStainlessSteel>*4,<ore:circuitElite>*4)
    .outputs(<overloaded:infinite_tank>)
    .duration(244)
    .EUt(2000)
    .buildAndRegister();
    #chest
assembler.recipeBuilder()
    .inputs(<gregtech:machine:1010>,<overloaded:item_core>,<ore:plateStainlessSteel>*4,<ore:circuitElite>*4)
    .outputs(<overloaded:infinite_barrel>)
    .duration(244)
    .EUt(2000)
    .buildAndRegister();
    #energy
assembler.recipeBuilder()
    .inputs(<ore:batteryUltimate>,<overloaded:energy_core>,<ore:plateStainlessSteel>*4,<ore:circuitElite>*4)
    .outputs(<overloaded:infinite_capacitor>)
    .duration(244)
    .EUt(2000)
    .buildAndRegister();

//link card
recipes.addShaped(<overloaded:linking_card>, [
    [<minecraft:wool:15>, <minecraft:wool:15>, <minecraft:wool:15>],
    [<minecraft:wool:15>, <ore:blockIron>, <minecraft:wool:15>],
    [<minecraft:wool:15>, <minecraft:wool:15>, <ore:blockIron>]
]);

//interface
recipes.addShaped(<overloaded:player_interface>, [
    [<minecraft:iron_ingot>, <enderio:item_item_conduit>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:ender_chest>, <minecraft:iron_ingot>],
    [<enderio:item_item_conduit>, <ore:gemFlawedNetherQuartz>, <enderio:item_item_conduit>]
]);
recipes.addShaped(<overloaded:item_interface>, [
    [<minecraft:iron_ingot>, <enderio:item_item_conduit>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
    [<enderio:item_item_conduit>, <ore:gemFlawedNetherQuartz>, <enderio:item_item_conduit>]
]);

//ex
recipes.addShaped(<overloaded:energy_extractor>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <overloaded:energy_core>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

//you got some water?
recipes.addShaped(<overloaded:infinite_water_source>, [
    [<ore:blockGlass>, <gregtech:meta_item_1:32611>, <ore:blockGlass>],
    [<gregtech:meta_item_1:32611>, <ore:gemDiamond>, <gregtech:meta_item_1:32611>],
    [<ore:blockGlass>, <gregtech:meta_item_1:32611>, <ore:blockGlass>]
]);

//Multi-Armor Settings Editor
recipes.addShaped(<overloaded:settings_editor>, [
    [<gregtech:meta_item_1:12859>, <gregtech:meta_item_1:12859>, <gregtech:meta_item_1:12859>],
    [<gregtech:meta_item_1:12859>, <overloaded:linking_card>, <gregtech:meta_item_1:12859>],
    [<gregtech:meta_item_1:12859>, <gregtech:meta_item_1:12859>, <gregtech:meta_item_1:12859>]
]);
