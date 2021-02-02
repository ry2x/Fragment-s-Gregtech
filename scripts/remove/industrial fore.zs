//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//import JEI function
import mods.jei.JEI;

val noneed = [
    //remove machine and tools
    <industrialforegoing:meat_feeder>,
    <industrialforegoing:laser_lens:*>,
    <industrialforegoing:laser_lens_inverted:*>,
    <industrialforegoing:straw>,
    <industrialforegoing:pink_slime>,
    <industrialforegoing:pink_slime_ingot>,
    <industrialforegoing:energy_field_addon>,
    <industrialforegoing:infinity_drill:*>,
    <industrialforegoing:black_hole_label>,
    //remove plastic use poly instead
    <industrialforegoing:tinydryrubber>,
    <industrialforegoing:dryrubber>,
    <industrialforegoing:plastic>,
    <forge:bucketfilled>.withTag({FluidName: "latex", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "biofuel", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "if.protein", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "if.ore_fluid_raw", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "if.ore_fluid_fermented", Amount: 1000}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "industrialforegoing:pink_slime"}})
] as IItemStack[];

for item in noneed {
    recipes.remove(item);
    JEI.hide(item);
}

val fluid = [
    <fluid:latex>,
    <fluid:biofuel>,
    <fluid:if.protein>,
    <fluid:if.ore_fluid_raw>,
    <fluid:if.ore_fluid_fermented>, 
] as ILiquidStack[];

for i in fluid {
    JEI.hide(i);
}

//end