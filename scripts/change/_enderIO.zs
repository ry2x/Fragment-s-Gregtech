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
/*
*This is not good for crafttweaker. It shows us yellow warning message.
*So, I don't remove this. (this is invisible for player bc redstone alloy is gone).
*/
//recipes.removeByRecipeName("crafttweaker:enderio-auto_redstone_alloy_1_ingot_to_9_nuggets-modified");

//change capacitor
<enderio:item_basic_capacitor>.displayName = "LV Capacitor";
<enderio:item_basic_capacitor:1>.displayName = "MV Capacitor";
<enderio:item_basic_capacitor:2>.displayName = "HV Capacitor";

//change name
<enderio:item_material:22>.displayName = "Conduit Binder Dust";

//add furnace recipe for conduit binder
furnace.addRecipe(<enderio:item_material:4>*9,<railcraft:reinforced_concrete:*>,2);

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
recipes.addShaped(<enderio:block_holy_fused_glass>*8,[
    [<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass:*>,<enderio:block_holy_fused_glass:*>],
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
