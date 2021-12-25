//import greg
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

//import crafttweaker II
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

val reactor = RecipeMap.getByName("chemical_reactor");
val large_chemical_reactor as RecipeMap = GARecipeMaps.LARGE_CHEMICAL_RECIPES;
val autoclave = RecipeMap.getByName("autoclave");
val blast_furnace = RecipeMap.getByName("blast_furnace");

//Air or oxygen + isoprene = raw rubber pulp  0
reactor.findRecipe(30,[],[<liquid:oxygen>*2000,<liquid:isoprene>*144]).remove();
large_chemical_reactor.findRecipe(30,[],[<liquid:oxygen>*2000,<liquid:isoprene>*144]).remove();
large_chemical_reactor.recipeBuilder()
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*144)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<gregtech:meta_item_1:2153>*3)
	.EUt(30)
	.duration(160)
	.buildAndRegister();
reactor.recipeBuilder()
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*144)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<gregtech:meta_item_1:2153>*3)
	.EUt(30)
	.duration(160)
	.buildAndRegister();
//oxygen + isoprene + beta pinene = citral 1
reactor.findRecipe(480,[<gtadditions:ga_dust:25>*26],[<liquid:oxygen>*2000,<liquid:isoprene>*2000]).remove();
large_chemical_reactor.findRecipe(480,[<gtadditions:ga_dust:25>*26],[<liquid:oxygen>*2000,<liquid:isoprene>*2000]).remove();
large_chemical_reactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:25>*26)
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*2000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:citral>*2000)
	.EUt(480)
	.duration(100)
	.buildAndRegister();
reactor.recipeBuilder()
	.inputs(<gtadditions:ga_dust:25>*26)
	.fluidInputs(<liquid:oxygen>*2000,<liquid:isoprene>*2000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:citral>*2000)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

//nether star chain
autoclave.findRecipe(122880,[<gregtech:meta_item_1:32726>],[<liquid:adamantium>*288]).remove();
autoclave.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32726>)
	.fluidInputs(<liquid:uranium>*288)
	.outputs(<gtadditions:ga_meta_item:32343>)
	.EUt(122880)
	.duration(480)
	.buildAndRegister();

//Bad steel = Good Steel
recipes.addShapeless("Good_Steel",<ore:ingotSteel>.firstItem,[<flammpfeil.slashblade:proudsoul:4097>]);

//6 CH2O + 4 NH3 -> C6H12N4 + 6 H2O
reactor.findRecipe(480,[],[<liquid:formaldehyde>*4000]).remove();
large_chemical_reactor.findRecipe(480,[],[<liquid:formaldehyde>*4000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:formaldehyde>*6000,<liquid:ammonia>*4000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:water>*6000)
	.outputs(<gtadditions:ga_dust:922>*22)
	.EUt(480)
	.duration(100)
	.buildAndRegister();

//Methyl Acetate
reactor.findRecipe(30,[],[<liquid:methanol>*1000,<liquid:acetic_acid>*1000]).remove();
large_chemical_reactor.findRecipe(30,[],[<liquid:methanol>*1000,<liquid:acetic_acid>*1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:methanol>*1000,<liquid:acetic_acid>*1000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:water>*1000,<liquid:methyl_acetate>*1000)
	.EUt(30)
	.duration(240)
	.buildAndRegister();

//Iridium in EBF
blast_furnace.findRecipe(120,[<gregtech:meta_item_1:2032>],[]).remove();
blast_furnace.recipeBuilder()
	.inputs(<ore:dustIridium>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.outputs(<gregtech:meta_item_1:11032>)
	.property("temperature", 2719)
	.EUt(120)
	.duration(2088)
	.buildAndRegister();

//acetic acid
reactor.findRecipe(30,[],[<liquid:methanol>*1000,<liquid:carbon_monoxide>*1000]).remove();
large_chemical_reactor.findRecipe(30,[],[<liquid:methanol>*1000,<liquid:carbon_monoxide>*1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:methanol>*1000,<liquid:carbon_monoxide>*1000)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidOutputs(<liquid:acetic_acid>)
	.EUt(30)
	.duration(300)
	.buildAndRegister();

//Sodium Azanide
reactor.findRecipe(120,[<gregtech:meta_item_1:2063>],[<liquid:ammonia>*1000]).remove();
large_chemical_reactor.findRecipe(120,[<gregtech:meta_item_1:2063>],[<liquid:ammonia>*1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:ammonia>*1000)
	.inputs(<ore:dustSodium>)
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
	.outputs(<gtadditions:ga_dust:143>*4)
	.fluidOutputs(<liquid:hydrogen>*1000)
	.EUt(120)
	.duration(110)
	.buildAndRegister();
