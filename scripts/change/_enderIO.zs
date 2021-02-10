//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val alloy = RecipeMap.getByName("alloy_smelter");

//change name of <enderio:block_holy_fused_glass>
<enderio:block_holy_fused_glass>.displayName = "Fuzed Glass";

//fix all redstone alloy to red alloy
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:3>,<ore:ingotRedAlloy>,<*>);

//change redstone base filter
recipes.remove(<enderio:item_material:60>);
recipes.addShaped(<enderio:item_material:60>,[
    [<ore:ingotRedAlloy>,<ore:paperBlack>,<ore:ingotIron>],
    [<ore:ingotRedAlloy>,<ore:ingotIron>,<ore:ingotIron>],
    [<ore:ingotRedAlloy>,<ore:paperBlack>,<ore:ingotIron>]
]);

//change Yeta wrench
recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShaped(<enderio:item_yeta_wrench>,[
    [<ore:plateIron>,null,<ore:plateIron>],
    [<ore:plateIron>,<ore:gearIron>,<ore:plateIron>],
    [null,<ore:plateIron>,null]
]);

//change capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped(<enderio:item_basic_capacitor>,[
    [null,<ore:stone>,null],
    [<ore:stone>,<gregtech:meta_item_2:32447>,<ore:stone>],
    [<ore:stickCopper>,<ore:LVbattery>,<ore:stickCopper>]
]);
<enderio:item_basic_capacitor>.displayName = "LV Capacitor";
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShaped(<enderio:item_basic_capacitor:1>,[
    [null,<ore:stone>,null],
    [<ore:stone>,<gregtech:meta_item_2:32447>,<ore:stone>],
    [<ore:stickSilver>,<ore:MVbattery>,<ore:stickSilver>]
]);
<enderio:item_basic_capacitor:1>.displayName = "MV Capacitor";
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShaped(<enderio:item_basic_capacitor:2>,[
    [null,<ore:stone>,null],
    [<ore:stone>,<gregtech:meta_item_2:32447>,<ore:stone>],
    [<ore:stickCopper>,<ore:HVbattery>,<ore:stickCopper>]
]);
<enderio:item_basic_capacitor:2>.displayName = "HV Capacitor";

//change name 
<enderio:item_material:22>.displayName = "Conduit Binder Dust";

//add furnace recipe for conduit binder
furnace.addRecipe(<enderio:item_material:4>*9,<railcraft:reinforced_concrete:*>,2);

//change conduit prove
recipes.remove(<enderio:item_conduit_probe>);
recipes.addShaped(<enderio:item_conduit_probe>,[
    [<ore:ingotIron>,null,<ore:ingotIron>],
    [<ore:ingotIron>,<enderio:item_yeta_wrench>,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:circuitBasic>,<ore:ingotIron>]
]);

//change (buff) the black paper recipes
recipes.remove(<enderio:item_material:77>);
recipes.addShaped(<enderio:item_material:77>*8,[
    [<ore:paper>,<ore:paper>,<ore:paper>],
    [<ore:paper>,<ore:dyeBlack>,<ore:paper>],
    [<ore:paper>,<ore:paper>,<ore:paper>]
]);

//fix item conduit recipes
recipes.replaceAllOccurences(<enderio:item_alloy_nugget:5>,<ore:nuggetSolderingAlloy>,<enderio:item_item_conduit>);

//fix fluid conduit recipes
recipes.replaceAllOccurences(<ore:fusedGlass>,<ore:blockGlassHardened>,<enderio:item_liquid_conduit>);
recipes.replaceAllOccurences(<ore:fusedQuartz>,<ore:fusedGlass>,<enderio:item_liquid_conduit:1>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:2>,<ore:ingotEnderium>,<enderio:item_liquid_conduit:2>);

//fix flux conduit recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:4>,<ore:ingotCopper>,<enderio:item_power_conduit>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:1>,<ore:ingotSilver>,<enderio:item_power_conduit:1>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:2>,<ore:ingotEnderium>,<enderio:item_power_conduit:2>);

//fix flux capacitor recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:1>,<ore:ingotSilver>,<enderio:block_cap_bank:2>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotCopper>,<enderio:block_cap_bank:2>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:2>,<ore:ingotEnderium>,<enderio:block_cap_bank:3>);
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotSilver>,<enderio:block_cap_bank:3>);
recipes.replaceAllOccurences(<enderio:item_material:15>,<overloaded:energy_core>,<enderio:block_cap_bank:3>);
<enderio:block_cap_bank:1>.displayName = "Basic Capacitor Block";
<enderio:block_cap_bank:2>.displayName = "Advanced Capacitor Block";
<enderio:block_cap_bank:3>.displayName = "Great Capacitor Block";

//fix monitor recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotIronMagnetic>,<enderio:block_power_monitor>);

//fix gauge recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotIronMagnetic>,<enderio:block_gauge>);

//fix flux conduit stellar
recipes.replaceAllOccurences(<enderio:item_alloy_endergy_ingot:4>,<ore:ingotStainlessSteel>,<enderio:item_endergy_conduit:9>);
recipes.replaceAllOccurences(<enderio:item_alloy_endergy_ingot:2>,<ore:ingotRhodium>,<enderio:item_endergy_conduit:10>);
recipes.replaceAllOccurences(<enderio:item_alloy_endergy_ingot:3>,<ore:ingotNeutronium>,<enderio:item_endergy_conduit:11>);
recipes.replaceAllOccurences(<enderio:item_material:75>,<ore:ingotNeutronium>,<enderio:item_endergy_conduit:11>);
<enderio:item_endergy_conduit:9>.displayName = "Stainless Steel Energy Conduit";
<enderio:item_endergy_conduit:10>.displayName = "Rhodium Energy Conduit";
<enderio:item_endergy_conduit:11>.displayName = "Neutronium Energy Conduit";

//change recipe of filter
recipes.remove(<enderio:item_basic_item_filter>);
recipes.addShaped(<enderio:item_basic_item_filter>,[
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:hopper>,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>]
]);
recipes.remove(<enderio:item_advanced_item_filter>);
recipes.addShaped(<enderio:item_advanced_item_filter>,[
    [<ore:dustRedstone>,<ore:circuitBasic>,<ore:dustRedstone>],
    [<ore:paperBlack>,<enderio:item_basic_item_filter>,<ore:paperBlack>],
    [<ore:dustRedstone>,<ore:circuitBasic>,<ore:dustRedstone>]
]);
recipes.replaceAllOccurences(<minecraft:comparator>,<projectred-integration:gate:26>,<enderio:item_limited_item_filter>);
recipes.remove(<enderio:item_big_item_filter>*2);
recipes.addShaped(<enderio:item_big_item_filter>,[
    [<enderio:item_basic_item_filter>,<ore:ingotIron>,<enderio:item_basic_item_filter>],
    [<ore:ingotCobalt>,<ore:paperBlack>,<ore:ingotCobalt>],
    [<enderio:item_basic_item_filter>,<ore:ingotIron>,<enderio:item_basic_item_filter>]
]);
recipes.remove(<enderio:item_big_advanced_item_filter>);
recipes.addShaped(<enderio:item_big_advanced_item_filter>,[
    [<enderio:item_advanced_item_filter>,<ore:ingotIron>,<enderio:item_advanced_item_filter>],
    [<ore:paperBlack>,<minecraft:shulker_shell>,<ore:paperBlack>],
    [<enderio:item_advanced_item_filter>,<ore:ingotIron>,<enderio:item_advanced_item_filter>]
]);
recipes.replaceAllOccurences(<minecraft:comparator>,<projectred-integration:gate:26>,<enderio:item_existing_item_filter>);
recipes.remove(<enderio:item_mod_item_filter>);
recipes.addShaped(<enderio:item_mod_item_filter>,[
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>],
    [<ore:paperBlack>,<enderio:item_yeta_wrench>,<ore:paperBlack>],
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>]
]);
recipes.remove(<enderio:item_power_item_filter>);
recipes.addShaped(<enderio:item_power_item_filter>,[
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>],
    [<ore:paperBlack>,<enderio:item_conduit_probe>,<ore:paperBlack>],
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>]
]);
recipes.remove(<enderio:item_fluid_filter>);
recipes.addShaped(<enderio:item_fluid_filter>,[
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>],
    [<ore:paperBlack>,<enderio:item_liquid_conduit>,<ore:paperBlack>],
    [<ore:ingotIron>,<ore:paperBlack>,<ore:ingotIron>]
]);

//fix stellar fluid conduits
recipes.replaceAllOccurences(<enderio:item_alloy_endergy_ingot:3>,<gregtech:meta_item_1:10074>,<enderio:item_fluid_conduit>);
recipes.replaceAllOccurences(<ore:blockGlassHardened>,<enderio:block_holy_fused_glass:*>,<enderio:item_fluid_conduit>);
<enderio:item_fluid_conduit>.displayName = "Super Fluid Conduit";
//fix forestry bee filter
recipes.replaceAllOccurences(<forestry:propolis>,<forestry:chipsets>,<enderio:item_species_item_filter>);

//change recipe of fuzed glass
recipes.remove(<enderio:block_holy_fused_glass>);
alloy.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*8,<ore:gemFlawedNetherQuartz>*5])
    .outputs([<enderio:block_holy_fused_glass>*8])
    .duration(400)
    .EUt(48)
    .buildAndRegister();
recipes.addShaped(<enderio:block_holy_fused_glass>,[
    [<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass>,<enderio:block_holy_fused_glass:*>],
    [<ore:dyeWhite>,<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass:*>],
    [<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass:*>]
]);

//replace useless ingots
val itemEx as IItemStack[] = [
    <enderio:item_extract_speed_upgrade>,
    <enderio:item_extract_speed_downgrade>
];
for i in itemEx {
    recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotIridium>,i);
}
