//import crafttweaker II
import crafttweaker.item.IItemStack;

//import JEI function
import mods.jei.JEI;

//remove deprecated cells and buses
val dpcitemsDisabled = [
    <extracells:part.base>,
    <extracells:part.base:1>,
    <extracells:part.base:2>,
    <extracells:part.base:3>,
    <extracells:part.base:4>,
    <extracells:part.base:5>,
    <extracells:part.base:6>,
    <extracells:part.base:9>,
    <extracells:storage.fluid>,
    <extracells:storage.fluid:1>,
    <extracells:storage.fluid:2>,
    <extracells:storage.fluid:3>,
    <extracells:storage.component:4>,
    <extracells:storage.component:5>,
    <extracells:storage.component:6>,
    <extracells:storage.component:7>,
    <extracells:ecbaseblock>,
] as IItemStack[];

for i in dpcitemsDisabled {
    JEI.removeAndHide(i);
}

// hide useless pattern
JEI.hide(<extracells:pattern.fluid:*>);