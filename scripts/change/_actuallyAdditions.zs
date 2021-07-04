//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.gtadditions.recipe.LargeRecipeMap;

//removal
#"actuallyadditions:recipes"
val removal as string[] = [
	#coils
	"actuallyadditions:recipes44"
];

for name in removal {
	recipes.removeByRecipeName(name);
}

//coils
recipes.addShaped(<actuallyadditions:item_misc:7>,[
	[<ore:wireFineIron>,<ore:wireFineIron>,<ore:wireFineIron>],
	[<ore:wireFineIron>,<ore:boltSteel>,<ore:wireFineIron>],
	[<ore:wireFineIron>,<ore:wireFineIron>,<ore:wireFineIron>]
]);
recipes.addShaped(<actuallyadditions:item_misc:8>,[
	[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>],
	[<ore:wireFineGold>,<actuallyadditions:item_misc:7>,<ore:wireFineGold>],
	[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>]
]);
