//import crafttweaker II
import crafttweaker.item.IItemStack;

/*
* Hide Dark Steel Upgrade items from JEI
* Written here as it uses nbt tag systems
*/

val hideJEI as IItemStack[] =[
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon", "enderio:enabled": 1 as byte}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel", "enderio:enabled": 1 as byte}),
];

for i in hideJEI {
    mods.jei.JEI.hide(i);
}
