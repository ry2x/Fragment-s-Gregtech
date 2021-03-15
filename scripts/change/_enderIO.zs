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

//import lazy AE2
import mods.threng.Energizer;

val alloy = RecipeMap.getByName("alloy_smelter");
val assembler = RecipeMap.getByName("assembler");
val forming = RecipeMap.getByName("forming_press");

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
<enderio:item_material:22>.displayName = "Conduit Binder Dust";

//add dark steel upgrade recipes
    #base
assembler.recipeBuilder()
    .inputs(<ore:circuitGood>,<ore:plateDarkSteel>*3,<ore:cableGtSingleSilver>*3)
    .fluidInputs([<liquid:rubber>*144])
    .outputs(<enderio:item_dark_steel_upgrade>)
    .EUt(480)
    .duration(120)
    .buildAndRegister();

    #upgrades
val upgrade as IItemStack[IItemStack] = {
    #foretry integration
    <forestry:apiarist_helmet>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_head"}),
    <forestry:apiarist_chest>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_chest"}),
    <forestry:apiarist_legs>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_legs"}),
    <forestry:apiarist_boots>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:apiarist_armor_feet"}),
    #dark steel anvil
    <enderio:block_dark_steel_anvil>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil"}),
    #elytra
    <minecraft:elytra>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:elytra"}),
    #energy update
    <enderio:item_basic_capacitor>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}),
    <enderio:item_basic_capacitor:1>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}),
    <enderio:item_basic_capacitor:2>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}),
    <gtadditions:ga_meta_item2:1>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}),
    <gtadditions:ga_meta_item2:3>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}),
    <gregtech:meta_item_2:32213>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade3"}),
    <gregtech:meta_item_1:32597>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}),
    #extend inventry
    <usefulbackpacks:backpack>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv"}),
    <usefulbackpacks:backpack:1>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv1"}),
    <usefulbackpacks:backpack:2>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:inv2"}),
    #prove
    <enderio:item_conduit_probe>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:top"}),
    #swim
    <gregtech:meta_item_2:18235>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:swim"}),
    #auto stair
    <minecraft:purpur_stairs>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:step_assist"}),
    #sound
    <randomthings:soundbox>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:sounddetector"}),
    <extrautils2:soundmuffler>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:padding"}),
    #night vision
    <forge:bucketfilled>.withTag({FluidName: "potion.minecraft.long_night_vision", Amount: 1000}):<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:nightvision"}),
    #forestry
    <forestry:naturalist_helmet>:<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiointegrationforestry:naturalist_eye"}),
};

for input,output in upgrade {
    forming.recipeBuilder()
        .inputs(input, <enderio:item_dark_steel_upgrade>)
        .outputs(output)
        .duration(60)
        .EUt(48)
        .buildAndRegister();
}

    #anvil2
forming.recipeBuilder()
    .inputs(<enderio:item_dark_steel_upgrade>,<enderio:block_dark_steel_anvil>*2)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil1"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #anvil3
forming.recipeBuilder()
    .inputs(<enderio:item_dark_steel_upgrade>,<enderio:block_dark_steel_anvil>*4)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:anvil2"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #jump boost1
forming.recipeBuilder()
    .inputs(<ore:blockSlimeCongealed>,<minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),<enderio:item_dark_steel_upgrade>)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost1"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #jump boost2
forming.recipeBuilder()
    .inputs(<ore:blockSlimeCongealed>*2,<minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),<enderio:item_dark_steel_upgrade>)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost2"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #jump boost3
forming.recipeBuilder()
    .inputs(<ore:blockSlimeCongealed>*4,<minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),<enderio:item_dark_steel_upgrade>)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:jumpboost3"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #speed 1
forming.recipeBuilder()
    .inputs(<randomthings:superlubricentboots>,<enderio:item_dark_steel_upgrade>,<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}))
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost1"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #speed 2
forming.recipeBuilder()
    .inputs(<randomthings:superlubricentboots>*2,<enderio:item_dark_steel_upgrade>,<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}))
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost2"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #speed 3
forming.recipeBuilder()
    .inputs(<randomthings:superlubricentboots>*4,<enderio:item_dark_steel_upgrade>,<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}))
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:speedboost3"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();
    #glider
forming.recipeBuilder()
    .inputs(<enderio:item_dark_steel_upgrade>,<powersuits:powerarmorcomponent:3>*2)
    .outputs(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:glide"}))
    .duration(60)
    .EUt(48)
    .buildAndRegister();

//dark steel anvil in greg way
solidifier.recipeBuilder()
    .fluidInputs([<liquid:dark_steel>*4464])
    .notConsumable(<gregtech:meta_item_1:32314>)
    .outputs(<enderio:block_dark_steel_anvil>)
    .EUt(16)
    .duration(128)
    .buildAndRegister();
alloy.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10502>*31)
    .notConsumable(<gregtech:meta_item_1:32314>)
    .outputs(<enderio:block_dark_steel_anvil>)
    .EUt(64)
    .duration(15872)
    .buildAndRegister();
