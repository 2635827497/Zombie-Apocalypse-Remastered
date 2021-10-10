import scripts.functions.lm;
import scripts.functions.lt;
import scripts.functions.ltF;

val pistol = "sevendaystomine:pistol";
val bandage = "sevendaystomine:bandage";
val abandage = "sevendaystomine:advancedbandage";
val fak = "sevendaystomine:firstaidkit";
val shotgun = "sevendaystomine:shotgun";
val sgshort = "sevendaystomine:shotgun_short";
val magnum = "sevendaystomine:magnum";

val shbandage = <scalinghealth:healingitem>;
val shfak = <scalinghealth:healingitem:1>;

//Firearms
lt("backpack", "backpack", pistol, <mw:plasticplate>, 1, 0);
lt("code_safe", "guns", pistol, <mw:desert_eagle>, 65, 0);
lt("police_car", "nurse", pistol, <mw:glock_19>, 8, 0);
lt("sedan", "rare", pistol, <mw:m1911>, 8, 0);
lt("toilet", "toilet", pistol, <sevendaystomine:pistol_trigger>, 5, 0);
lt("writing_table", "writing_table", pistol, <mw:makarov_pm>, 3, 0);
lt("zombie_generic", "generic", pistol, <mw:gunmetalplate>, 1, 0);
lt("zombie_policeman", "nurse", pistol, <mw:m17>, 10, 0);
lt("zombie_soldier", "nurse", pistol, <mw:m9a1>, 8, 0);

lt("code_safe", "guns", "sevendaystomine:sniper_rifle", <mw:remington_700>, 1, 0);

lt("code_safe", "guns", "sevendaystomine:ak47", <mw:ak47>, 1, 0);
lt("zombie_feral", "feral", "sevendaystomine:ak47", <mw:ak47>, 1, 0);

lt("code_safe", "guns", "sevendaystomine:hunting_rifle", <mw:mp43e>, 10, 0);

lt("code_safe", "guns", shotgun, <mw:supernova>, 10, 0);
lt("police_car", "nurse", shotgun, <mw:remington870>, 1, 0);
lt("sedan", "rare", shotgun, <mw:spas_12>, 4, 0);
lt("zombie_policeman", "nurse", shotgun, <mw:remington870>, 1, 0);
lt("zombie_soldier", "nurse", shotgun, <mw:m1014>, 1, 0);

lm("code_safe", "guns", sgshort);
lm("police_car", "nurse", sgshort);
lm("sedan", "rare", sgshort);
lm("zombie_policeman", "nurse", sgshort);
lm("zombie_soldier", "nurse", sgshort);

lt("code_safe", "guns", magnum, <mw:taurus_raging_hunter>, 20, 0);
lt("police_car", "nurse", magnum, <mw:sw_500_magnum>, 6, 0);
lt("zombie_policeman", "nurse", magnum, <mw:sw_500_magnum>, 8, 0);
lt("zombie_soldier", "nurse", magnum, <mw:sw_500_magnum>, 4, 0);

lm("code_safe", "guns", "sevendaystomine:magnum_scoped");
lm("zombie_feral", "feral", "sevendaystomine:magnum_scoped");

lt("code_safe", "guns", "sevendaystomine:mp5", <mw:mp5a5>, 6, 0);
lt("code_safe", "guns", "sevendaystomine:rpg", <mw:rpg7>, 1, 0);
lt("code_safe", "guns", "sevendaystomine:m4", <mw:m4a1>, 5, 0);

//medic
ltF("airdrop", "medicine", bandage, shbandage, 10, 0, 1, 8);
lt("backpack", "backpack", bandage, shbandage, 8, 0);
ltF("cardboard", "common", bandage, shbandage, 5, 0, 1, 4);
ltF("dresser", "clothes", bandage, shbandage, 15, 0, 1, 4);
ltF("medical_cabinet", "medkit", bandage, shbandage, 1, 75, 1, 4);
ltF("police_car", "nurse", bandage, shbandage, 25, 0, 1, 5);
ltF("sedan", "common", bandage, shbandage, 7, 0, 1, 4);
ltF("zombie_feral", "feral", bandage, shbandage, 20, 0, 1, 2);
ltF("zombie_generic", "generic", bandage, shbandage, 5, 0, 1, 2);
ltF("zombie_miner", "miner", bandage, shbandage, 10, 0, 1, 2);
ltF("zombie_nurse", "nurse", bandage, shbandage, 30, 0, 1, 5);
ltF("zombie_policeman", "nurse", bandage, shbandage, 25, 0, 1, 5);
ltF("zombie_soldier", "nurse", bandage, shbandage, 10, 0, 1, 5);

lm("airdrop", "medicine", abandage);
lm("backpack", "backpack", abandage);
lm("cardboard", "rare", abandage);
lm("medical_cabinet", "medkit", abandage);
lm("sedan", "common", abandage);
lm("zombie_generic", "generic", abandage);
lm("zombie_nurse", "nurse", abandage);

ltF("airdrop", "medicine", fak, shfak, 4, 0, 1, 4);
ltF("medical_cabinet", "medkit", fak, shfak, 5, 0, 1, 2);
lt("sedan", "rare", fak, shfak, 10, 0);
lt("zombie_nurse", "nurse", fak, shfak, 4, 0);

//misc
lm("bookshelf_rare", "common",  "minecraft:enchanted_book");
