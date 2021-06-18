//import JEI function
import mods.jei.JEI;
//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//translocator
val translocator as IItemStack[] = [
    <translocators:translocator_part:1>,
    <translocators:translocator_part>
];
for i in translocator {
    JEI.addDescription(i,"Stack Upgrade = GlowStone Dust","","Remain Upgrade = Diamond Dust");
}

//AE2 energy adaptor
JEI.addDescription(<appliedenergistics2:energy_acceptor>,"This Block is a useless in this mod pack because AE2 blocks accept RF(FE) energy.");

//AE2 creative dense capacitor
JEI.addDescription(<appliedenergistics2:creative_energy_cell>,"Removed All Capacitor And Generator From AE2, But You Can Use RF(FE) Energy To AE2 Machines.");

//railcraft chunkloader
JEI.addDescription(<railcraft:worldspike>,"All Of RailCraft's ChunkLoaders are removed.","Use Other ChunkLoaders.");

//code chicken lib
<chickenchunks:chunk_loader>.addShiftTooltip("you are clever!");

//lightning rod
<lightningrods:lightning_rod>.addShiftTooltip("Do u wanna be a...?");
JEI.addDescription(<lightningrods:lightning_rod>,"It Has Huge Baffa That Is 1MRF=0.25MGTEU.","Wow....Incredible.. ");

//tesseract
JEI.addDescription(<tesseract:tesseract>,"Tesseract Comes From Old Thermal Expantion!","From TE_1.7");

//moss
<kythsopmoss:overpowered_moss>.addTooltip("You Need More Power?");
JEI.addDescription(<kythsopmoss:overpowered_moss>,"This Moss Is Very OP.","It Comes From Old Version TinkersCon!","Funtastic!!");

//scannable
<scannable:module_ore_rare>.addShiftTooltip(format.aqua("Detect GregTech's Ores!"));
JEI.addDescription(<scannable:module_ore_rare>,"This module detects Most Gregtech's Ores.","It's So Helpful!");
JEI.addDescription(<scannable:scanner>,"It Is Very Useful Item.","Right Click And Hold To Use This Item.");
    #re-add name
<scannable:module_ore_rare>.displayName = "GregTech Ore Module";

//king
<overloaded:railgun>.addTooltip(format.yellow("king Is KING"));

//quark carpet of leaf
val carpets as IItemStack[] = [
    <quark:leaf_carpet:7>,
    <quark:leaf_carpet>,
    <quark:leaf_carpet:1>,
    <quark:leaf_carpet:2>,
    <quark:leaf_carpet:3>,
    <quark:leaf_carpet:4>,
    <quark:leaf_carpet:5>,
    <quark:leaf_carpet:6>,
];
for i in carpets {
    JEI.addDescription(i,"Can You Stand On This??");
}

//practical logi
#entity radar
JEI.addDescription(<practicallogistics2:entitytransceiver>,"It's disabled due to be broken.");
JEI.addDescription(<practicallogistics2:entitynode>,"It's disabled due to be broken.");

//exu2
JEI.addDescription(<extrautils2:drum>,"It has 16B capacity!");
JEI.addDescription(<extrautils2:drum:1>,"It has 256B capacity!");
JEI.addDescription(<extrautils2:drum:2>,"It has 4096B capacity!");
