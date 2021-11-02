#priority 500
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

//remove from oredict

//for block

var blocksDisabled as IItemStack[][IOreDictEntry] = {

    #blockCopper
    <ore:blockCopper>:[
        <thermalfoundation:storage>,
        <projectred-exploration:stone:8>,
        <forestry:resource_storage:1>
    ],

    #blockBronze
    <ore:blockBronze>:[
        <thermalfoundation:storage_alloy:3>,
        <forestry:resource_storage:3>
    ],

    #blockTin
    <ore:blockTin>:[
        <thermalfoundation:storage:1>,
        <projectred-exploration:stone:9>,
        <forestry:resource_storage:2>
    ],

    #blockSilver
    <ore:blockSilver>:[
        <thermalfoundation:storage:2>,
        <projectred-exploration:stone:10>,
    ],

    #blockLead
    <ore:blockLead>:[
        <thermalfoundation:storage:3>
    ],

    #blockAluminum
    <ore:blockAluminum>:[
        <thermalfoundation:storage:4>
    ],

    #blockNickel
    <ore:blockNickel>:[
        <thermalfoundation:storage:5>
    ],

    #blockPlatinum
    <ore:blockPlatinum>:[
        <thermalfoundation:storage:6>
    ],

    #blockIridium
    <ore:blockIridium>:[
        <thermalfoundation:storage:7>
    ],

    #blockSteel
    <ore:blockSteel>:[
        <thermalfoundation:storage_alloy>
    ],

    #blockInvar
    <ore:blockInvar>:[
        <thermalfoundation:storage_alloy:2>
    ],

    #blockElectrum
    <ore:blockElectrum>:[
        <thermalfoundation:storage_alloy:1>
    ],

    #blockCharcoal
    <ore:blockCharcoal>:[
        <forestry:charcoal>,
        <thermalfoundation:storage_resource>
    ],

    #blockApatite
    <ore:blockApatite>:[
        <forestry:resource_storage>
    ],

    #blockCobalt
    <ore:blockCobalt>:[
        <tconstruct:metal>
    ],

    #blockMithril
    <ore:blockMithril>:[
        <thermalfoundation:storage:8>
    ],

    #blockConstantan
    <ore:blockConstantan>:[
        <thermalfoundation:storage_alloy:4>
    ],

    #blockSignalum
    <ore:blockSignalum>:[
        <thermalfoundation:storage_alloy:5>
    ],

    #blockLumium
    <ore:blockLumium>:[
        <thermalfoundation:storage_alloy:6>
    ],

    #blockEnderium
    <ore:blockEnderium>:[
        <thermalfoundation:storage_alloy:7>
    ],

    #<ore:blockRuby>
    <ore:blockRuby>:[
        <projectred-exploration:stone:5>
    ],

    #<ore:blockSapphire>]
    <ore:blockSapphire>:[
        <projectred-exploration:stone:6>
    ],

    #<ore:blockPeridot>
    <ore:blockPeridot>:[
        <projectred-exploration:stone:7>
    ],

    #<ore:blockElectrotine>
    <ore:blockElectrotine>:[
        <projectred-exploration:stone:11>
    ],

    #ore:blockNetherstar
    <ore:blockNetherStar>:[
        <overloaded:nether_star_block>
    ],

    #<ore:blockFuelCoke>
    <ore:blockFuelCoke>:[
        <thermalfoundation:storage_resource:1>
    ]

};

for oreDictEntry, items in blocksDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for ingot

var ingotsDisabled as IItemStack[][IOreDictEntry] = {
    #ingotCopper
    <ore:ingotCopper>:[
        <forestry:ingot_copper>,
        <projectred-core:resource_item:100>,
        <thermalfoundation:material:128>
    ],

    #ingotBronze
    <ore:ingotBronze>:[
        <forestry:ingot_bronze>,
        <thermalfoundation:material:163>
    ],

    #ingotTin
    <ore:ingotTin>:[
        <forestry:ingot_tin>,
        <projectred-core:resource_item:101>,
        <thermalfoundation:material:129>
    ],

    #ingotSilver
    <ore:ingotSilver>:[
        <projectred-core:resource_item:102>,
        <thermalfoundation:material:130>
    ],

    #ingotLead
    <ore:ingotLead>:[
        <thermalfoundation:material:131>
    ],

    #ingotAluminum
    <ore:ingotAluminum>:[
      <thermalfoundation:material:132>
    ],

    #ingotNickel
    <ore:ingotNickel>:[
        <thermalfoundation:material:133>
    ],

    #ingotPlatinum
    <ore:ingotPlatinum>:[
        <thermalfoundation:material:134>
    ],

    #ingotIridium
    <ore:ingotIridium>:[
        <thermalfoundation:material:135>
    ],

    #ingotSteel
    <ore:ingotSteel>:[
        <thermalfoundation:material:160>,
		<flammpfeil.slashblade:proudsoul:4097>.withTag({"SB.SEffect": {}}),
		<flammpfeil.slashblade:proudsoul:4097>
    ],

    #ingotInvar
    <ore:ingotInvar>:[
        <thermalfoundation:material:162>
    ],

    #ingotElectrum
    <ore:ingotElectrum>:[
        <thermalfoundation:material:161>
    ],

    #ingotCobalt
    <ore:ingotCobalt>:[
       <tconstruct:ingots>
    ],

    #ingotMithril
    <ore:ingotMithril>:[
        <thermalfoundation:material:136>
    ],

    #<ore:ingotConstantan>
    <ore:ingotConstantan>:[
        <thermalfoundation:material:164>
    ],

    #<ore:ingotSignalum>
    <ore:ingotSignalum>:[
        <thermalfoundation:material:165>
    ],

    #<ore:ingotLumium>
    <ore:ingotLumium>:[
        <thermalfoundation:material:166>
    ],

    #<ore:ingotEnderium>
    <ore:ingotEnderium>:[
        <thermalfoundation:material:167>
    ],

    #<ore:ingotRedAlloy>
    <ore:ingotRedAlloy>:[
        <projectred-core:resource_item:103>
    ],

    #<ore:ingotElectrotineAlloy>
    <ore:ingotElectrotineAlloy>:[
        <projectred-core:resource_item:104>
    ],

    #<ore:itemSilicon>
    <ore:itemSilicon>:[
        <appliedenergistics2:material:5>
    ],

	#<ore:ingotArdite>
	<ore:ingotArdite>:[
		<tconstruct:ingots:1>
	]

};

for oreDictEntry, items in ingotsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for nuggets

var nuggetsDisabled as IItemStack[][IOreDictEntry] = {

    #nuggetCopper
    <ore:nuggetCopper>:[
        <thermalfoundation:material:192>
    ],

    #nuggetBronze
    <ore:nuggetBronze>:[
        <thermalfoundation:material:227>
    ],

    #<ore:nuggetDiamond>
    <ore:nuggetDiamond>:[
        <thermalfoundation:material:16>
    ],

    #<ore:nuggetTin>
    <ore:nuggetTin>:[
       <thermalfoundation:material:193>
    ],

    #<ore:nuggetSilver>
    <ore:nuggetSilver>:[
        <thermalfoundation:material:194>
    ],

    #<ore:nuggetLead>
    <ore:nuggetLead>:[
        <thermalfoundation:material:195>
    ],

    #<ore:nuggetAluminum>
    <ore:nuggetAluminum>:[
        <thermalfoundation:material:196>
    ],

    #<ore:nuggetNickel>
    <ore:nuggetNickel>:[
        <thermalfoundation:material:197>
    ],

    #<ore:nuggetPlatinum>
    <ore:nuggetPlatinum>:[
        <thermalfoundation:material:198>
    ],

    #<ore:nuggetIridium>
    <ore:nuggetIridium>:[
        <thermalfoundation:material:199>
    ],

    #<ore:nuggetSteel>
    <ore:nuggetSteel>:[
        <thermalfoundation:material:224>
    ],

    #<ore:nuggetInvar>
    <ore:nuggetInvar>:[
        <thermalfoundation:material:226>
    ],

    #<ore:nuggetElectrum>
    <ore:nuggetElectrum>:[
        <thermalfoundation:material:225>
    ],

    #<ore:nuggetCobalt>
    <ore:nuggetCobalt>:[
        <thermalfoundation:material:225>,
        <tconstruct:nuggets>
    ],

    #<ore:nuggetMithril>
    <ore:nuggetMithril>:[
        <thermalfoundation:material:200>
    ],

    #<ore:nuggetSignalum>
    <ore:nuggetSignalum>:[
        <thermalfoundation:material:229>
    ],

    #<ore:nuggetLumium>
    <ore:nuggetLumium>:[
        <thermalfoundation:material:230>
    ],

    #<ore:nuggetEnderium>
    <ore:nuggetEnderium>:[
        <thermalfoundation:material:231>
    ],

    #<ore:nuggetEmerald>
    <ore:nuggetEmerald>:[
        <thermalfoundation:material:17>
    ],

    #<ore:nuggetConstantan>
    <ore:nuggetConstantan>:[
        <thermalfoundation:material:228>
    ],

    #<ore:nuggetDiamond>
    <ore:nuggetDiamond>:[
        <translocators:diamond_nugget>
    ],

	#<ore:nuggetArdite>
	<ore:nuggetArdite>:[
		<tconstruct:nuggets:1>
	]
};

for oreDictEntry, items in nuggetsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for ore

var oresDisabled as IItemStack[][IOreDictEntry] = {

    #<ore:oreCopper>
    <ore:oreCopper>:[
        <thermalfoundation:ore>,
        <forestry:resources:1>,
        <projectred-exploration:ore:3>
    ],

    #<ore:oreTin>
    <ore:oreTin>:[
        <thermalfoundation:ore:1>,
        <forestry:resources:2>,
        <projectred-exploration:ore:4>
    ],

    #<ore:oreSilver>
    <ore:oreSilver>:[
        <thermalfoundation:ore:2>,
        <projectred-exploration:ore:5>
    ],

    #<ore:oreLead>
    <ore:oreLead>:[
        <thermalfoundation:ore:3>
    ],

    #<ore:oreAluminum>
    <ore:oreAluminum>:[
        <thermalfoundation:ore:4>
    ],

    #<ore:oreNickel>
    <ore:oreNickel>:[
        <thermalfoundation:ore:5>
    ],

    #<ore:orePlatinum>
    <ore:orePlatinum>:[
        <thermalfoundation:ore:6>
    ],

    #<ore:oreIridium>
    <ore:oreIridium>:[
        <thermalfoundation:ore:7>
    ],

    #<ore:oreMithril>
    <ore:oreMithril>:[
        <thermalfoundation:ore:8>
    ],

    #<ore:oreClathrateEnder>
    <ore:oreClathrateEnder>:[
        <thermalfoundation:ore_fluid:4>
    ],

    #<ore:oreClathrateOilSand>
    <ore:oreClathrateOilSand>:[
        <thermalfoundation:ore_fluid:5>,
        <thermalfoundation:ore_fluid>
    ],

    #<ore:oreClathrateGlowstone>
    <ore:oreClathrateGlowstone>:[
        <thermalfoundation:ore_fluid:3>
    ],

    #<ore:oreClathrateRedstone>
    <ore:oreClathrateRedstone>:[
        <thermalfoundation:ore_fluid:2>
    ],

    #<ore:oreClathrateOilShale>
    <ore:oreClathrateOilShale>:[
        <thermalfoundation:ore_fluid:1>
    ],

    #<ore:oreApatite>
    <ore:oreApatite>:[
        <forestry:resources>
    ],

    #<ore:oreRuby>
    <ore:oreRuby>:[
        <projectred-exploration:ore>
    ],

    #<ore:oreSapphire>
    <ore:oreSapphire>:[
        <projectred-exploration:ore:1>,
		<practicallogistics2:sapphireore>
    ],

    #<ore:orePeridot>
    <ore:orePeridot>:[
        <projectred-exploration:ore:2>
    ],

    #<ore:oreElectrotine>
    <ore:oreElectrotine>:[
        <projectred-exploration:ore:6>
    ],

    #<ore:oreLapis>
    <ore:oreLapis>:[
        <minecraft:lapis_ore>
    ],

    #<ore:oreCoal>
    <ore:oreCoal>:[
        <minecraft:coal_ore>
    ],

    #<ore:oreGold>
    <ore:oreGold>:[
        <minecraft:gold_ore>
    ],

    #<ore:oreIron>
    <ore:oreIron>:[
        <minecraft:iron_ore>
    ],

    #<ore:oreDiamond>
    <ore:oreDiamond>:[
        <minecraft:diamond_ore>
    ],

    #<ore:oreRedstone>
    <ore:oreRedstone>:[
        <minecraft:redstone_ore>
    ],

	#<ore:oreQuartzBlack>
	<ore:oreQuartzBlack>:[
		<actuallyadditions:block_misc:3>
	]

};

for oreDictEntry, items in oresDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for plate

var platesDisabled as IItemStack[][IOreDictEntry] = {

    #<ore:plateIron>
    <ore:plateIron>:[
        <thermalfoundation:material:32>
    ],

    #<ore:plateGold>
    <ore:plateGold>:[
        <thermalfoundation:material:33>
    ],

    #<ore:plateCopper>
    <ore:plateCopper>:[
        <thermalfoundation:material:320>
    ],

    #<ore:plateTin>
    <ore:plateTin>:[
        <thermalfoundation:material:321>
    ],

    #<ore:plateSilver>
    <ore:plateSilver>:[
        <thermalfoundation:material:322>
    ],

    #<ore:plateLead>
    <ore:plateLead>:[
        <thermalfoundation:material:323>
    ],

    #<ore:plateAluminum>
    <ore:plateAluminum>:[
        <thermalfoundation:material:324>
    ],

    #<ore:plateNickel>
    <ore:plateNickel>:[
        <thermalfoundation:material:325>
    ],

    #<ore:platePlatinum>
    <ore:platePlatinum>:[
        <thermalfoundation:material:326>
    ],

    #<ore:plateIridium>
    <ore:plateIridium>:[
        <thermalfoundation:material:327>
    ],

    #<ore:plateMithril>
    <ore:plateMithril>:[
        <thermalfoundation:material:328>
    ],

    #<ore:plateSteel>
    <ore:plateSteel>:[
        <thermalfoundation:material:352>
    ],

    #<ore:plateElectrum>
    <ore:plateElectrum>:[
        <thermalfoundation:material:353>
    ],

    #<ore:plateInvar>
    <ore:plateInvar>:[
        <thermalfoundation:material:354>
    ],

    #<ore:plateBronze>
    <ore:plateBronze>:[
        <thermalfoundation:material:355>
    ],

    #<ore:plateConstantan>
    <ore:plateConstantan>:[
        <thermalfoundation:material:356>
    ],

    #<ore:plateSignalum>
    <ore:plateSignalum>:[
        <thermalfoundation:material:357>
    ],

    #<ore:plateLumium>
    <ore:plateLumium>:[
        <thermalfoundation:material:358>
    ],

    #<ore:plateEnderium>
    <ore:plateEnderium>:[
        <thermalfoundation:material:359>
    ]

};

for oreDictEntry, items in platesDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for gears

var gearsDisabled as IItemStack[][IOreDictEntry] = {

    #<ore:gearWood>
    <ore:gearWood>:[
        <thermalfoundation:material:22>,
        <appliedenergistics2:material:40>,
        <enderio:item_material:9>
    ],

    #<ore:gearStone>
    <ore:gearStone>:[
        <thermalfoundation:material:23>
    ],

    #<ore:gearIron>
    <ore:gearIron>:[
        <thermalfoundation:material:24>
    ],

    #<ore:gearGold>
    <ore:gearGold>:[
        <thermalfoundation:material:25>
    ],

    #<ore:gearDiamond>
    <ore:gearDiamond>:[
        <thermalfoundation:material:26>
    ],

    #<ore:gearEmerald>
    <ore:gearEmerald>:[
        <thermalfoundation:material:27>
    ],

    #<ore:gearCopper>
    <ore:gearCopper>:[
        <thermalfoundation:material:256>,
        <forestry:gear_copper>
    ],

    #<ore:gearTin>
    <ore:gearTin>:[
        <thermalfoundation:material:257>,
        <forestry:gear_tin>
    ],

    #<ore:gearSilver>
    <ore:gearSilver>:[
        <thermalfoundation:material:258>
    ],

    #<ore:gearLead>
    <ore:gearLead>:[
        <thermalfoundation:material:259>
    ],

    #<ore:gearAluminum>
    <ore:gearAluminum>:[
        <thermalfoundation:material:260>
    ],

    #<ore:gearNickel>
    <ore:gearNickel>:[
        <thermalfoundation:material:261>
    ],

    #<ore:gearPlatinum>
    <ore:gearPlatinum>:[
        <thermalfoundation:material:262>
    ],

    #<ore:gearIridium>
    <ore:gearIridium>:[
        <thermalfoundation:material:263>
    ],

    #<ore:gearMithril>
    <ore:gearMithril>:[
        <thermalfoundation:material:264>
    ],

    #<ore:gearSteel>
    <ore:gearSteel>:[
        <thermalfoundation:material:288>
    ],

    #<ore:gearElectrum>
    <ore:gearElectrum>:[
        <thermalfoundation:material:289>
    ],

    #<ore:gearInvar>
    <ore:gearInvar>:[
        <thermalfoundation:material:290>
    ],

    #<ore:gearBronze>
    <ore:gearBronze>:[
        <thermalfoundation:material:291>,
        <forestry:gear_bronze>
    ],

    #<ore:gearConstantan>
    <ore:gearConstantan>:[
        <thermalfoundation:material:292>
    ],

    #<ore:gearSignalum>
    <ore:gearSignalum>:[
        <thermalfoundation:material:293>
    ],

    #<ore:gearLumium>
    <ore:gearLumium>:[
        <thermalfoundation:material:294>
    ],

    #<ore:gearEnderium>
    <ore:gearEnderium>:[
        <thermalfoundation:material:295>
    ],

};

for oreDictEntry, items in gearsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

//for dust

var dustsDisabled as IItemStack[][IOreDictEntry] = {

    #dustIron
    <ore:dustIron>:[
        <thermalfoundation:material>,
        <appliedenergistics2:material:49>,
		<actuallyadditions:item_dust>
    ],

    #<ore:dustGold>
    <ore:dustGold>:[
        <thermalfoundation:material:1>,
        <appliedenergistics2:material:51>,
		<actuallyadditions:item_dust:1>
    ],

    #<ore:dustTin>
    <ore:dustTin>:[
        <thermalfoundation:material:65>,
    ],

    #<ore:dustSilver>
    <ore:dustSilver>:[
        <thermalfoundation:material:66>
    ],

    #<ore:dustAluminum>
    <ore:dustAluminum>:[
        <thermalfoundation:material:68>
    ],

    #<ore:dustNickel>
    <ore:dustNickel>:[
        <thermalfoundation:material:69>
    ],

    #<ore:dustPlatinum>
    <ore:dustPlatinum>:[
        <thermalfoundation:material:70>
    ],

    #<ore:dustLumium>
    <ore:dustLumium>:[
        <thermalfoundation:material:102>
    ],

    #<ore:dustEnderPearl>
    <ore:dustEnderPearl>:[
        <appliedenergistics2:material:46>,
        <portalgun:item_dust_ender_pearl>
    ],

    #<ore:dustEnderium>
    <ore:dustEnderium>:[
        <thermalfoundation:material:103>
    ],

    #<ore:dustEnder>
    <ore:dustEnder>:[
        <appliedenergistics2:material:46>
    ],

    #<ore:dustCopper>
    <ore:dustCopper>:[
        <thermalfoundation:material:64>,
    ],

    #<ore:dustLead>
    <ore:dustLead>:[
        <thermalfoundation:material:67>
    ],

    #<ore:dustIridium>
    <ore:dustIridium>:[
        <thermalfoundation:material:71>
    ],

    #<ore:dustMithril>
    <ore:dustMithril>:[
        <thermalfoundation:material:72>
    ],

    #<ore:dustSteel>
    <ore:dustSteel>:[
        <thermalfoundation:material:96>
    ],

    #<ore:dustElectrum>
    <ore:dustElectrum>:[
        <thermalfoundation:material:97>
    ],

    #<ore:dustInvar>
    <ore:dustInvar>:[
        <thermalfoundation:material:98>
    ],

    #<ore:dustBronze>
    <ore:dustBronze>:[
        <thermalfoundation:material:99>
    ],

    #<ore:dustConstantan>
    <ore:dustConstantan>:[
        <thermalfoundation:material:100>
    ],

    #<ore:dustSignalum>
    <ore:dustSignalum>:[
        <thermalfoundation:material:101>
    ],

    #<ore:dustQuartz>
    <ore:dustQuartz>:[
        <appliedenergistics2:material:3>
    ],

    #<ore:dustQuartz>
    <ore:dustQuartz>:[
        <appliedenergistics2:material:3>
    ],

    #<ore:dustCertusQuartz>
    <ore:dustCertusQuartz>:[
        <appliedenergistics2:material:2>
    ],

    #<ore:dustWheat>
    <ore:dustWheat>:[
        <appliedenergistics2:material:4>
    ],

    #<ore:dustCoal>
    <ore:dustCoal>:[
        <threng:material:3>,
		<actuallyadditions:item_dust:6>
    ],

	#<ore:dustSapphire>
	<ore:dustSapphire>:[
		<practicallogistics2:sapphiredust>
	],

	#<ore:dustDiamond>
	<ore:dustDiamond>:[
		<actuallyadditions:item_dust:2>
	],

	#<ore:dustEmerald>
	<ore:dustEmerald>:[
		<actuallyadditions:item_dust:3>
	],

	#<ore:dustLapis>
	<ore:dustLapis>:[
		<actuallyadditions:item_dust:4>
	],

	#<ore:dustNetherQuartz>
	<ore:dustNetherQuartz>:[
		<actuallyadditions:item_dust:5>
	],

	#<ore:dustQuartz>
	<ore:dustQuartz>:[
		<actuallyadditions:item_dust:5>
	]

};

for oreDictEntry, items in dustsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}

#greg's ender dust adds to <ore:dustEnder>
<ore:dustEnder>.add(<gregtech:meta_item_1:2218>);

//for gems

var gemsDisabled as IItemStack[][IOreDictEntry] = {

    #<ore:gemApatite>
    <ore:gemApatite>:[
        <forestry:apatite>
    ],

    #<ore:gemRuby>
    <ore:gemRuby>:[
        <projectred-core:resource_item:200>
    ],

    #<ore:gemSapphire>
    <ore:gemSapphire>:[
        <projectred-core:resource_item:201>,
		<practicallogistics2:sapphire>
    ],

    #<ore:gemPeridot>
    <ore:gemPeridot>:[
        <projectred-core:resource_item:202>
    ]

};

for oreDictEntry, items in gemsDisabled {
	for i in items {
		mods.jei.JEI.removeAndHide(i);
	}
	oreDictEntry.removeItems(items);
}


//add greg MV machine casing
<ore:MVcasing>.add(<gregtech:machine:502>);

//battery oredict
<ore:LVbattery>.add(<gregtech:meta_item_1:32519>,<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:32517>);
<ore:MVbattery>.add(<gregtech:meta_item_1:32527>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32529>);
<ore:HVbattery>.add(<gregtech:meta_item_1:32539>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32537>);

//replace silicon
<ore:itemSilicon>.remove(<enderio:item_material:5>);
<ore:itemSilicon>.add(<gregtech:meta_item_1:10061>);

//enderIO replace fuzed glass/quartz with holy fused glass
<ore:fusedGlass>.add(<enderio:block_holy_fused_glass:*>);
<ore:fusedGlass>.remove(<enderio:block_fused_glass:*>);
<ore:fuzedQuartz>.add(<enderio:block_holy_fused_glass:*>);
<ore:fuzedQuartz>.remove(<enderio:block_fused_quartz:*>);

//add enderIo capacitor
<ore:LVcap>.add(<enderio:item_basic_capacitor>);
<ore:MVcap>.add(<enderio:item_basic_capacitor:1>);
<ore:HVcap>.add(<enderio:item_basic_capacitor:2>);

//add vanilla conc to conc
<ore:blockConcrete>.add(<minecraft:concrete:*>);

//create unique oredict for certus
<ore:certusGem>.add(<appliedenergistics2:material>);
<ore:certusGem>.add(<appliedenergistics2:material:1>);
<ore:certusGem>.add(<appliedenergistics2:material:10>);

//fluix crystal oredict
<ore:fluixCrystal>.add(<appliedenergistics2:material:7>);
<ore:fluixCrystal>.add(<appliedenergistics2:material:12>);

//add aluminium to aluminum
<ore:blockAluminum>.add(<gregtech:meta_block_compressed_0:1>);

//tconstruct cobalt adds to cobalt
<ore:oreCobalt>.add(<tconstruct:ore>);

#set VoidWorldPortal
<ore:VoidWorldPortal>.add(<sonarcore:stablestoneblackrimmed_lightblue>);
<ore:NetherWorldPortal>.add(<sonarcore:stablestoneblackrimmed_plain>);

#future log removed from ore
val ftmcLog as IItemStack[] = [
    <futuremc:oak_wood>,
    <futuremc:acacia_wood>,
    <futuremc:dark_oak_wood>,
    <futuremc:birch_wood>,
    <futuremc:jungle_wood>,
    <futuremc:spruce_wood>
];

<ore:logWood>.removeItems(ftmcLog);

#quark bark
val quarkB as IItemStack[] = [
    <quark:bark>,
    <quark:bark:1>,
    <quark:bark:2>,
    <quark:bark:3>,
    <quark:bark:4>,
    <quark:bark:5>,
];

<ore:logWood>.addItems(quarkB);

//sonar core
val sonarcore as IItemStack[] = [
    <sonarcore:stablestone_normal>,
    <sonarcore:stablestonerimmed_normal>,
    <sonarcore:stablestoneblackrimmed_normal>,
    <sonarcore:stablestone_black>,
    <sonarcore:stablestonerimmed_black>,
    <sonarcore:stablestoneblackrimmed_black>,
    <sonarcore:stablestone_blue>,
    <sonarcore:stablestonerimmed_blue>,
    <sonarcore:stablestoneblackrimmed_blue>,
    <sonarcore:stablestone_brown>,
    <sonarcore:stablestonerimmed_brown>,
    <sonarcore:stablestoneblackrimmed_brown>,
    <sonarcore:stablestone_cyan>,
    <sonarcore:stablestonerimmed_cyan>,
    <sonarcore:stablestone_green>,
    <sonarcore:stablestoneblackrimmed_green>,
    <sonarcore:stablestonerimmed_green>,
    <sonarcore:stablestone_lightblue>,
    <sonarcore:stablestonerimmed_lightblue>,
    <sonarcore:stablestoneblackrimmed_cyan>,
    <sonarcore:stablestone_lightgrey>,
    <sonarcore:stablestonerimmed_lightgrey>,
    <sonarcore:stablestone_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestonerimmed_lime>,
    <sonarcore:stablestoneblackrimmed_lime>,
    <sonarcore:stablestone_magenta>,
    <sonarcore:stablestonerimmed_magenta>,
    <sonarcore:stablestoneblackrimmed_magenta>,
    <sonarcore:stablestone_orange>,
    <sonarcore:stablestonerimmed_orange>,
    <sonarcore:stablestoneblackrimmed_orange>,
    <sonarcore:stablestone_pink>,
    <sonarcore:stablestonerimmed_pink>,
    <sonarcore:stablestoneblackrimmed_pink>,
    <sonarcore:stablestonerimmed_plain>,
    <sonarcore:stablestone_purple>,
    <sonarcore:stablestonerimmed_purple>,
    <sonarcore:stablestone_red>,
    <sonarcore:stablestoneblackrimmed_purple>,
    <sonarcore:stablestonerimmed_red>,
    <sonarcore:stablestoneblackrimmed_red>,
    <sonarcore:stablestone_yellow>,
    <sonarcore:stablestonerimmed_yellow>,
    <sonarcore:stablestoneblackrimmed_yellow>,
];

<ore:sonarStableStone>.removeItems(sonarcore);

//cosmic neutron
<ore:blockCosmicNeutronium>.remove(<avaritia:block_resource>);
<ore:ingotCosmicNeutronium>.remove(<avaritia:resource:4>);
<ore:nuggetCosmicNeutronium>.removeItems([<avaritia:resource:3>]);

//global tools
global craftingToolHardHammer as IItemStack = <gregtech:meta_tool:6>;
global craftingToolSoftHammer as IItemStack = <gregtech:meta_tool:7>;
global craftingToolFile as IItemStack = <gregtech:meta_tool:9>;
global craftingToolScrewdriver as IIngredient = <gregtech:meta_tool:11> | <gregtech:meta_tool:34>;
global craftingToolMortar as IItemStack = <gregtech:meta_tool:12>;
global craftingToolKnife as IItemStack = <gregtech:meta_tool:17>;
global craftingToolWrench as IIngredient = <gregtech:meta_tool:8> | <gregtech:meta_tool:29> | <gregtech:meta_tool:30> | <gregtech:meta_tool:31>;
global craftingToolSaw as IIngredient = <gregtech:meta_tool:5> | <gregtech:meta_tool:26> | <gregtech:meta_tool:27> | <gregtech:meta_tool:28>;
global craftingToolPlunger as IItemStack = <gregtech:meta_tool:37>;
