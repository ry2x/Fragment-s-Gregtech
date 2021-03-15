//import crafttweaker II
import crafttweaker.item.IItemStack;

/*
* Hide Dark Steel Upgrade items from JEI
* Written here as it uses nbt tag systems
*/

val hideJEI as IItemStack[] =[
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}),

    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte}),

    <minecraft:potion>.withTag({Potion: "enderio:floating"}),
    <minecraft:potion>.withTag({Potion: "enderio:strong_floating"}),
    <minecraft:potion>.withTag({Potion: "enderio:long_floating"}),
	<minecraft:potion>.withTag({Potion: "enderio:withering"}),
	<minecraft:potion>.withTag({Potion: "enderio:long_withering"}),
	<minecraft:potion>.withTag({Potion: "enderio:confusion"}),
	<minecraft:potion>.withTag({Potion: "enderio:long_confusion"}),

	<minecraft:splash_potion>.withTag({Potion: "enderio:floating"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:strong_floating"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:long_floating"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:withering"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:confusion"}),
	<minecraft:splash_potion>.withTag({Potion: "enderio:long_confusion"}),

	<minecraft:lingering_potion>.withTag({Potion: "enderio:floating"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:strong_floating"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:long_floating"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:confusion"}),
	<minecraft:lingering_potion>.withTag({Potion: "enderio:long_confusion"}),

	<minecraft:tipped_arrow>.withTag({Potion: "enderio:floating"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:strong_floating"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:long_floating"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:long_withering"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:confusion"}),
	<minecraft:tipped_arrow>.withTag({Potion: "enderio:long_confusion"}),
];

for i in hideJEI {
    mods.jei.JEI.hide(i);
}
