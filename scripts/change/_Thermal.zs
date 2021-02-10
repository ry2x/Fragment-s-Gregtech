//import greg
import mods.gregtech.recipe.RecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;

val alloy = RecipeMap.getByName("alloy_smelter");
val assembler = RecipeMap.getByName("assembler");
val macerator = RecipeMap.getByName("macerator");
val reactor = RecipeMap.getByName("chemical_reactor");

print("start thermal");

//add alloy glass recipe in alloy smelter//
    #Hardened Copper Glass
alloy.recipeBuilder()
    .inputs([<ore:dustCopper>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Tin Glass
alloy.recipeBuilder()
    .inputs([<ore:dustTin>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:1>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Silver Glass
alloy.recipeBuilder()
    .inputs([<ore:dustSilver>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:2>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Glass
alloy.recipeBuilder()
    .inputs([<ore:dustLead>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:3>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Aluminum Glass
alloy.recipeBuilder()
    .inputs([<ore:dustAluminium>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:4>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Nickel Glass
alloy.recipeBuilder()
    .inputs([<ore:dustNickel>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:5>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Platinum Glass
alloy.recipeBuilder()
    .inputs([<ore:dustPlatinum>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:6>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Iridium Glass
alloy.recipeBuilder()
    .inputs([<ore:dustIridium>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass:7>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Steel Glass
alloy.recipeBuilder()
    .inputs([<ore:dustSteel>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass_alloy>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Electrum Glass
alloy.recipeBuilder()
    .inputs([<ore:dustElectrum>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass_alloy:1>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Invar Glass
alloy.recipeBuilder()
    .inputs([<ore:dustInvar>*4,<minecraft:glass>]).
    outputs([<thermalfoundation:glass_alloy:2>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Bronze Glass
alloy.recipeBuilder()
    .inputs([<ore:dustBronze>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass_alloy:3>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

    #Hardened Enderium Glass
alloy.recipeBuilder()
    .inputs([<ore:dustEnderium>*4,<minecraft:glass>])
    .outputs([<thermalfoundation:glass_alloy:7>])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//add fluidduct recipe in assembler//
val fluidduct = [
    <thermaldynamics:duct_16:*>,
    <thermaldynamics:duct_32:*>,
    <thermaldynamics:duct_48:*>,
] as IItemStack[];

for i in fluidduct {
    recipes.remove(i);
}

//fluid duct opacity=0
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*2,<ore:ingotCopper>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*2,<ore:ingotInvar>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16:2>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*5,<ore:ingotBronze>*5,<thermaldynamics:duct_16:2>])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16:6>])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//fluid duct opacity=1
assembler.recipeBuilder()
    .inputs([<ore:ingotLead>*2,<ore:ingotCopper>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16:1>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<ore:ingotLead>*2,<ore:ingotInvar>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16:3>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<ore:ingotLead>*5,<ore:ingotBronze>*5,<thermaldynamics:duct_16:3>])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_16:7>])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//add item duct recipe in assembler//
val itemduct = [
    <thermaldynamics:duct_32>
] as IItemStack[];

for i in itemduct {
    recipes.remove(i);
}

//item duct opacity=0
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*2,<ore:ingotTin>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_32>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<thermaldynamics:duct_32>*6])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .fluidInputs([<liquid:glowstone>*250])
    .outputs([<thermaldynamics:duct_32:2>*6])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//item duct opacity=1
assembler.recipeBuilder()
    .inputs([<ore:ingotLead>*2,<ore:ingotTin>*3])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_32:1>*2])
    .duration(50)
    .EUt(16)
    .buildAndRegister();
assembler.recipeBuilder()
    .inputs([<thermaldynamics:duct_32:1>*6])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .fluidInputs([<liquid:glowstone>*250])
    .outputs([<thermaldynamics:duct_32:3>*6])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//structure duct
recipes.remove(<thermaldynamics:duct_48>);
recipes.addShaped(<thermaldynamics:duct_48>,[
    [<ore:plateLead>, null, <ore:plateLead>],
    [null, <ore:blockGlassHardened>, null],
    [<ore:plateLead>, null, <ore:plateLead>]
]);

//add player duct recipe in assembler//
val playerduct = [
    <thermaldynamics:duct_64:*>
] as IItemStack[];

for i in playerduct {
    recipes.remove(i);
}

//Viaduct (Untreated)
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*4,<ore:ingotBronze>*5])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_64:3>*4])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//Viaduct
assembler.recipeBuilder()
    .inputs([<thermaldynamics:duct_64:3>*9])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .fluidInputs([<liquid:cryotheum>*250])
    .outputs([<thermaldynamics:duct_64>*9])
    .duration(50)
    .EUt(16)
    .buildAndRegister();

//Long Range Linking Viaduct
assembler.recipeBuilder()
    .inputs([<thermaldynamics:duct_64>*9])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .fluidInputs([<liquid:ender>*1000])
    .outputs([<thermaldynamics:duct_64:2>*9])
    .duration(100)
    .EUt(16)
    .buildAndRegister();

//Long Range Viaduct
assembler.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*4,<ore:ingotLead>*5])
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
    .outputs([<thermaldynamics:duct_64:1>*4])
    .duration(75)
    .EUt(16)
    .buildAndRegister();

//Thermal rod 2x recipe in mill//
//Blizz (Powder)
macerator.recipeBuilder()
    .inputs([<thermalfoundation:material:2048>])
    .outputs([<thermalfoundation:material:2049>*4])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Blitz (Powder)
macerator.recipeBuilder()
    .inputs([<thermalfoundation:material:2050>])
    .outputs([<thermalfoundation:material:2051>*4])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Basalz (Powder)
macerator.recipeBuilder()
    .inputs([<thermalfoundation:material:2052>])
    .outputs([<thermalfoundation:material:2053>*4])
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//set fuel parameters for useless powder//
val fuel = [
    <thermalfoundation:material:1026>,
    <thermalfoundation:material:1027>
] as IItemStack[];

for i in fuel {
    furnace.setFuel((i), 24000);
}

//change recipe of the Multimeter//
recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>,[
    [<ore:ingotLead>, null,<ore:ingotLead>],
    [<ore:ingotSilver>, <ore:circuitBasic>, <ore:ingotSilver>],
    [null, <ore:plateLead>, null]
]);

//change recipe of servos//
val servos = [
    <thermaldynamics:servo:*>,
    <thermaldynamics:filter:*>,
    <thermaldynamics:retriever:*>
] as IItemStack[];

for i in servos {
    recipes.remove(i);
}
//Servo
assembler.recipeBuilder()
    .inputs(<ore:ingotIron>*3,<ore:dustRedstone>*2,<gregtech:meta_item_1:32610>)
    .outputs(<thermaldynamics:servo>*3)
    .duration(65)
    .EUt(16)
    .buildAndRegister();

//Hardened Servo
assembler.recipeBuilder()
    .inputs(<ore:ingotSilver>*3,<ore:dustRedstone>*2,<gregtech:meta_item_1:32610>)
    .outputs(<thermaldynamics:servo:1>*3)
    .duration(65)
    .EUt(16)
    .buildAndRegister();

//Reinforced Servo
assembler.recipeBuilder()
    .inputs(<ore:ingotInvar>*3,<ore:dustRedstone>*2,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:2>*3)
    .duration(65)
    .EUt(128)
    .buildAndRegister();

//Powerful Servo
assembler.recipeBuilder()
    .inputs(<ore:ingotAluminium>*3,<ore:dustRedstone>*2,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:3>*3)
    .duration(65)
    .EUt(128)
    .buildAndRegister();
<thermaldynamics:servo:3>.displayName= "Powerful servo";

//Resonant Servo
assembler.recipeBuilder()
    .inputs(<ore:ingotEnderium>*3,<ore:ingotChrome>,<ore:dustRedstone>*2,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:4>*3)
    .duration(65)
    .EUt(128)
    .buildAndRegister();

//Filter
assembler.recipeBuilder()
    .inputs(<ore:blockGlassHardened>,<ore:ingotIron>,<ore:dustRedstone>,<gregtech:meta_item_1:32729>)
    .outputs(<thermaldynamics:filter>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Hardened Filter
assembler.recipeBuilder()
    .inputs(<ore:blockGlassHardened>,<ore:ingotSilver>,<ore:dustRedstone>,<gregtech:meta_item_1:32729>)
    .outputs(<thermaldynamics:filter:1>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Reinforced Filter
assembler.recipeBuilder()
    .inputs(<ore:blockGlassHardened>,<ore:ingotInvar>,<ore:dustRedstone>,<gregtech:meta_item_1:32103>)
    .outputs(<thermaldynamics:filter:2>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Powerful Filter
assembler.recipeBuilder()
    .inputs(<ore:blockGlassHardened>,<ore:ingotAluminium>,<ore:dustRedstone>,<gregtech:meta_item_1:32103>)
    .outputs(<thermaldynamics:filter:3>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();
<thermaldynamics:filter:3>.displayName= "Powerful filter";

//Resonant Filter
assembler.recipeBuilder()
    .inputs(<ore:blockGlassHardened>,<ore:ingotEnderium>,<ore:dustRedstone>,<gregtech:meta_item_1:32102>)
    .outputs(<thermaldynamics:filter:4>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Retriever
assembler.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<ore:ingotIron>*2,<ore:blockGlass>)
    .outputs(<thermaldynamics:retriever>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Hardened Retriever
assembler.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<ore:ingotSilver>*2,<ore:blockGlass>)
    .outputs(<thermaldynamics:retriever:1>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Reinforced Retriever
assembler.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<ore:ingotInvar>*2,<ore:blockGlass>)
    .outputs(<thermaldynamics:retriever:2>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Powerful Retriever
assembler.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<ore:ingotAluminium>*2,<ore:blockGlass>)
    .outputs(<thermaldynamics:retriever:3>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//Resonant Retriever
assembler.recipeBuilder()
    .inputs(<minecraft:ender_pearl>,<ore:ingotEnderium>*2,<ore:blockGlass>)
    .outputs(<thermaldynamics:retriever:4>*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();
<thermaldynamics:retriever:3>.displayName= "Powerful retriever";

//Redstone Relay
assembler.recipeBuilder()
    .inputs(<ore:dustRedstone>*4,<ore:ingotIron>,<projectred-integration:gate:13>)
    .outputs(<thermaldynamics:relay>)
    .duration(90)
    .EUt(16)
    .buildAndRegister();

//upgrades

//Hardened Servo
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo>*3,<ore:ingotSilver>*3)
    .outputs(<thermaldynamics:servo:1>*3)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Reinforced Servo
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:1>*6,<ore:ingotInvar>*5,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:2>*6)
    .duration(65)
    .EUt(128)
    .buildAndRegister();

//Powerful Servo
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:2>*6,<ore:ingotAluminium>*5,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:3>*6)
    .duration(65)
    .EUt(128)
    .buildAndRegister();

//Resonant Servo
assembler.recipeBuilder()
    .inputs(<thermaldynamics:servo:3>*6,<ore:ingotEnderium>*5,<gregtech:meta_item_1:32611>)
    .outputs(<thermaldynamics:servo:4>*6)
    .duration(65)
    .EUt(128)
    .buildAndRegister();

//Hardened Filter
assembler.recipeBuilder()
    .inputs(<thermaldynamics:filter>*2,<ore:ingotSilver>)
    .outputs(<thermaldynamics:filter:1>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Reinforced Filter
assembler.recipeBuilder()
    .inputs(<thermaldynamics:filter:1>*4,<ore:ingotInvar>*2,<gregtech:meta_item_1:32103>)
    .outputs(<thermaldynamics:filter:2>*4)
    .duration(65)
    .EUt(16)
    .buildAndRegister();

//Powerful Filter
assembler.recipeBuilder()
    .inputs(<thermaldynamics:filter:2>*2,<ore:ingotAluminium>*2)
    .outputs(<thermaldynamics:filter:3>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Resonant Filter
assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:32102>,<thermaldynamics:filter:3>*4,<ore:ingotEnderium>*2)
    .outputs(<thermaldynamics:filter:4>*4)  
    .duration(65)
    .EUt(16)
    .buildAndRegister();  

//Hardened Retriever
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever>*2,<ore:ingotSilver>*2)
    .outputs(<thermaldynamics:retriever:1>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Reinforced Retriever
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:1>*2,<ore:ingotInvar>*2)
    .outputs(<thermaldynamics:retriever:2>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Powerful Retriever
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:2>*2,<ore:ingotAluminium>*2)
    .outputs(<thermaldynamics:retriever:3>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();

//Resonant Retriever
assembler.recipeBuilder()
    .inputs(<thermaldynamics:retriever:3>*2,<ore:ingotEnderium>*2)
    .outputs(<thermaldynamics:retriever:4>*2)
    .duration(30)
    .EUt(16)
    .buildAndRegister();
//

//change Crescent Hammer recipe
recipes.remove(<thermalfoundation:wrench>);
recipes.addShaped(<thermalfoundation:wrench>,[
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:plateAluminium>, <ore:ingotIron>],
    [null, <ore:plateAluminium>, null]
]);

print("end thermal");
