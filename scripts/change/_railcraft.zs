//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val assembler = RecipeMap.getByName("assembler");
val circuit_assembler = RecipeMap.getByName("circuit_assembler");

//change recipe 

JEI.removeAndHide(<railcraft:tool_spike_maul_iron>);

val circuit =[ 
    <railcraft:circuit:1>,
    <railcraft:circuit:2>,
    <railcraft:circuit:3>,
    <railcraft:circuit>,
    <railcraft:signal_lamp>,
    <railcraft:tool_signal_surveyor>,
    <railcraft:tool_signal_tuner>,
] as IItemStack[];

for i in circuit {
    recipes.remove(i);
}

circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>,<gregtech:meta_item_2:32447>,<ore:dustRedstone>*4,<ore:woolRed>*2,<projectred-core:resource_item:11>)
    .outputs(<railcraft:circuit>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>,<gregtech:meta_item_2:32447>,<ore:dustRedstone>*4,<ore:woolGreen>*2,<projectred-core:resource_item:11>)
    .outputs(<railcraft:circuit:1>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>,<gregtech:meta_item_2:32447>,<ore:dustRedstone>*4,<ore:woolYellow>*2,<projectred-core:resource_item:11>)
    .outputs(<railcraft:circuit:2>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
circuit_assembler.recipeBuilder()
    .inputs(<ore:circuitBasic>,<gregtech:meta_item_2:32447>,<ore:dustRedstone>*4,<ore:woolBlue>*2,<projectred-core:resource_item:11>)
    .outputs(<railcraft:circuit:3>)
    .duration(100)
    .EUt(48)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs(<ore:paneGlassYellow>,<ore:paneGlassRed>,<ore:paneGlassGreen>,<projectred-integration:gate:13>,<projectred-illumination:lamp:*>)
    .outputs(<railcraft:signal_lamp>)
    .duration(50)
    .EUt(48)
    .buildAndRegister();
recipes.addShaped(<railcraft:tool_signal_surveyor>,[
    [<ore:stone>,<ore:paneGlass>,<ore:stone>],
    [<ore:stone>,<ore:circuitBasic:1>,<ore:stone>],
    [<ore:stone>,<ore:dustRedstone>,<ore:stone>],
]);
recipes.addShaped(<railcraft:tool_signal_tuner>,[
    [<ore:stone>,<gregtech:meta_item_1:32680>,<ore:stone>],
    [<ore:stone>,<ore:circuitBasic:1>,<ore:stone>],
    [<ore:stone>,null,<ore:stone>],
]);

//change recipe of armer 
val arm = [
    <railcraft:armor_helmet_steel>,
    <railcraft:armor_chestplate_steel>,
    <railcraft:armor_leggings_steel>,
    <railcraft:armor_boots_steel>,
] as IItemStack[];

for i in arm {
    recipes.remove(i);
}

recipes.addShaped(<railcraft:armor_helmet_steel>,[
    [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
    [<ore:plateSteel>,null,<ore:plateSteel>],
    [null,null,null]
]);
recipes.addShaped(<railcraft:armor_chestplate_steel>,[
    [<ore:plateSteel>,null,<ore:plateSteel>],
    [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
    [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
]);
recipes.addShaped(<railcraft:armor_leggings_steel>,[
    [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
    [<ore:plateSteel>,null,<ore:plateSteel>],
    [<ore:plateSteel>,null,<ore:plateSteel>]
]);
recipes.addShaped(<railcraft:armor_boots_steel>,[
    [null,null,null],
    [<ore:plateSteel>,null,<ore:plateSteel>],
    [<ore:plateSteel>,null,<ore:plateSteel>]
]);