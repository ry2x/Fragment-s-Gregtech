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
	<actuallyadditions:item_misc:10>,
	<actuallyadditions:item_misc:11>,
	<actuallyadditions:item_misc:15>,
	<actuallyadditions:item_crate_keeper>,
	<actuallyadditions:item_small_to_medium_crate_upgrade>,
	<actuallyadditions:item_medium_to_large_crate_upgrade>,
	<actuallyadditions:item_drill_upgrade_block_placing>,
	<actuallyadditions:item_drill_upgrade_speed>,
	<actuallyadditions:item_drill_upgrade_speed_ii>,
	<actuallyadditions:item_drill_upgrade_speed_iii>,
	<actuallyadditions:item_drill_upgrade_silk_touch>,
	<actuallyadditions:item_drill_upgrade_fortune>,
	<actuallyadditions:item_drill_upgrade_fortune_ii>,
	<actuallyadditions:item_drill_upgrade_three_by_three>,
	<actuallyadditions:item_drill_upgrade_five_by_five>,
	<actuallyadditions:block_phantom_placer>,
	<actuallyadditions:item_crafter_on_a_stick>,
	<actuallyadditions:item_bag>,
	<actuallyadditions:item_rice_seed>,
	<actuallyadditions:item_food:16>
];

for i in removal {
	mods.jei.JEI.removeAndHide(i);
}
