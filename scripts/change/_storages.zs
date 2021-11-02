//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//@iron chest
    #Titanium Chest
recipes.remove(<ironchest:iron_chest:6>);
<ironchest:iron_chest:6>.displayName = "Titanium Chest";
recipes.addShaped("titanium_chest",<ironchest:iron_chest:6>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ironchest:iron_chest:5>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
    ]);
recipes.addShaped("titanium_chest_2",<ironchest:iron_chest:6>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ironchest:iron_chest:2>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
    ]);

    #Crystal Chest
recipes.remove(<ironchest:iron_chest:5>);
recipes.addShaped("crystal_chest",<ironchest:iron_chest:5>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:blockGlass>, <ironchest:iron_chest:2>, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);

    #Silver Chest
recipes.remove(<ironchest:iron_chest:4>);
recipes.addShaped("silver_chest",<ironchest:iron_chest:4>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
    [<ore:plateSilver>, <ironchest:iron_chest>, <ore:plateSilver>],
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]
    ]);

    #Copper Chest
recipes.remove(<ironchest:iron_chest:3>);
recipes.addShaped("coper_chest",<ironchest:iron_chest:3>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:chest>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
    ]);

    #Tungsten Chest
recipes.remove(<ironchest:iron_chest:2>);
<ironchest:iron_chest:2>.displayName = "Tungsten Chest";
recipes.addShaped("tungsten_chest",<ironchest:iron_chest:2>, [
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ironchest:iron_chest:1>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]
    ]);

    #Gold Chest
recipes.remove(<ironchest:iron_chest:1>);
recipes.addShaped("gold_chest",<ironchest:iron_chest:1>, [
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ironchest:iron_chest:4>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>]
    ]);

    #Iron Chest
recipes.remove(<ironchest:iron_chest>);
recipes.addShaped("iron_chest",<ironchest:iron_chest>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ironchest:iron_chest:3>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);

//upgrades
    #Tungsten to Crystal Chest Upgrade
recipes.remove(<ironchest:diamond_crystal_chest_upgrade>);
<ironchest:diamond_crystal_chest_upgrade>.displayName = "Tungsten to Crystal Chest Upgrade";
recipes.addShaped("tungsten_to_crystal_upgrade",<ironchest:diamond_crystal_chest_upgrade>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:plateTungsten>, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
]);

    #Tungsten to Titanium Chest Upgrade
recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
<ironchest:diamond_obsidian_chest_upgrade>.displayName = "Tungsten to Titanium Chest Upgrade";
recipes.addShaped("tungsten_to_titanium_upgrade",<ironchest:diamond_obsidian_chest_upgrade>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTungsten>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
]);

    #Gold to tungsten Chest Upgrade
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
<ironchest:gold_diamond_chest_upgrade>.displayName = "Gold to tungsten Chest Upgrade";
recipes.addShaped("gold_to_tungsten_upgrade",<ironchest:gold_diamond_chest_upgrade>, [
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ore:plateRoseGold>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]
]);

    #Silver to Gold Chest Upgrade
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.addShaped("silver_to_gold_upgrade",<ironchest:silver_gold_chest_upgrade>, [
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ore:plateSilver>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>]
]);

    #Copper to Iron Chest Upgrade
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped("copper_to_iron_upgrade",<ironchest:copper_iron_chest_upgrade>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);

    #Wood to Copper Chest Upgrade
recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.addShaped("wood_to_copper_upgrade",<ironchest:wood_copper_chest_upgrade>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plankWood>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
]);

//drawers
val temp = <storagedrawers:upgrade_template>;
val stick = <minecraft:stick>;

    #void upgrade
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped("SD_void_upgrade",<storagedrawers:upgrade_void>,[
    [stick,stick,stick],
    [<extrautils2:trashcan>,temp,<extrautils2:trashcan>],
    [stick,stick,stick]
]);

    #upgrades
val upgrades as string[IItemStack] = {
    <storagedrawers:upgrade_storage> : "Bronze",
    <storagedrawers:upgrade_storage:1> : "BlueSteel",
    <storagedrawers:upgrade_storage:2> : "Aluminium",
    <storagedrawers:upgrade_storage:3> : "Tungsten",
    <storagedrawers:upgrade_storage:4> : "Titanium"
};

for drawerUpdate,str in upgrades {
	var metalIngot = oreDict["ingot"~str];
	var name = "SD_"~str~"_upgrade";
    recipes.remove(drawerUpdate);
    recipes.addShaped(name,drawerUpdate,[
    [stick,stick,stick],
    [metalIngot,temp,metalIngot],
    [stick,metalIngot,stick]
    ]);
}

//creative
recipes.addShaped("creative_upgrade",<storagedrawers:upgrade_creative>,[
	[<ore:stickCosmicNeutronium>,<ore:stickCosmicNeutronium>,<ore:stickCosmicNeutronium>],
	[<overloaded:infinite_barrel>,<storagedrawers:upgrade_template>,<overloaded:infinite_tank>],
	[<ore:stickCosmicNeutronium>,<ore:stickCosmicNeutronium>,<ore:stickCosmicNeutronium>]
]);
