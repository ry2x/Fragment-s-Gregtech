//import crafttweaker II
import crafttweaker.item.IItemStack;

//Add Granite Chiseling
mods.chisel.Carving.addGroup("red_granite");
mods.chisel.Carving.addGroup("black_granite");
mods.chisel.Carving.addVariation("red_granite", <gregtech:granite:1>);
mods.chisel.Carving.addVariation("red_granite", <gregtech:granite:3>);
mods.chisel.Carving.addVariation("red_granite", <gregtech:granite:7>);
mods.chisel.Carving.addVariation("red_granite", <gregtech:granite:13>);
mods.chisel.Carving.addVariation("black_granite", <gregtech:granite>);
mods.chisel.Carving.addVariation("black_granite", <gregtech:granite:2>);
mods.chisel.Carving.addVariation("black_granite", <gregtech:granite:6>);
mods.chisel.Carving.addVariation("black_granite", <gregtech:granite:12>);
mods.chisel.Carving.addVariation("marble", <gregtech:mineral>);
mods.chisel.Carving.addVariation("marble", <gregtech:mineral:1>);
mods.chisel.Carving.addVariation("marble", <gregtech:mineral:5>);
mods.chisel.Carving.addVariation("marble", <gregtech:mineral:12>);
mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:2>);
mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:3>);
mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:7>);
mods.chisel.Carving.addVariation("basalt", <gregtech:mineral:14>);

//add group of portal frame
mods.chisel.Carving.addGroup("portal_frame");
val portal as IItemStack[]=[
    <sonarcore:stablestone_plain>,
    <sonarcore:stablestoneblackrimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_lightgrey>,
    <sonarcore:stablestoneblackrimmed_plain>,
];
for i in portal {
    mods.chisel.Carving.addVariation("portal_frame", i);
}
