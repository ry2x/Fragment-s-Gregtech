//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//remove flux cable 
val Flux = [
    <thermaldynamics:duct_0:*>,
    <thermaldynamics:duct_16:4>,
    <thermaldynamics:duct_16:5>,
    <thermaldynamics:duct_32:4>,    
    <thermaldynamics:duct_32:5>,
    <thermaldynamics:duct_32:6>,
    <thermaldynamics:duct_32:7>,
] as IItemStack[];

for item in Flux {
    JEI.removeAndHide(item);
}

//remove cover
JEI.removeAndHide(<thermaldynamics:cover:*>);

//remove rockwools
JEI.removeAndHide(<thermalfoundation:rockwool:*>);

//remove conversion kit
JEI.hide(<thermalfoundation:upgrade:*>);

//remove signalum security
JEI.removeAndHide(<thermalfoundation:security>);

//remove redprint
JEI.removeAndHide(<thermalfoundation:diagram_redprint>);

//remove tome of lexicon
JEI.removeAndHide(<thermalfoundation:tome_lexicon>);

//remove tome of knowledge
JEI.removeAndHide(<thermalfoundation:tome_experience>);

//remove coin
JEI.hide(<thermalfoundation:coin:*>);

//remove g
JEI.removeAndHide(<thermalfoundation:fertilizer:*>);

//remove bait
JEI.removeAndHide(<thermalfoundation:bait:*>);

//remove dye
JEI.removeAndHide(<thermalfoundation:dye:*>);

//remove useless materials...
val part = [
    <thermalfoundation:material:512>,
    <thermalfoundation:material:513>,
    <thermalfoundation:material:514>,
    <thermalfoundation:material:515>,
    <thermalfoundation:material:640>,
    <thermalfoundation:material:656>,
    <thermalfoundation:material:657>,
    <thermalfoundation:material:768>,
    <thermalfoundation:material:769>,
    <thermalfoundation:material:770>,
    <thermalfoundation:material:771>,
    <thermalfoundation:material:772>,
    <thermalfoundation:material:800>,
    <thermalfoundation:material:801>,
    <thermalfoundation:material:802>,
    <thermalfoundation:material:816>,
    <thermalfoundation:material:817>,
    <thermalfoundation:material:818>,
    <thermalfoundation:material:819>,
    <thermalfoundation:material:832>,
    <thermalfoundation:material:833>,
    //remove glass
    <thermalfoundation:glass:8>,
    <thermalfoundation:glass_alloy:4>,
    <thermalfoundation:glass_alloy:5>,
    <thermalfoundation:glass_alloy:6>,
    //remove dust
    <thermalfoundation:material:1028>,
    //remove slag
    <thermalfoundation:material:864>,
    <thermalfoundation:material:865>,
    <thermalfoundation:material:866>,
    <thermalfoundation:material:892>,
    <thermalfoundation:material:893>,
    <thermalfoundation:material:894>,
    <thermalfoundation:material:895>,
    <thermalfoundation:geode>
] as IItemStack[];

for item in part {
    JEI.removeAndHide(item);
}

//remove egg 
val eggDisabled = [
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blizz"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blitz"}}),
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:basalz"}})
] as IItemStack[];

for i in eggDisabled {
    JEI.removeAndHide(i);
}

//remove furnace materials
furnace.remove(<minecraft:glowstone_dust>, <thermalfoundation:material:894>);
furnace.remove(<minecraft:ender_pearl>, <thermalfoundation:material:895>);
furnace.remove(<minecraft:redstone>, <thermalfoundation:material:893>);
furnace.remove(<thermalfoundation:material:864>);
