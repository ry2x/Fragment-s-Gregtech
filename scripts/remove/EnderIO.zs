//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

val noneed = [
    <enderio:item_dark_steel_upgrade:*>,
    <enderio:item_broken_spawner:*>,
    <enderio:block_infinity:*>,
    <enderio:block_holy_fog>,
    <enderio:block_dark_paper_anvil:*>,
    <enderio:item_end_steel_shield>,
    <enderio:item_dark_steel_shield>,
    <enderio:item_inventory_charger_simple>,
    <enderio:item_inventory_charger_basic>,
    <enderio:item_inventory_charger>,
    <enderio:item_inventory_charger_vibrant>,
    <enderio:item_material:76>,
    <enderio:item_material:78>,
    <enderio:item_material:79>,
    <enderio:item_material:80>,
    <enderio:item_material:20>,
    <enderio:item_material>,
    <enderio:block_infinity:*>,
    <enderio:item_soul_filter_normal>,
    <enderio:item_soul_filter_big>
] as IItemStack[];

for item in noneed {
    JEI.removeAndHide(item);
}

//remove useless glass
val glassDisabled = [
    <enderio:block_holy_fused_quartz:*>,
    <enderio:block_holy_enlightened_fused_quartz:*>,
    <enderio:block_holy_enlightened_fused_glass:*>,
    <enderio:block_holy_dark_fused_quartz:*>,
    <enderio:block_holy_dark_fused_glass:*>,
    <enderio:block_unholy_fused_quartz:*>,
    <enderio:block_unholy_fused_glass:*>,
    <enderio:block_unholy_enlightened_fused_quartz:*>,
    <enderio:block_unholy_enlightened_fused_glass:*>,
    <enderio:block_unholy_dark_fused_quartz:*>,
    <enderio:block_unholy_dark_fused_glass:*>,
    <enderio:block_pasture_fused_quartz:*>,
    <enderio:block_pasture_fused_glass:*>,
    <enderio:block_pasture_enlightened_fused_quartz:*>,
    <enderio:block_pasture_enlightened_fused_glass:*>,
    <enderio:block_pasture_dark_fused_quartz:*>,
    <enderio:block_pasture_dark_fused_glass:*>,
    <enderio:block_not_holy_fused_quartz:*>,
    <enderio:block_not_holy_fused_glass:*>,
    <enderio:block_not_holy_enlightened_fused_quartz:*>,
    <enderio:block_not_holy_enlightened_fused_glass:*>,
    <enderio:block_not_holy_dark_fused_quartz:*>,
    <enderio:block_not_holy_dark_fused_glass:*>,
    <enderio:block_not_unholy_fused_quartz:*>,
    <enderio:block_not_unholy_fused_glass:*>,
    <enderio:block_not_unholy_enlightened_fused_quartz:*>,
    <enderio:block_not_unholy_enlightened_fused_glass:*>,
    <enderio:block_not_unholy_dark_fused_quartz:*>,
    <enderio:block_not_unholy_dark_fused_glass:*>,
    <enderio:block_not_pasture_fused_quartz:*>,
    <enderio:block_not_holy_dark_fused_quartz:*>,
    <enderio:block_not_holy_dark_fused_glass:*>,
    <enderio:block_not_unholy_fused_quartz:*>,
    <enderio:block_not_unholy_fused_glass:*>,
    <enderio:block_not_unholy_enlightened_fused_quartz:*>,
    <enderio:block_not_unholy_enlightened_fused_glass:*>,
    <enderio:block_not_pasture_fused_glass:*>,
    <enderio:block_not_pasture_enlightened_fused_quartz:*>,
    <enderio:block_not_pasture_enlightened_fused_glass:*>,
    <enderio:block_not_pasture_dark_fused_quartz:*>,
    <enderio:block_not_pasture_dark_fused_glass:*>
] as IItemStack[];

for i in glassDisabled {
    JEI.removeAndHide(i);
}

recipes.remove(<enderio:item_material>);

//steller
val disabled = [
    <enderio:block_alloy_endergy:*>,
    <enderio:item_alloy_endergy_ingot:*>,
    <enderio:item_alloy_endergy_nugget:*>,
    <enderio:item_alloy_endergy_ball:*>,
    <enderio:item_endergy_conduit>,
    <enderio:item_endergy_conduit:1>,
    <enderio:item_endergy_conduit:2>,
    <enderio:item_endergy_conduit:3>,
    <enderio:item_endergy_conduit:4>,
    <enderio:item_endergy_conduit:8>,
    <enderio:item_endergy_conduit:6>,
    <enderio:item_endergy_conduit:7>,
    <enderio:item_endergy_conduit:5>,
    <enderio:item_stellar_alloy_sword>,
    <enderio:item_stellar_alloy_pickaxe>,
    <enderio:item_stellar_alloy_axe>,
    <enderio:item_stellar_alloy_helmet>,
    <enderio:item_stellar_alloy_boots>,
    <enderio:item_stellar_alloy_chestplate>,
    <enderio:item_stellar_alloy_leggings>,
    <enderio:item_capacitor_melodic>,
    <enderio:item_capacitor_crystalline>,
    <enderio:item_capacitor_silver>,
    <enderio:item_capacitor_energetic_silver>,
    <enderio:item_capacitor_vivid>,
    <enderio:item_capacitor_stellar>,
    <enderio:item_capacitor_totemic>,
    <enderio:item_capacitor_grainy>,
    <enderio:item_material:75>
] as IItemStack[];

for i in disabled {
    recipes.remove(i);
    JEI.hide(i);
}

//end