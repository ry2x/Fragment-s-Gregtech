#priority 501
#loader gregtech
import mods.gregtech.material.MaterialRegistry;
	#Stellar
val materialStellar = MaterialRegistry.createIngotMaterial(501, "stellar_alloy", 0xFFFAFA, "SHINY", 2);
materialStellar.addFlags(["GENERATE_PLATE"]);

    #Dark steel
val materialDarkSteel = MaterialRegistry.createIngotMaterial(502, "dark_steel", 0x808080, "SHINY", 2);
materialDarkSteel.addFlags(["GENERATE_PLATE"]);

	#ardite
val materialArdite = MaterialRegistry.createIngotMaterial(506, "ardite", 0x902D21, "SHINY", 2 );
materialArdite.addFlags(["GENERATE_ORE","NO_SMELTING"]);
