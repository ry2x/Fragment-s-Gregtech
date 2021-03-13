//import crafttweaker II
import crafttweaker.item.IItemStack;
/*
* I don't know how to hide item with  nbt tag using enderIO
*it just hide them from JEI
*/
val hideJEI as IItemStack[] =[
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
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:travel"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:spoon"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:carpet"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:depth"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:direct"}),
    <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:hoe"}),
];

for i in hideJEI {
    mods.jei.JEI.hide(i);
}