//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//import Forestry Carpenter function 
import mods.forestry.Carpenter.removeRecipe;

val noneed = [
    <railcraft:cart_spawner:*>,
    <railcraft:bore:*>,
    <railcraft:cart_trade_station:*>,
    <railcraft:cart_worldspike_standard>,
    <railcraft:cart_worldspike_admin>,
    <railcraft:cart_worldspike_personal>,
    <railcraft:cart_redstone_flux>,
    <railcraft:trade_station>,
    <railcraft:borehead_bronze>,
    <railcraft:borehead_iron>,
    <railcraft:borehead_steel>,
    <railcraft:borehead_diamond>,
    <railcraft:steam_turbine>,
    <railcraft:turbine_rotor>,
    <railcraft:worldspike:1>,
    <railcraft:worldspike:2>,
    <railcraft:worldspike:3>,
    <railcraft:worldspike_point>,
    <railcraft:backpack_apothecary_t1>,
    <railcraft:backpack_iceman_t1>,
    <railcraft:backpack_signalman_t1>,
    <railcraft:firestone_cracked>,
    <railcraft:firestone_raw>,
    <railcraft:firestone_refined>,
    <railcraft:locomotive_electric>,
    <railcraft:cart_tnt_wood>,
    <railcraft:frame>,
    <railcraft:worldlogic>,
    <railcraft:rock_crusher>,
    <railcraft:firestone_cut>,
    <railcraft:backpack_trackman_t1>,
    <railcraft:equipment:2>,
    <railcraft:charge_feeder:1>,
    <railcraft:admin_steam_producer>,
    //remove electric rails since we can't use power producer without ic2ex.
    <railcraft:track_flex_hs_electric>,
    <railcraft:track_flex_electric>,
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_booster"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_buffer"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_control"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_detector"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_disembarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_dumping"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_embarking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_delayed"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_gated"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_locking"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_messenger"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_one_way"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_high_speed_electric", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_priming"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_launcher"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_whistle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_locomotive"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_throttle"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_routing"}}),
    <railcraft:track_outfitted>.withTag({railcraft: {rail: "railcraft_electric", kit: "railcraft_coupler"}})
] as IItemStack[];

for item in noneed {
    recipes.remove(item);
    JEI.hide(item);
}

val noneed2 = [
    <railcraft:backpack_apothecary_t2>,
    <railcraft:backpack_iceman_t2>,
    <railcraft:backpack_trackman_t2>,
    <railcraft:backpack_signalman_t2>,
    <railcraft:chest_void>,
    <railcraft:cart_chest_void>,
]  as IItemStack[];

for item in noneed2 {
    removeRecipe(item);
    JEI.hide(item);
}

val hide = [
    <railcraft:anvil:1>,
    <railcraft:anvil:2>
] as IItemStack[];

for i in hide {
    JEI.hide(i);
}
//end