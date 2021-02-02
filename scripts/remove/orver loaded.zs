//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//remove OP items
val OP = [
    <overloaded:creative_generator>,
    <overloaded:multi_tool>,
    <overloaded:ray_gun>,
    //remove Compressed blocks
    <overloaded:compressed_cobblestone:*>,
    <overloaded:compressed_sand:*>,
    <overloaded:compressed_stone:*>,
    <overloaded:compressed_obsidian:*>,
    <overloaded:compressed_netherrack:*>,
    <overloaded:compressed_dirt:*>,
    <overloaded:compressed_gravel:*>
] as IItemStack[];

for i in OP {
    JEI.removeAndHide(i);
}

val end =[
    <overloaded:multi_helmet>,
    <overloaded:multi_chestplate>,
    <overloaded:multi_leggings>,
    <overloaded:multi_boots>,
    <overloaded:settings_editor>,
    <overloaded:railgun>,
] as IItemStack[];

for i in end {
    recipes.remove(i);
}

