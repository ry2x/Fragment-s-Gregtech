//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");

//flux network
    //capacitor bank
    #basic
recipes.remove(<fluxnetworks:fluxstorage>);
recipes.addShapeless(<enderio:block_cap_bank:1>, [<fluxnetworks:fluxstorage>]);
recipes.addShaped(<fluxnetworks:fluxstorage>, [
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>],
    [<ore:paneGlass>, <enderio:block_cap_bank:1>, <ore:paneGlass>], 
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>]
]);
    #advanced
recipes.remove(<fluxnetworks:herculeanfluxstorage>);
recipes.addShapeless(<enderio:block_cap_bank:2>, [<fluxnetworks:herculeanfluxstorage>]);
recipes.addShaped(<fluxnetworks:herculeanfluxstorage>, [
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>],
    [<ore:paneGlass>, <enderio:block_cap_bank:2>, <ore:paneGlass>], 
    [<fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>, <fluxnetworks:fluxblock>]
]);
    #max
recipes.remove(<fluxnetworks:gargantuanfluxstorage>);
assembler.recipeBuilder()
    .inputs(<fluxnetworks:fluxblock>*6,<enderio:block_cap_bank:3>*5)
    .fluidInputs([<liquid:glass>*216])
    .outputs(<fluxnetworks:gargantuanfluxstorage>)
    .duration(400)
    .EUt(48)
    .buildAndRegister();
    //use lazy ae2 flux dust instead of flux
    #Flux Core
recipes.remove(<fluxnetworks:fluxcore>);
recipes.addShaped(<fluxnetworks:fluxcore>, [
    [<threng:material:1>, <ore:wireGtSingleTitanium>, <threng:material:1>],
    [<ore:wireGtSingleTitanium>, <ore:circuitElite>, <ore:wireGtSingleTitanium>], 
    [<threng:material:1>, <ore:wireGtSingleTitanium>, <threng:material:1>]
]);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleTitanium>*4,<ore:circuitElite>*2, <threng:material:1>*6)
    .outputs(<fluxnetworks:fluxcore>*3)
    .duration(600)
    .EUt(8192)
    .buildAndRegister();
    #Flux Configurator
recipes.remove(<fluxnetworks:fluxconfigurator>);
recipes.addShaped(<fluxnetworks:fluxconfigurator>, [
    [null, <threng:material:1>, <fluxnetworks:fluxcore>],
    [null, <tconstruct:tool_rod>.withTag({Material: "obsidian"}).onlyWithTag({Material: "obsidian"}), <threng:material:1>], 
    [<tconstruct:tool_rod>.withTag({Material: "obsidian"}).onlyWithTag({Material: "obsidian"}), null, null]
]);
    #Flux Block
recipes.replaceAllOccurences(<fluxnetworks:flux>,<threng:material:1>,<fluxnetworks:fluxblock>);
    #Flux Controller
recipes.remove(<fluxnetworks:fluxcontroller>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:controller>,<fluxnetworks:fluxplug>*2,<fluxnetworks:fluxpoint>*2,<threng:material:1>*4,<fluxnetworks:fluxcore>*3)
    .outputs(<fluxnetworks:fluxcontroller>)
    .duration(700)
    .EUt(8192)
    .buildAndRegister();
//end flux network
