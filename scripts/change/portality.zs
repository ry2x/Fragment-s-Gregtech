//import greg
import mods.gregtech.recipe.RecipeMap;


//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val assembler = RecipeMap.getByName("assembler");

for item in loadedMods["portality"].items {
	recipes.remove(item);
}

//portal frame
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<appliedenergistics2:material:17>)
    .outputs(<portality:frame>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();

//portal controller
assembler.recipeBuilder()
    .inputs(<portality:frame>,<gtadditions:ga_meta_item:32218>*4,<portalgun:item_miniature_black_hole>)
    .outputs(<portality:controller>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(1000)
    .buildAndRegister();

//dimensional portal
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<appliedenergistics2:material:17>,<minecraft:ender_eye>)
    .outputs(<portality:module_interdimensional>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 2)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();

//portal input/output
    #item 
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:770>)
    .outputs(<portality:module_items>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:771>)
    .outputs(<portality:module_items:1>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
recipes.addShapeless(<portality:module_items:1>, [<portality:module_items>]);
recipes.addShapeless(<portality:module_items>, [<portality:module_items:1>]);
    #fluid
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:772>)
    .outputs(<portality:module_fluids>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:773>)
    .outputs(<portality:module_fluids:1>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
recipes.addShapeless(<portality:module_fluids:1>, [<portality:module_fluids>]);
recipes.addShapeless(<portality:module_fluids>, [<portality:module_fluids:1>]);
    #energy
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:774>)
    .outputs(<portality:module_energy>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32435>*8,<gregtech:meta_item_1:12074>*4,<gregtech:machine:775>)
    .outputs(<portality:module_energy:1>)
    .fluidInputs([<liquid:radon>*1000])
    .property("circuit", 1)
    .EUt(52768)
    .duration(500)
    .buildAndRegister();
recipes.addShapeless(<portality:module_energy:1>, [<portality:module_energy>]);
recipes.addShapeless(<portality:module_energy>, [<portality:module_energy:1>]);