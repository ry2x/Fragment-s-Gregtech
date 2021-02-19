//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

val alloy = RecipeMap.getByName("alloy_smelter");

//Add recipe to alloy fused glass
alloy.recipeBuilder()
    .inputs([<ore:blockGlassHardened>*8,<ore:gemFlawedNetherQuartz>*5])
    .outputs([<enderio:block_holy_fused_glass>*8])
    .duration(400)
    .EUt(48)
    .buildAndRegister();

//Display Name
<enderio:block_cap_bank:1>.displayName = "Basic Capacitor Block";
<enderio:block_cap_bank:2>.displayName = "Advanced Capacitor Block";
<enderio:block_cap_bank:3>.displayName = "Great Capacitor Block";
<enderio:block_holy_fused_glass>.displayName = "Fuzed Glass";
<enderio:item_basic_capacitor>.displayName = "LV Capacitor";
<enderio:item_basic_capacitor:1>.displayName = "MV Capacitor";
<enderio:item_basic_capacitor:2>.displayName = "HV Capacitor";
<enderio:item_endergy_conduit:9>.displayName = "Stainless Steel Energy Conduit";
<enderio:item_endergy_conduit:10>.displayName = "Rhodium Energy Conduit";
<enderio:item_endergy_conduit:11>.displayName = "Neutronium Energy Conduit";
<enderio:item_fluid_conduit>.displayName = "Super Fluid Conduit";
<enderio:item_material:22>.displayName = "Conduit Binder Dust";

//fix all redstone alloy to red alloy
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:3>,<ore:ingotRedAlloy>,<*>);

/*
*This is not good for crafttweaker. It shows us yellow warning message.
*So, I don't remove this. (this is invisible for player bc redstone alloy is gone).
*/
//recipes.removeByRecipeName("crafttweaker:enderio-auto_redstone_alloy_1_ingot_to_9_nuggets-modified");

//fix monitor recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotIronMagnetic>,<enderio:block_power_monitor>);

//fix gauge recipes
recipes.replaceAllOccurences(<enderio:item_alloy_ingot>,<ore:ingotIronMagnetic>,<enderio:block_gauge>);

//fix forestry bee filter
recipes.replaceAllOccurences(<forestry:propolis>,<forestry:chipsets>,<enderio:item_species_item_filter>);
