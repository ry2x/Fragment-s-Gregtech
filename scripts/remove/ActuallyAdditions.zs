//import greg
import mods.gregtech.recipe.RecipeMap;

//import crafttweaker II
import crafttweaker.item.IItemStack;

val removal as IItemStack[] = [
	<actuallyadditions:block_battery_box>,
	<actuallyadditions:block_farmer>,
	<actuallyadditions:block_bio_reactor>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:block_miner>,
	<actuallyadditions:block_ranged_collector>,
	<actuallyadditions:block_directional_breaker>,
	<actuallyadditions:block_leaf_generator>,
	<actuallyadditions:block_treasure_chest>,
	<actuallyadditions:block_xp_solidifier>,
	<actuallyadditions:block_smiley_cloud>,
	<actuallyadditions:block_enervator>,
	<actuallyadditions:block_lava_factory_controller>,
	<actuallyadditions:block_canola_press>,
	<actuallyadditions:block_phantom_breaker>,
	<actuallyadditions:block_coal_generator>,
	<actuallyadditions:block_oil_generator>,
	<actuallyadditions:block_fermenting_barrel>,
	<actuallyadditions:block_feeder>,
	<actuallyadditions:block_giant_chest>,
	<actuallyadditions:block_giant_chest_medium>,
	<actuallyadditions:block_giant_chest_large>,
	<actuallyadditions:block_grinder>,
	<actuallyadditions:block_grinder_double>,
	<actuallyadditions:block_furnace_double>,
	<actuallyadditions:block_furnace_solar>,
	<actuallyadditions:block_heat_collector>,
	<actuallyadditions:block_breaker>,
	<actuallyadditions:block_placer>,
	<actuallyadditions:block_fluid_placer>,
	<actuallyadditions:block_fluid_collector>,
	<actuallyadditions:item_wings_of_the_bats>,
	<actuallyadditions:item_drill:*>,
	<actuallyadditions:block_compost>,
	<actuallyadditions:item_misc:22>,
	<actuallyadditions:item_misc:21>,
	<actuallyadditions:item_chest_to_crate_upgrade>,
	<actuallyadditions:item_crystal_shard>,
    <actuallyadditions:item_crystal_shard:1>,
    <actuallyadditions:item_crystal_shard:2>,
    <actuallyadditions:item_crystal_shard:3>,
    <actuallyadditions:item_crystal_shard:4>,
    <actuallyadditions:item_crystal_shard:5>
];

for i in removal {
	mods.jei.JEI.removeAndHide(i);
}
