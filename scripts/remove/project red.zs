//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//remove the metals and slicons
val metals = [
    <projectred-core:resource_item:250>,
    <projectred-core:resource_item:251>,
    <projectred-core:resource_item:252>,
    <projectred-core:resource_item:301>,
    <projectred-core:resource_item:310>,
    <projectred-core:resource_item:311>,
    <projectred-core:resource_item:312>,
] as IItemStack[];

for item in metals {
    JEI.removeAndHide(item);
}

//remove furnace slicons 
val slicons = [
    <projectred-core:resource_item:103>,
    <projectred-core:resource_item:104>,
    <projectred-core:resource_item:105>,
    <projectred-core:resource_item:300>,
    <projectred-core:resource_item:320>,
    <projectred-core:resource_item:341>,
    <projectred-core:resource_item:342>,
] as IItemStack[];

for item in slicons {
    furnace.remove(item);
    JEI.removeAndHide(item);
}

//remove coils that we don't need.
val coils = [
    <projectred-core:resource_item:400>,
    <projectred-core:resource_item:402>,
    <projectred-core:resource_item:410>,
] as IItemStack[];

for item in coils {
    JEI.removeAndHide(item);
}

//remove tools and backpaacks
val nonuse = [
    <projectred-exploration:backpack:*>,
    //ruby tools
    <projectred-exploration:ruby_axe>,
    <projectred-exploration:ruby_hoe>,
    <projectred-exploration:ruby_pickaxe>,
    <projectred-exploration:ruby_shovel>,
    <projectred-exploration:ruby_sword>,
    <projectred-exploration:ruby_saw>,
    <projectred-exploration:ruby_sickle>,
    //sapphire tools
    <projectred-exploration:sapphire_axe>,
    <projectred-exploration:sapphire_hoe>,
    <projectred-exploration:sapphire_pickaxe>,
    <projectred-exploration:sapphire_shovel>,
    <projectred-exploration:sapphire_sword>,
    <projectred-exploration:sapphire_saw>,
    <projectred-exploration:sapphire_sickle>,
    //peridot tools
    <projectred-exploration:peridot_axe>,
    <projectred-exploration:peridot_hoe>,
    <projectred-exploration:peridot_pickaxe>,
    <projectred-exploration:peridot_shovel>,
    <projectred-exploration:peridot_sword>,
    <projectred-exploration:peridot_saw>,
    <projectred-exploration:peridot_sickle>,
    //sickles
    <projectred-exploration:stone_sickle>,
    <projectred-exploration:wooden_sickle>,
    <projectred-exploration:iron_sickle>,
    <projectred-exploration:golden_sickle>,
    <projectred-exploration:diamond_sickle>,
] as IItemStack[];

for item in nonuse {
    JEI.removeAndHide(item);
}

//remove others
val useless = [
    <projectred-core:resource_item:600>,
    <projectred-exploration:stone_wall:11>,
    <projectred-exploration:barrel>,
    <projectred-transmission:wire:34>,
    <projectred-transmission:framed_wire:34>,
    <projectred-exploration:golden_saw>
] as IItemStack[];

for item in useless {
    JEI.removeAndHide(item);
}

