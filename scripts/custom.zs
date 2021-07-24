#priority 502
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var ribbon = VanillaFactory.createItem("ribbon");
    ribbon.maxStackSize = 1;
    ribbon.register();

var memories = VanillaFactory.createItem("memories");
    memories.maxStackSize = 64;
    memories.register();

var cup = VanillaFactory.createItem("cup");
	cup.maxStackSize = 64;
	cup.register();
