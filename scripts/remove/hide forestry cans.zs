import crafttweaker.item.IItemStack;

for can in [<forestry:can:1>, <forestry:capsule:1>, <forestry:refractory:1>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(can.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}