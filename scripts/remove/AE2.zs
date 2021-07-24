//import crafttweaker
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//import oredict
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//import greg recipe map
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;

//import AE2
import mods.appliedenergistics2.Grinder;
import mods.appliedenergistics2.Inscriber;

//import JEI function
import mods.jei.JEI;

//remove crank
JEI.removeAndHide(<appliedenergistics2:crank>);

//hide ore
val ore = [
    <appliedenergistics2:charged_quartz_ore>,
    <appliedenergistics2:quartz_ore>
] as IItemStack[];

for i in ore {
    JEI.hide(i);
}

//remove grinder from AE2
JEI.hideCategory("appliedenergistics2.grinder");
JEI.removeAndHide(<appliedenergistics2:grindstone>);

//remove recipes of AE adaptor
recipes.remove(<appliedenergistics2:energy_acceptor>);

//remove energy generator and capacitor
val energy as IItemStack[] = [
    <appliedenergistics2:vibration_chamber>,
    <appliedenergistics2:energy_cell>,
    <appliedenergistics2:energy_cell>,
    <appliedenergistics2:dense_energy_cell>,
    <appliedenergistics2:dense_energy_cell>,
];
for i in energy {
    JEI.removeAndHide(i);
}

//remove tools
val tool as IItemStack[] = [
    <appliedenergistics2:nether_quartz_hoe>,
    <appliedenergistics2:nether_quartz_pickaxe>,
    <appliedenergistics2:nether_quartz_spade>,
    <appliedenergistics2:nether_quartz_sword>,
    <appliedenergistics2:certus_quartz_axe>,
    <appliedenergistics2:certus_quartz_hoe>,
    <appliedenergistics2:certus_quartz_spade>,
    <appliedenergistics2:certus_quartz_pickaxe>,
    <appliedenergistics2:certus_quartz_sword>,
    <appliedenergistics2:charged_staff>,
    <appliedenergistics2:matter_cannon>,
    <appliedenergistics2:portable_cell>,
    <appliedenergistics2:entropy_manipulator>,
    <appliedenergistics2:nether_quartz_axe>,
];

for i in tool {
    JEI.removeAndHide(i);
}

//remove bread
furnace.remove(<minecraft:bread>);

//remove silicon
furnace.remove(<appliedenergistics2:material:5>);

//remove bio
JEI.removeAndHide(<appliedenergistics2:biometric_card>);

//lazy AE2
//remove circuit etch
JEI.removeAndHide(<threng:machine:2>);
JEI.hideCategory("threng.etch");
Inscriber.removeRecipe(<threng:material:2>);

//extra cells
JEI.removeAndHide(<extracells:part.base:8>);
mods.jei.JEI.removeAndHide(<extracells:vibrantchamberfluid>);
mods.jei.JEI.removeAndHide(<extracells:storage.fluid.portable>);
mods.jei.JEI.removeAndHide(<extracells:storage.physical:4>);
mods.jei.JEI.removeAndHide(<extracells:certustank>);
