//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//ironchest
    //chests
recipes.remove(<ironchest:iron_chest:6>);
recipes.remove(<ironchest:iron_chest:5>);
recipes.remove(<ironchest:iron_chest:2>);
recipes.remove(<ironchest:iron_chest:1>);
recipes.remove(<ironchest:iron_chest:4>);
recipes.remove(<ironchest:iron_chest>);
recipes.remove(<ironchest:iron_chest:3>);
recipes.addShaped(<ironchest:iron_chest:6>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ironchest:iron_chest:5>, <ore:plateTitanium>], 
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
    ]); 
recipes.addShaped(<ironchest:iron_chest:6>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ironchest:iron_chest:2>, <ore:plateTitanium>], 
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
    ]);
recipes.addShaped(<ironchest:iron_chest:5>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:blockGlass>, <ironchest:iron_chest:2>, <ore:blockGlass>], 
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
    ]);
recipes.addShaped(<ironchest:iron_chest:2>, [
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ironchest:iron_chest:1>, <ore:plateTungsten>], 
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]
    ]);
recipes.addShaped(<ironchest:iron_chest:1>, [
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ironchest:iron_chest:4>, <ore:plateRoseGold>], 
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>]
    ]);
recipes.addShaped(<ironchest:iron_chest:4>, [
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>],
    [<ore:plateSilver>, <ironchest:iron_chest>, <ore:plateSilver>], 
    [<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>]
    ]);
recipes.addShaped(<ironchest:iron_chest>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ironchest:iron_chest:3>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]);
recipes.addShaped(<ironchest:iron_chest:3>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:chest>, <ore:plateCopper>], 
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
    ]);
  #diplay name
<ironchest:iron_chest:2>.displayName = "Tungsten Chest";
<ironchest:iron_chest:6>.displayName = "Titanium Chest";

    //upgrades
recipes.remove(<ironchest:diamond_crystal_chest_upgrade>);
recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.addShaped(<ironchest:diamond_obsidian_chest_upgrade>, [
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
    [<ore:plateTitanium>, <ore:plateTungsten>, <ore:plateTitanium>], 
    [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]
]);
recipes.addShaped(<ironchest:diamond_crystal_chest_upgrade>, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:plateTungsten>, <ore:blockGlass>], 
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
]);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>],
    [<ore:plateTungsten>, <ore:plateRoseGold>, <ore:plateTungsten>], 
    [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]
]);
recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>],
    [<ore:plateRoseGold>, <ore:plateSilver>, <ore:plateRoseGold>], 
    [<ore:plateRoseGold>, <ore:plateRoseGold>, <ore:plateRoseGold>]
]);
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateCopper>, <ore:plateIron>], 
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);
recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
    [<ore:plateCopper>, <ore:plankWood>, <ore:plateCopper>], 
    [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]
]);
    #display name
<ironchest:gold_diamond_chest_upgrade>.displayName = "Gold to tungsten Chest Upgrade";
<ironchest:diamond_crystal_chest_upgrade>.displayName = "Tungsten to Crystal Chest Upgrade";
<ironchest:diamond_obsidian_chest_upgrade>.displayName = "Tungsten to Titanium Chest Upgrade";

//drawers
val temp = <storagedrawers:upgrade_template>;
val stick = <minecraft:stick>;
    #void upgrade
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>,[
    [stick,stick,stick],
    [<extrautils2:trashcan>,temp,<extrautils2:trashcan>],
    [stick,stick,stick]
]);
    #upgrades
val upgrades as IItemStack[] = [
    <storagedrawers:upgrade_storage>,
    <storagedrawers:upgrade_storage:1>,
    <storagedrawers:upgrade_storage:2>,
    <storagedrawers:upgrade_storage:3>,
    <storagedrawers:upgrade_storage:4>,
];
for i in upgrades {
    recipes.remove(i);
}

recipes.addShaped(<storagedrawers:upgrade_storage>,[
    [stick,stick,stick],
    [<ore:ingotBronze>,temp,<ore:ingotBronze>],
    [stick,<ore:ingotBronze>,stick]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:1>,[
    [stick,stick,stick],
    [<ore:ingotBlueSteel>,temp,<ore:ingotBlueSteel>],
    [stick,<ore:ingotBlueSteel>,stick]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:2>,[
    [stick,stick,stick],
    [<ore:ingotAluminium>,temp,<ore:ingotAluminium>],
    [stick,<ore:ingotAluminium>,stick]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:3>,[
    [stick,stick,stick],
    [<ore:ingotTungsten>,temp,<ore:ingotTungsten>],
    [stick,<ore:ingotTungsten>,stick]
]);
recipes.addShaped(<storagedrawers:upgrade_storage:4>,[
    [stick,stick,stick],
    [<ore:ingotTitanium>,temp,<ore:ingotTitanium>],
    [stick,<ore:ingotTitanium>,stick]
]);