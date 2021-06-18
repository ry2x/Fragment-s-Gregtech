#priority 501
#loader gregtech
import mods.gregtech.material.MaterialRegistry;
	#Stellar
val materialStellar = MaterialRegistry.createIngotMaterial(501, "stellar_alloy", 0xFFFAFA, "SHINY", 2);
materialStellar.addFlags(["GENERATE_PLATE"]);

    #Dark steel
val materialDarkSteel = MaterialRegistry.createIngotMaterial(502, "dark_steel", 0x808080, "SHINY", 2);
materialDarkSteel.addFlags(["GENERATE_PLATE"]);

	#PSimetal
val materialPsimetal = MaterialRegistry.createIngotMaterial(503, "psi_metal", 0xACAEED, "SHINY", 2 );
materialPsimetal.addFlags(["GENERATE_PLATE","NO_SMELTING"]);

	#Ebony
val materialEbony = MaterialRegistry.createIngotMaterial(504, "ebony", 0x0A0806, "SHINY", 2 );
materialEbony.addFlags(["GENERATE_PLATE","NO_SMELTING"]);

	#Ivory
val materialIvory = MaterialRegistry.createIngotMaterial(505, "ivory", 0xE9EAE1, "SHINY", 2 );
materialIvory.addFlags(["GENERATE_PLATE","NO_SMELTING"]);

	#ardite
val materialArdite = MaterialRegistry.createIngotMaterial(506, "ardite", 0x902D21, "SHINY", 2 );
materialArdite.addFlags(["GENERATE_ORE","NO_SMELTING"]);
