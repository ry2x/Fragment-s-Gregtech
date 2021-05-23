//import tinkers construct
import mods.tconstruct.Casting.removeTableRecipe;
import mods.tconstruct.Casting.removeBasinRecipe;

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.liquid.ILiquidStack;

//import JEI function
import mods.jei.JEI;

//remove plate cast
removeTableRecipe(<tconstruct:cast_custom:3>);
JEI.hide(<tconstruct:cast_custom:3>);

//remove gear cast
removeTableRecipe(<tconstruct:cast_custom:4>);
JEI.hide(<tconstruct:cast_custom:4>);

//remove block recipes by basin
val metalBlocks = [
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:redstone_block>,
    <gregtech:meta_block_compressed_0:*>,
    <gregtech:meta_block_compressed_1:*>,
    <gregtech:meta_block_compressed_2:*>,
    <gregtech:meta_block_compressed_3:*>,
    <gregtech:meta_block_compressed_4:*>,
    <gregtech:meta_block_compressed_5:*>,
    <gregtech:meta_block_compressed_6:*>,
    <gregtech:meta_block_compressed_7:*>,
    <gregtech:meta_block_compressed_8:*>,
    <gregtech:meta_block_compressed_9:*>,
    <gregtech:meta_block_compressed_10:*>,
    <gregtech:meta_block_compressed_11:*>,
    <gregtech:meta_block_compressed_12:*>,
    <gregtech:meta_block_compressed_13:*>,
    <gregtech:meta_block_compressed_14:*>,
    <gregtech:meta_block_compressed_14:*>,
    <gregtech:meta_block_compressed_15:*>,
    <gregtech:meta_block_compressed_16:*>,
    <gregtech:meta_block_compressed_17:*>,
    <gregtech:meta_block_compressed_18:*>,
    <gregtech:meta_block_compressed_19:*>,
    <gregtech:meta_block_compressed_20:*>,
    <gregtech:meta_block_compressed_21:*>,
    <gregtech:meta_block_compressed_22:*>,
    <gregtech:meta_block_compressed_23:*>,
    <gregtech:meta_block_compressed_24:*>,
    <gregtech:meta_block_compressed_25:*>,
    <gregtech:meta_block_compressed_26:*>,
    <gregtech:meta_block_compressed_28:*>,
    <gregtech:meta_block_compressed_29:*>,
    <gregtech:meta_block_compressed_31:*>,
    <gregtech:meta_block_compressed_41:*>,
    <gregtech:meta_block_compressed_42:*>,
    <gregtech:meta_block_compressed_43:*>,
    <gregtech:meta_block_compressed_44:*>,
    <gregtech:meta_block_compressed_45:*>,
    <gregtech:meta_block_compressed_46:*>,
    <gregtech:meta_block_compressed_47:*>,
    <gregtech:meta_block_compressed_48:*>,
    <gregtech:meta_block_compressed_49:*>,
    <gregtech:meta_block_compressed_50:*>,
    <gregtech:meta_block_compressed_51:*>,
    <gregtech:meta_block_compressed_52:*>,
    <gregtech:meta_block_compressed_53:*>,
    <gregtech:meta_block_compressed_53:*>,
    <gregtech:meta_block_compressed_53:*>,
    <gregtech:meta_block_compressed_54:*>,
    <gregtech:meta_block_compressed_55:*>,
    <gregtech:meta_block_compressed_56:*>,
    <gregtech:meta_block_compressed_57:*>,
    <gregtech:meta_block_compressed_58:*>,
    <gregtech:meta_block_compressed_59:*>,
    <gregtech:meta_block_compressed_60:*>,
    <gregtech:meta_block_compressed_61:*>,
    <gregtech:meta_block_compressed_62:*>,
] as IItemStack[];

for i in metalBlocks {
    removeBasinRecipe(i);
}

//remove plate recipes in casting table
val metalPlates = [
    <gregtech:meta_item_1:*>
] as IItemStack[];

for i in metalPlates {
    removeTableRecipe(i);
}

//remove gears recipes in casting table
removeTableRecipe(<gregtech:meta_item_2:*>);

//remove useless items
val itemDisabled = [
    <tconstruct:rack>,
    <tconstruct:rack:1>,
    <tconstruct:punji>,
    <tconstruct:materials:12>,
    <tconstruct:materials:13>,
    <tconstruct:materials:50>,
    <tconstruct:wood_rail>,
    <tconstruct:wood_rail_trapdoor>,
    <tconstruct:throwball>,
    <tconstruct:throwball:1>,
    <tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}),
] as IItemStack[];

for i in itemDisabled {
    JEI.removeAndHide(i);
}

//remove thermal alloy
val thermal as ILiquidStack[] = [
    <liquid:constantan>,
    <liquid:signalum>,
    <liquid:lumium>
];
for i in thermal {
    mods.tconstruct.Alloy.removeRecipe(i);
}

//ardite in arc
furnace.remove(<tconstruct:ingots:1>);

//remove alloying in seared
val alloying as ILiquidStack[] = [
    <liquid:enderium>,
    <liquid:manyullyn>
];

for i in alloying {
    mods.tconstruct.Alloy.removeRecipe(i);
}
//end

//remove pink sllime
recipes.removeByRecipeName("tconstruct:common/slime/pink/congealed");
recipes.removeByRecipeName("tconstruct:gadgets/slimeboots/fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slimesling/fallback");

//remove material alloying
    #dark steel
val DustDarksteel as IItemStack[] = [
    <gregtech:meta_item_1:502>,
    <gregtech:meta_item_1:1502>,
    <gregtech:meta_item_1:2502>
];

for i in DustDarksteel {
    mods.tconstruct.Melting.removeRecipe(<liquid:dark_steel>,i);
}
    #stellar
val DustStellar as IItemStack[] = [
    <gregtech:meta_item_1:501>,
    <gregtech:meta_item_1:1501>,
    <gregtech:meta_item_1:2501>
];

for i in DustStellar {
    mods.tconstruct.Melting.removeRecipe(<liquid:stellar_alloy>,i);
}
