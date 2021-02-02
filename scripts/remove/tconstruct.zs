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
val metalblocks = [
    <minecraft:gold_block>,
    <minecraft:iron_block>,
    <minecraft:redstone_block>,
    <gregtech:compressed_0:*>,
    <gregtech:compressed_1:*>,
    <gregtech:compressed_2:*>,
    <gregtech:compressed_3:*>,
    <gregtech:compressed_4:*>,
    <gregtech:compressed_5:*>,
    <gregtech:compressed_6:*>,
    <gregtech:compressed_7:*>,
    <gregtech:compressed_8:*>,
    <gregtech:compressed_9:*>,
    <gregtech:compressed_10:*>,
    <gregtech:compressed_11:*>,
    <gregtech:compressed_12:*>,
    <gregtech:compressed_13:*>,
    <gregtech:compressed_14:*>,
    <gregtech:compressed_15:*>,
    <gregtech:compressed_16:*>,
    <gregtech:compressed_17:*>,
    <gregtech:compressed_18:*>,
    <gregtech:compressed_19:*>,
    <gregtech:compressed_20:*>,
    <gregtech:compressed_21:*>,
    <gregtech:compressed_22:*>,
    <gregtech:compressed_23:*>,
    <gregtech:compressed_24:*>,
    <gregtech:compressed_25:*>,
    <gregtech:compressed_26:*>,
    <gregtech:compressed_27:*>,
    <gregtech:compressed_28:*>,
    <gregtech:compressed_29:*>,
    <gregtech:compressed_31:*>,
] as IItemStack[];

for i in metalblocks {
    removeBasinRecipe(i);
}

//remove plate recipes in casting table
val metalplates = [
    <gregtech:meta_item_1:*>
] as IItemStack[];

for i in metalplates {
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
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "tconstruct:blueslime"}}),
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