//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockProperties;
import crafttweaker.block.IBlock;

//import JEI function
import mods.jei.JEI;

//import greg
import mods.gregtech.recipe.RecipeMap;

//import AE2
import mods.appliedenergistics2.Inscriber;
import mods.threng.Centrifuge;
import mods.threng.Aggregator;

val circuit_assembler = RecipeMap.getByName("circuit_assembler");
val alloy = RecipeMap.getByName("alloy_smelter");
val assembler = RecipeMap.getByName("assembler");
val autoclave = RecipeMap.getByName("autoclave");
val canner = RecipeMap.getByName("canner");
val unpacker = RecipeMap.getByName("unpacker");
val forming = RecipeMap.getByName("forming_press");
val macerate = RecipeMap.getByName("macerator");
val implosion = RecipeMap.getByName("implosion_compressor");
val mixer = RecipeMap.getByName("mixer");
val blast_furnace = RecipeMap.getByName("blast_furnace");
val compressor = RecipeMap.getByName("compressor");

//val
val basicCard as IItemStack = <appliedenergistics2:material:25>;
val goodCard as IItemStack = <appliedenergistics2:material:28>;
val calculate as IItemStack = <appliedenergistics2:material:23>;
val engineer as IItemStack = <appliedenergistics2:material:24>;
val logic as IItemStack = <appliedenergistics2:material:22>;
val formation as IItemStack = <appliedenergistics2:material:43>;
val conjugation as IItemStack = <appliedenergistics2:material:44>;

//wireless terminal and color changer
recipes.replaceAllOccurences(<appliedenergistics2:energy_cell>,<ore:MVcap>,<appliedenergistics2:color_applicator>);
recipes.replaceAllOccurences(<appliedenergistics2:dense_energy_cell>,<ore:HVcap>,<appliedenergistics2:wireless_terminal>);
recipes.replaceAllOccurences(<appliedenergistics2:dense_energy_cell>,<ore:HVcap>,<extracells:terminal.fluid.wireless>);

//skystone macerate!
macerate.recipeBuilder()
    .inputs(<appliedenergistics2:sky_stone_block>)
    .outputs(<appliedenergistics2:material:45>*9)
    .duration(120)
    .EUt(16)
    .buildAndRegister();

//fluix crystal macerate
macerate.recipeBuilder()
    .inputs(<appliedenergistics2:fluix_block>)
    .outputs(<ore:dustFluix>.firstItem*8)
    .duration(240)
    .EUt(16)
    .buildAndRegister();
macerate.recipeBuilder()
    .inputs(<appliedenergistics2:material:7>)
    .outputs(<ore:dustFluix>.firstItem*2)
    .duration(60)
    .EUt(16)
    .buildAndRegister();
macerate.recipeBuilder()
    .inputs(<appliedenergistics2:material:12>)
    .outputs(<ore:dustFluix>.firstItem)
    .duration(60)
    .EUt(16)
    .buildAndRegister();

//change vibrant glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy.recipeBuilder()
    .inputs(<enderio:block_holy_fused_glass:*>*16,<ore:gemFlawedNetherQuartz>)
    .outputs(<appliedenergistics2:quartz_glass>*16)
    .duration(60)
    .EUt(32)
    .buildAndRegister();
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
alloy.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>*16,<minecraft:glowstone_dust>)
    .outputs(<appliedenergistics2:quartz_vibrant_glass>*16)
    .duration(60)
    .EUt(32)
    .buildAndRegister();
<appliedenergistics2:quartz_vibrant_glass>.displayName = "Glowing Quartz Glass";

//fixture
recipes.remove(<appliedenergistics2:quartz_fixture>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_vibrant_glass>,<appliedenergistics2:smooth_sky_stone_block>)
    .outputs(<appliedenergistics2:quartz_fixture>*4)
    .duration(60)
    .EUt(8)
    .buildAndRegister();
<appliedenergistics2:quartz_fixture>.displayName = "Mini Lighting";

//recipes of inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>,[
    [<appliedenergistics2:smooth_sky_stone_block>,<gregtech:meta_item_1:32640>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<gregtech:machine:501>,<appliedenergistics2:smooth_sky_stone_block>],
    [<appliedenergistics2:smooth_sky_stone_block>,<ore:craftingPiston>,<appliedenergistics2:smooth_sky_stone_block>]
]);

//recipes of wireless point
recipes.remove(<appliedenergistics2:wireless_access_point>);
assembler.recipeBuilder()
    .inputs(engineer,<appliedenergistics2:part:16>,<appliedenergistics2:material:41>)
    .outputs(<appliedenergistics2:wireless_access_point>)
    .duration(50)
    .EUt(512)
    .buildAndRegister();

//recipes of charger
recipes.remove(<appliedenergistics2:charger>);
recipes.addShaped(<appliedenergistics2:charger>,[
    [<gregtech:cable:71>,<appliedenergistics2:smooth_sky_stone_block>,<gregtech:cable:71>],
    [<appliedenergistics2:smooth_sky_stone_block>,<gregtech:machine:501>,<appliedenergistics2:smooth_sky_stone_block>],
    [<gregtech:cable:71>,<appliedenergistics2:smooth_sky_stone_block>,<gregtech:cable:71>]
]);
//recipes of security terminal
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>,[
    [<ore:ingotGold>,<appliedenergistics2:material:37>,<ore:ingotGold>],
    [<appliedenergistics2:part:16>,<ore:MVcasing>,<appliedenergistics2:part:16>],
    [<ore:ingotIron>,engineer,<appliedenergistics2:chest>]
]);

//certus quartz to ae2 certus crystal
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_item_1:8202>*3)
	.fluidInputs([<liquid:water>*2100])
	.outputs(<appliedenergistics2:material>*8)
	.duration(1500)
	.EUt(128)
	.buildAndRegister();
//fluix perl in auto clave
recipes.remove(<ore:pearlFluix>);
autoclave.recipeBuilder()
	.inputs(<ore:dustFluix>*8)
	.fluidInputs([<liquid:ender>*1000])
	.outputs(<appliedenergistics2:material:9>*6)
	.duration(3000)
	.EUt(128)
	.buildAndRegister();
//circuit//
val circuitBase as IItemStack[] = [
    <appliedenergistics2:material:17>,
    <appliedenergistics2:material:18>,
    <appliedenergistics2:material:20>,
];
for i in circuitBase {
    Inscriber.removeRecipe(i);
}
//Printed Engineering Circuit
Inscriber.addRecipe(<appliedenergistics2:material:17>,<ore:plateAluminium>,true,<appliedenergistics2:material:14>);
//Printed Logic Circuit
Inscriber.addRecipe(<appliedenergistics2:material:18>,<ore:plateRoseGold>,true,<appliedenergistics2:material:15>);
//Printed Silicon
Inscriber.addRecipe(<appliedenergistics2:material:20>,<ore:plateSilicon>,true,<appliedenergistics2:material:19>);

//etching circuit with circuit_assembler//
val circuit as IItemStack[IItemStack] = {
    logic as IItemStack : <appliedenergistics2:material:18>,
    engineer as IItemStack : <appliedenergistics2:material:17>,
    calculate as IItemStack : <appliedenergistics2:material:16>,
};

for etched,printed  in circuit {
    Inscriber.removeRecipe(etched);
    circuit_assembler.recipeBuilder()
        .inputs(printed,<appliedenergistics2:material:20>)
        .fluidInputs([<liquid:redstone>*288])
        .notConsumable(<appliedenergistics2:material:15>)
        .outputs(etched)
        .duration(400)
        .EUt(128)
        .buildAndRegister();
}

//storages
val SHousing = <appliedenergistics2:material:39>;
recipes.remove(SHousing);
assembler.recipeBuilder()
    .inputs(<ore:ingotSteel>*6,<ore:wireGtSingleAnnealedCopper>*2,<appliedenergistics2:quartz_glass>*2)
    .outputs(SHousing)
    .duration(400)
    .EUt(128)
    .buildAndRegister();

val AE2Storages as IItemStack[IItemStack] = {
    #view cell
    <appliedenergistics2:view_cell> : <appliedenergistics2:material:16>,
    #item storage
    <appliedenergistics2:storage_cell_1k> : <appliedenergistics2:material:35>,
    <appliedenergistics2:storage_cell_4k> : <appliedenergistics2:material:36>,
    <appliedenergistics2:storage_cell_16k> : <appliedenergistics2:material:37>,
    <appliedenergistics2:storage_cell_64k> : <appliedenergistics2:material:38>,
    #fluid storage
    <appliedenergistics2:fluid_storage_cell_1k> : <appliedenergistics2:material:54>,
    <appliedenergistics2:fluid_storage_cell_4k> : <appliedenergistics2:material:55>,
    <appliedenergistics2:fluid_storage_cell_16k> : <appliedenergistics2:material:56>,
    <appliedenergistics2:fluid_storage_cell_64k> : <appliedenergistics2:material:57>,
    #spatial storage
    <appliedenergistics2:spatial_storage_cell_2_cubed> : <appliedenergistics2:material:32>,
    <appliedenergistics2:spatial_storage_cell_16_cubed> : <appliedenergistics2:material:33>,
    <appliedenergistics2:spatial_storage_cell_128_cubed> : <appliedenergistics2:material:34>,
    #blank pattern from cells
    <appliedenergistics2:material:52> : <appliedenergistics2:material>,
};

for storage, storageCores in AE2Storages {
    recipes.remove(storage);
    canner.recipeBuilder()
        .inputs(SHousing,storageCores)
        .outputs(storage)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    unpacker.recipeBuilder()
        .inputs(storage.withTag({}))
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
        .outputs(storageCores,SHousing)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
}

//storage core
val storageCore as IItemStack[] = [
    <appliedenergistics2:material:35>,
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <appliedenergistics2:material:54>,
    <appliedenergistics2:material:55>,
    <appliedenergistics2:material:56>,
    <appliedenergistics2:material:57>,
    <appliedenergistics2:material:32>,
    <appliedenergistics2:material:33>,
    <appliedenergistics2:material:34>,
];
for i in storageCore {
    recipes.remove(i);
}
    #item storage core
forming.recipeBuilder()
    .inputs(<ore:plateIron>,logic,<ore:certusGem>*4,<ore:dustRedstone>*4)
    .outputs(<appliedenergistics2:material:35>)
    .duration(300)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateAluminium>,<appliedenergistics2:material:35>*4,engineer,<ore:dustRedstone>*4)
    .outputs(<appliedenergistics2:material:36>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>,<appliedenergistics2:material:36>*4,engineer,<ore:dustDiamond>*4)
    .outputs(<appliedenergistics2:material:37>)
    .duration(600)
    .EUt(512)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateTungstenSteel>,<appliedenergistics2:material:37>*4,engineer,<ore:dustChromite>*4)
    .outputs(<appliedenergistics2:material:38>)
    .duration(2400)
    .EUt(2048)
    .buildAndRegister();
    #fluid storage core
forming.recipeBuilder()
    .inputs(<ore:plateIron>,logic,<ore:certusGem>*4,<ore:dustLapis>*4)
    .outputs(<appliedenergistics2:material:54>)
    .duration(300)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateAluminium>,<appliedenergistics2:material:54>*4,engineer,<ore:dustLapis>*4)
    .outputs(<appliedenergistics2:material:55>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>,<appliedenergistics2:material:55>*4,engineer,<ore:dustDiamond>*4)
    .outputs(<appliedenergistics2:material:56>)
    .duration(600)
    .EUt(512)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateTungstenSteel>,<appliedenergistics2:material:56>*4,engineer,<ore:dustChromite>*4)
    .outputs(<appliedenergistics2:material:57>)
    .duration(2400)
    .EUt(2048)
    .buildAndRegister();
    #Spatial storage core
forming.recipeBuilder()
    .inputs(<ore:plateSteel>*2,<ore:pearlFluix>*4,engineer,<ore:dustDiamond>*4)
    .outputs(<appliedenergistics2:material:32>)
    .duration(600)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateStainlessSteel>,<ore:pearlFluix>*2,engineer,<appliedenergistics2:material:32>*4)
    .outputs(<appliedenergistics2:material:33>)
    .duration(600)
    .EUt(512)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:plateRhodium>,<ore:pearlFluix>*2,engineer,<appliedenergistics2:material:33>*4)
    .outputs(<appliedenergistics2:material:34>)
    .duration(600)
    .EUt(2048)
    .buildAndRegister();

//core
conjugation.displayName = "Conjugation Core";
recipes.remove(conjugation);
recipes.remove(formation);
forming.recipeBuilder()
    .inputs(<ore:certusGem>,<ore:dustFluix>,engineer)
    .outputs(conjugation)
    .duration(600)
    .EUt(128)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<ore:fluixCrystal>,<ore:dustFluix>,logic)
    .outputs(formation)
    .duration(600)
    .EUt(128)
    .buildAndRegister();

//panels
    #illuminate panel
recipes.remove(<appliedenergistics2:part:180>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>,<ore:dustGlowstone>,<appliedenergistics2:quartz_glass>*3)
    .outputs(<appliedenergistics2:part:180>*3)
    .duration(60)
    .EUt(24)
    .buildAndRegister();
    #ME terminal
recipes.remove(<appliedenergistics2:part:380>);
assembler.recipeBuilder()
    .inputs(conjugation,logic,<ore:itemIlluminatedPanel>,formation)
    .outputs(<appliedenergistics2:part:380>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
    #ME fluid terminal
recipes.remove(<appliedenergistics2:part:520>);
assembler.recipeBuilder()
    .inputs(<ore:dustLapis>*4,<appliedenergistics2:part:380>,logic,conjugation)
    .outputs(<appliedenergistics2:part:520>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
    #Me crafting terminal
recipes.remove(<appliedenergistics2:part:360>);
assembler.recipeBuilder()
    .inputs(conjugation,engineer,<ore:workbench>)
    .outputs(<appliedenergistics2:part:360>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
    #storage monitor
recipes.remove(<appliedenergistics2:part:400>);
assembler.recipeBuilder()
    .inputs(<ore:itemIlluminatedPanel>,conjugation,logic)
    .outputs(<appliedenergistics2:part:400>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();
    #ME pattern terminal
recipes.remove(<appliedenergistics2:part:340>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:360>,conjugation,engineer,<appliedenergistics2:material:52>)
    .outputs(<appliedenergistics2:part:340>)
    .duration(80)
    .EUt(128)
    .buildAndRegister();
    #ME Interface terminal
recipes.remove(<appliedenergistics2:part:480>);
assembler.recipeBuilder()
    .inputs(logic,<appliedenergistics2:part:440>,conjugation,<ore:itemIlluminatedPanel>)
    .outputs(<appliedenergistics2:part:480>)
    .duration(80)
    .EUt(128)
    .buildAndRegister();
    #ME conversion terminal
recipes.remove(<appliedenergistics2:part:420>);
assembler.recipeBuilder()
    .inputs(<ore:itemIlluminatedPanel>,formation,conjugation)
    .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:3}))
    .outputs(<appliedenergistics2:part:420>)
    .duration(80)
    .EUt(24)
    .buildAndRegister();


//cards
    #memory card
recipes.remove(<appliedenergistics2:memory_card>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*2,<ore:plateRoseGold>,calculate)
    .fluidInputs([<liquid:redstone>])
    .outputs(<appliedenergistics2:memory_card>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
    #basic card
recipes.remove(basicCard);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel>*4,<ore:plateRoseGold>*2,logic)
    .fluidInputs([<liquid:redstone>*432])
    .outputs(basicCard)
    .duration(40)
    .EUt(128)
    .buildAndRegister();
    #advanced card
recipes.remove(goodCard);
assembler.recipeBuilder()
    .inputs(<ore:plateTungstenSteel>*4,<ore:plateRoseGold>*2,engineer)
    .fluidInputs([<liquid:redstone>*432])
    .outputs(goodCard)
    .duration(40)
    .EUt(512)
    .buildAndRegister();
    #capacity card b
recipes.remove(<appliedenergistics2:material:27>);
forming.recipeBuilder()
    .inputs(basicCard,<ore:certusGem>*2)
    .outputs(<appliedenergistics2:material:27>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
    #redstone card b
recipes.remove(<appliedenergistics2:material:53>);
forming.recipeBuilder()
    .inputs(basicCard,<ore:dustRedstone>*2)
    .outputs(<appliedenergistics2:material:53>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
    #crafting card b
recipes.remove(<appliedenergistics2:material:26>);
forming.recipeBuilder()
    .inputs(basicCard,<ore:workbench>*2)
    .outputs(<appliedenergistics2:material:26>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
    #acceleration card a
recipes.remove(<appliedenergistics2:material:30>);
forming.recipeBuilder()
    .inputs(goodCard,<gregtech:meta_item_1:32681>)
    .outputs(<appliedenergistics2:material:30>)
    .duration(80)
    .EUt(16)
    .buildAndRegister();
    #fuzzy card a
recipes.remove(<appliedenergistics2:material:29>);
forming.recipeBuilder()
    .inputs(goodCard,<chisel:laboratory:10>*2)
    .outputs(<appliedenergistics2:material:29>)
    .duration(80)
    .EUt(16)
    .buildAndRegister();
    #invert card a
recipes.remove(<appliedenergistics2:material:31>);
forming.recipeBuilder()
    .inputs(goodCard,<projectred-illumination:lamp:16>*2)
    .outputs(<appliedenergistics2:material:31>)
    .duration(80)
    .EUt(16)
    .buildAndRegister();
//network booster
recipes.remove(<appliedenergistics2:material:42>);
recipes.addShaped(<appliedenergistics2:material:42>,[
    [<ore:plateSteel>,<ore:plateStainlessSteel>,<ore:plateSteel>],
    [<appliedenergistics2:material:28>,<appliedenergistics2:material:41>,<appliedenergistics2:material:45>],
    [<ore:plateSteel>,<ore:plateStainlessSteel>,<ore:plateSteel>]
]);
//quantum network
    #ring
recipes.remove(<appliedenergistics2:quantum_ring>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:sky_stone_block>*4,<appliedenergistics2:material:47>,<appliedenergistics2:part:76>*2,logic*2,engineer*2)
    .fluidInputs([<liquid:ender>*250])
    .outputs(<appliedenergistics2:quantum_ring>*2)
    .duration(1200)
    .EUt(2048)
    .buildAndRegister();
    #link
recipes.remove(<appliedenergistics2:quantum_link>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:quartz_glass>*4,<ore:pearlFluix>*5,logic)
    .outputs(<appliedenergistics2:quantum_link>)
    .duration(600)
    .EUt(2048)
    .buildAndRegister();
//Singularity
implosion.recipeBuilder()
    .inputs(<appliedenergistics2:material:47>*2)
    .outputs(<appliedenergistics2:material:48>*2)
    .property("explosives",4)
    .duration(20)
    .EUt(30)
    .buildAndRegister();
//ME controller
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
    .inputs(<ore:MVcasing>,logic,calculate,engineer,<ore:fluixCrystal>,<ore:pearlFluix>,<appliedenergistics2:smooth_sky_stone_block>*4)
    .outputs(<appliedenergistics2:controller>)
    .duration(800)
    .EUt(128)
    .buildAndRegister();
//ME drive
recipes.remove(<appliedenergistics2:drive>);
assembler.recipeBuilder()
    .inputs(<ore:MVcasing>,<ore:wireGtSingleAnnealedCopper>*10,SHousing,<appliedenergistics2:smooth_sky_stone_block>*4)
    .outputs(<appliedenergistics2:drive>)
    .duration(80)
    .EUt(64)
    .buildAndRegister();
//ME chest
recipes.remove(<appliedenergistics2:chest>);
recipes.addShaped(<appliedenergistics2:chest>, [
    [<ore:blockGlass>,<appliedenergistics2:part:380>,<ore:blockGlass>],
    [<appliedenergistics2:part:16>,<ore:chest>,<appliedenergistics2:part:16>],
    [<ore:ingotSteel>,<ore:fluixCrystal>,<ore:ingotSteel>]
]);
//ME interface
recipes.remove(<appliedenergistics2:interface>);
recipes.remove(<appliedenergistics2:part:440>);
recipes.addShaped(<appliedenergistics2:interface>,[
    [<ore:plateSteel>,<ore:chest>,<ore:plateSteel>],
    [conjugation,<ore:chest>,formation],
    [<ore:plateSteel>,<ore:chest>,<ore:plateSteel>]
]);
recipes.addShapeless(<appliedenergistics2:part:440>, [<appliedenergistics2:interface>]);
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
//ME fluid interface
recipes.remove(<appliedenergistics2:fluid_interface>);
recipes.remove(<appliedenergistics2:part:441>);
recipes.addShaped(<appliedenergistics2:fluid_interface>,[
    [<ore:plateSteel>,<ore:blockGlass>,<ore:plateSteel>],
    [conjugation,<minecraft:bucket>,formation],
    [<ore:plateSteel>,<ore:dustLapis>,<ore:plateSteel>]
]);
recipes.addShapeless(<appliedenergistics2:part:441>, [<appliedenergistics2:fluid_interface>]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);
//ME IO port
recipes.remove(<appliedenergistics2:io_port>);
recipes.addShaped(<appliedenergistics2:io_port>,[
    [<ore:blockGlass>,<gregtech:meta_item_1:32631>,<ore:blockGlass>],
    [<appliedenergistics2:drive>,<appliedenergistics2:part:16>,<appliedenergistics2:drive>],
    [<ore:ingotSteel>,logic,<ore:ingotSteel>]
]);
//ME matter condenser
recipes.replaceAllOccurences(<appliedenergistics2:material:8>,<overloaded:item_core>,<appliedenergistics2:condenser>);
//growth accelerator
recipes.replaceAllOccurences(<appliedenergistics2:fluix_block>,<gregtech:machine:2214>,<appliedenergistics2:quartz_growth_accelerator>);
//CPU bock
val unit = <appliedenergistics2:crafting_unit>;
val cpu as IItemStack[IItemStack] = {
    <appliedenergistics2:crafting_accelerator> : logic, #this is co
    <appliedenergistics2:crafting_storage_1k> : <appliedenergistics2:material:35>,
    <appliedenergistics2:crafting_storage_4k> : <appliedenergistics2:material:36>,
    <appliedenergistics2:crafting_storage_16k> : <appliedenergistics2:material:37>,
    <appliedenergistics2:crafting_storage_64k> : <appliedenergistics2:material:38>,
};

for craftingCPU,CPUCore in cpu {
    recipes.remove(craftingCPU);
    canner.recipeBuilder()
        .inputs(unit,CPUCore)
        .outputs(craftingCPU)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    unpacker.recipeBuilder()
        .inputs(craftingCPU)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
        .outputs(CPUCore,unit)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
}
//toggle
recipes.replaceAllOccurences(<minecraft:lever>,<projectred-integration:gate:13>,<appliedenergistics2:part:80>);
// storage buses
val bus as IIngredient[] = [
    <appliedenergistics2:part:260>,
    <appliedenergistics2:part:240>,
    <appliedenergistics2:part:220>,
    <appliedenergistics2:part:261>,
    <appliedenergistics2:part:241>,
    <appliedenergistics2:part:221>,
];
val piston as IIngredient[] = [
    <minecraft:piston>,
    <minecraft:sticky_piston>
];
for item in piston {
    for rut in bus{
        recipes.replaceAllOccurences(item,<gregtech:meta_item_1:32631>,rut);
    }
}

//change recipes of all of AE2 use iron ingot ,use steel instead it!
for item in loadedMods["appliedenergistics2"].items {
    recipes.replaceAllOccurences(<minecraft:iron_ingot>,<ore:ingotSteel>,item);
}

//end AE2
print("------------------------------------------------------AE2end------------------------------------------------------");
var flasks as IItemStack[IData[]] = {
[64000,19] : <volumetricflask:volumetric_flask_64000>,
[32000,18] : <volumetricflask:volumetric_flask_32000>,
[16000,17] : <volumetricflask:volumetric_flask_16000>,
[8000,16] : <volumetricflask:volumetric_flask_8000>,
[4000,15] : <volumetricflask:volumetric_flask_4000>,
[2000,14] : <volumetricflask:volumetric_flask_2000>,
[1000,13] : <volumetricflask:volumetric_flask_1000>,
[300,12] : <volumetricflask:volumetric_flask_300>,
[250,11] : <volumetricflask:volumetric_flask_250>,
[144,10] : <volumetricflask:volumetric_flask_144>,
[133,9] : <volumetricflask:volumetric_flask_133>,
[100,8] : <volumetricflask:volumetric_flask_100>,
[72,7] : <volumetricflask:volumetric_flask_72>,
[50,6] : <volumetricflask:volumetric_flask_50>,
[36,5] : <volumetricflask:volumetric_flask_36>,
[33,4] : <volumetricflask:volumetric_flask_33>,
[32,3] : <volumetricflask:volumetric_flask_32>,
[18,2] : <volumetricflask:volumetric_flask_18>,
[16,1] : <volumetricflask:volumetric_flask_16>
};

for outputInfo, i in flasks {
	recipes.remove(i);

assembler.recipeBuilder()
	.inputs(<minecraft:glass_bottle>)
	.notConsumable(<metaitem:circuit.integrated>.withTag({Configuration: outputInfo[1]}))
    .outputs(i.withTag({}))
	.fluidInputs([<liquid:glass> * outputInfo[0]])
    .duration(20 * outputInfo[1])
    .EUt(48)
	.buildAndRegister();
}
//end volumetric
//start lazy AE2
//remove pulse cent to ender dust, flour and sky dust
val removeDust as IItemStack[] = [
    <appliedenergistics2:material:45>,
    <appliedenergistics2:material:4>,
    <appliedenergistics2:material:46>
];
for i in removeDust {
    Centrifuge.removeRecipe(i);
}

//fix ingot to dust
recipes.replaceAllOccurences(<gregtech:meta_item_1:10061>,<gregtech:meta_item_1:2061>,<threng:material:1>);

//change recipe of carbonic fluix dust and fluix ingot
Aggregator.removeRecipe(<threng:material>);
Aggregator.removeRecipe(<threng:material:1>);
furnace.remove(<threng:material>);
JEI.removeAndHide(<threng:material:2>);
    #carbonic fluix dust
mixer.recipeBuilder()
    .inputs(<ore:dustFluix>,<ore:dustCoal>,<ore:dustSilicon>)
    .outputs(<threng:material:1>)
    .duration(900)
    .EUt(8)
    .buildAndRegister();
    #fluix ingot
blast_furnace.recipeBuilder()
    .inputs(<threng:material:1>,<ore:ingotBrass>)
    .outputs(<threng:material>)
    .property("temperature", 2200)
    .duration(800)
    .EUt(2048)
    .buildAndRegister();
//circuit
    #1st circuit
circuit_assembler.recipeBuilder()
    .inputs(<ore:plateSilicon>,<threng:material:5>)
    .fluidInputs([<liquid:redstone>*500])
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs(<threng:material:6>)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
    #end circuit
circuit_assembler.recipeBuilder()
    .inputs(<ore:plateSilicon>,<threng:material:13>)
    .fluidInputs([<liquid:redstone>*500])
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs(<threng:material:14>)
    .duration(100)
    .EUt(2048)
    .buildAndRegister();
//logic unit
recipes.remove(<threng:material:4>);
assembler.recipeBuilder()
    .inputs(<threng:material>*4,<threng:material:1>*2,<appliedenergistics2:quartz_glass>*3,<ore:circuitAdvanced>)
    .notConsumable(<appliedenergistics2:material:14>)
    .outputs(<threng:material:4>)
    .duration(90)
    .EUt(512)
    .buildAndRegister();
//Resonating Crystal
alloy.recipeBuilder()
    .inputs(<ore:dustDiamond>*4,<ore:dustEnderPearl>*3)
    .outputs(<threng:material:5>)
    .duration(120)
    .EUt(36)
    .buildAndRegister();
//change recipes of some machine
    #aggregator
recipes.remove(<threng:machine>);
recipes.addShaped(<threng:machine>,[
    [<minecraft:hopper>,<gregtech:machine:2215>,<minecraft:hopper>],
    [logic,<threng:material:4>,logic],
    [<ore:dustRedstone>,<appliedenergistics2:condenser>,<ore:dustRedstone>]
]);
    #Centrifuge
recipes.replaceAllOccurences(<appliedenergistics2:molecular_assembler>,<gregtech:machine:152>,<threng:machine:1>);
    #energy crystal
recipes.replaceAllOccurences(<appliedenergistics2:dense_energy_cell>,<ore:HVcap>,<threng:machine:5>);
//end lazy
//extra cell
//fluid panel
    #panel
recipes.remove(<extracells:part.base:10>);
assembler.recipeBuilder()
    .inputs(<ore:itemIlluminatedPanel>,<appliedenergistics2:part:280>,<ore:dustLapis>*2)
    .outputs(<extracells:part.base:10>)
    .duration(60)
    .EUt(24)
    .buildAndRegister();
    #conjuction
recipes.remove(<extracells:part.base:11>);
assembler.recipeBuilder()
    .inputs(<extracells:part.base:10>,conjugation,formation)
    .outputs(<extracells:part.base:11>)
    .duration(60)
    .EUt(24)
    .buildAndRegister();
//storage housing
val IHousing as IItemStack = <extracells:storage.casing>;
val FHousing as IItemStack= <extracells:storage.casing:1>;
val ExtraHousing as IItemStack[int] = {
    3 : IHousing,
    4 : FHousing,
};

for Number,Housing in ExtraHousing {
    recipes.remove(Housing);
    assembler.recipeBuilder()
        .inputs(<ore:ingotTungsten>*6,<ore:wireGtSingleAnnealedCopper>*2,<appliedenergistics2:quartz_glass>*2)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:Number as int}))
        .outputs(Housing)
        .duration(400)
        .EUt(512)
        .buildAndRegister();
}
    #switching each other
recipes.addShapeless(IHousing, [FHousing]);
recipes.addShapeless(FHousing, [IHousing]);

//Extra storage
    #item storage
val ItemExtraStorage as IItemStack[IItemStack] = {
    <extracells:storage.physical> : <extracells:storage.component>,
    <extracells:storage.physical:1> : <extracells:storage.component:1>,
    <extracells:storage.physical:2> : <extracells:storage.component:2>,
    <extracells:storage.physical:3> : <extracells:storage.component:3>,
};

for extraItemStorage,extraItemCore in ItemExtraStorage {
    recipes.remove(extraItemStorage);
    canner.recipeBuilder()
        .inputs(extraItemCore,IHousing)
        .outputs(extraItemStorage)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    unpacker.recipeBuilder()
        .inputs(extraItemStorage)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
        .outputs(extraItemCore,IHousing)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
}
    #fluid storage
val FluidExtraStorage as IItemStack[IItemStack] = {
    <extracells:storage.fluid:4> : <extracells:storage.component:8>,
    <extracells:storage.fluid:5> : <extracells:storage.component:9>,
    <extracells:storage.fluid:6> : <extracells:storage.component:10>,
};

for extraFluidStorage,extraFluidCore in FluidExtraStorage {
    recipes.remove(extraFluidStorage);
    canner.recipeBuilder()
        .inputs(extraFluidCore,FHousing)
        .outputs(extraFluidStorage)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    unpacker.recipeBuilder()
        .inputs(extraFluidStorage)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
        .outputs(extraFluidCore,FHousing)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
}
//storage core
val extraCore as IItemStack[] = [
    <extracells:storage.component:8>,
    <extracells:storage.component:9>,
    <extracells:storage.component:10>,
    <extracells:storage.component>,
    <extracells:storage.component:1>,
    <extracells:storage.component:2>,
    <extracells:storage.component:3>,
];
for i in extraCore {
    recipes.remove(i);
}
    //fluid core
    #256k
forming.recipeBuilder()
    .inputs(<appliedenergistics2:material:57>*4,<ore:plateHssg>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:8>)
    .duration(2400)
    .EUt(2048)
    .buildAndRegister();
    #1024k
forming.recipeBuilder()
    .inputs(<extracells:storage.component:8>*4,<ore:plateHssg>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:9>)
    .duration(2048)
    .EUt(8192)
    .buildAndRegister();
    #4092k
forming.recipeBuilder()
    .inputs(<extracells:storage.component:9>*4,<ore:plateOsmium>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:10>)
    .duration(2048)
    .EUt(8192)
    .buildAndRegister();
    //item core
    #256k
forming.recipeBuilder()
    .inputs(<appliedenergistics2:material:38>*4,<ore:plateHssg>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component>)
    .duration(2400)
    .EUt(2048)
    .buildAndRegister();
    #1024k
forming.recipeBuilder()
    .inputs(<extracells:storage.component>*4,<ore:plateHssg>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:1>)
    .duration(2048)
    .EUt(8192)
    .buildAndRegister();
    #4092k
forming.recipeBuilder()
    .inputs(<extracells:storage.component:1>*4,<ore:plateOsmium>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:2>)
    .duration(2048)
    .EUt(8192)
    .buildAndRegister();
forming.recipeBuilder()
    .inputs(<extracells:storage.component:2>*4,<ore:plateNaquadahAlloy>,logic,engineer,<ore:dustFluix>*2)
    .outputs(<extracells:storage.component:3>)
    .duration(2048)
    .EUt(32768)
    .buildAndRegister();
//end extra cell
//start extra cpu
val extraCpu as IItemStack[IItemStack] = {
    <extracpus:crafting_storage_256k> : <extracells:storage.component>,
    <extracpus:crafting_storage_1024k> : <extracells:storage.component:1>,
    <extracpus:crafting_storage_4096k> : <extracells:storage.component:2>,
    <extracpus:crafting_storage_16384k> : <extracells:storage.component:3>,
};

for extraCPUBlock,extraCPUCore in extraCpu {
    recipes.remove(extraCPUBlock);
    canner.recipeBuilder()
        .inputs(unit,extraCPUCore)
        .outputs(extraCPUBlock)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    unpacker.recipeBuilder()
        .inputs(extraCPUBlock)
        .notConsumable(<metaitem:circuit.integrated>.withTag({Configuration:2}))
        .outputs(extraCPUCore,unit)
        .duration(40)
        .EUt(32)
        .buildAndRegister();
}
//end extraCpu
//start visual
recipes.replaceAllOccurences(<appliedenergistics2:entropy_manipulator>,<ore:pearlFluix>,<aenetvistool:net_visualizer>);
//end visual
//start wireless
recipes.removeByRecipeName("ae2wtlib:booster_card_new");
compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:42>*32)
	.outputs(<ae2wtlib:infinity_booster_card>)
	.EUt(32700)
	.duration(300)
	.buildAndRegister();
//end
