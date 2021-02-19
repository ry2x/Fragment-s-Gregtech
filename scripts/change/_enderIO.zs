/*
* All recipes excluding that need Alloy Smelter from GregTech Community Edition and
* changing display name for some of the items/blocks are written in xml format.
* You can see the files in config/enderio/recipes/user/
*
* Changing/Adding recipes related to and from EnderIO from this scripts are prohibited
* unless you have a specific reason to do so.
* All default recipes are not subscribed by config setting.
* Please add to applicable file found in config/enderio/recipes/user/
*/

//import crafttweaker II
import crafttweaker.item.IItemStack;

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

//Tweak Display Name
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

/*
*This is not good for crafttweaker. It shows us yellow warning message.
*So, I don't remove this. (this is invisible for player bc redstone alloy is gone).
*/
//recipes.removeByRecipeName("crafttweaker:enderio-auto_redstone_alloy_1_ingot_to_9_nuggets-modified");
