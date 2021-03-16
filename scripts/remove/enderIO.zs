//import crafttweaker II
import crafttweaker.item.IItemStack;

/*
* Hide Dark Steel Upgrade items from JEI
* Written here as it uses nbt tag systems
*/

val hideJEI as IItemStack[] =[
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
