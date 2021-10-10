import mods.foundry.MoldStation;
import mods.foundry.Melting;
import mods.foundry.Casting;
import mods.foundry.Infuser;
import mods.foundry.CastingTable;

val mrion = <fluid:iron>;

MoldStation.addRecipe(<sevendaystomine:empty_jar_mold>, 4, 6, [
    0,1,1,0,
    1,2,2,1,
    1,2,2,1,
    1,2,2,1,
    1,2,2,1,
    0,1,1,0
]);

MoldStation.addRecipe(<sevendaystomine:bullet_tip_mold>, 5, 5, [
    1,1,0,0,0,
    1,1,1,0,0,
    0,1,1,1,0,
    0,0,1,1,1,
    0,0,0,1,0
]);

MoldStation.addRecipe(<sevendaystomine:bullet_casing_mold>, 4, 4, [
    0,1,0,0,
    1,1,1,0,
    0,1,1,1,
    0,0,1,0
]);

MoldStation.addRecipe(<sevendaystomine:hunting_rifle_bolt_mold>, 6, 3, [
    0,1,1,1,0,1,
    1,1,1,1,1,1,
    1,0,1,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:mp5_stock_mold>, 5, 4, [
    1,1,0,0,0,
    1,1,1,1,1,
    1,0,0,0,0,
    1,0,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:pistol_barrel_mold>, 5, 2, [
    1,1,0,0,1,
    1,1,1,1,1
]);

MoldStation.addRecipe(<sevendaystomine:hunting_rifle_barrel_mold>, 6, 3, [
    0,0,0,0,0,1,
    1,1,1,1,1,1,
    1,1,0,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:pistol_trigger_mold>, 4, 3, [
    1,1,1,1,
    1,1,0,0,
    1,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:mp5_trigger_mold>, 5, 3, [
    1,1,1,1,1,
    0,1,1,0,0,
    0,1,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:mp5_barrel_mold>, 5, 3, [
    0,0,0,1,0,
    1,1,1,1,1,
    1,1,1,1,0
]);

MoldStation.addRecipe(<sevendaystomine:sniper_rifle_trigger_mold>, 6, 4, [
    1,1,1,1,1,1,
    0,1,0,1,0,0,
    0,1,1,1,0,0,
    0,1,0,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:shotgun_receiver_mold>, 6, 3, [
    0,1,1,1,1,1,
    1,1,1,1,1,1,
    1,1,0,0,0,0
]);

MoldStation.addRecipe(<sevendaystomine:sniper_rifle_stock_mold>, 6, 3, [
    1,1,1,1,1,1,
    1,1,1,1,1,0,
    1,1,0,0,0,0
]);

Melting.addRecipe(mrion*24, <sevendaystomine:scrapiron>, 1540, 80);
Melting.addRecipe(<fluid:brass>*24, <sevendaystomine:scrapbrass>, 1200, 80);
Melting.addRecipe(<fluid:lead>*24, <sevendaystomine:scraplead>, 1550, 80);
Melting.addRecipe(<fluid:glass>*250, <ore:shardGlass>, 650, 80);

Casting.addRecipe(<sevendaystomine:bullet_casing>, <fluid:brass>*24, <sevendaystomine:bullet_casing_mold>);
Casting.addRecipe(<sevendaystomine:bullet_tip>, <fluid:lead>*24, <sevendaystomine:bullet_tip_mold>);
Casting.addRecipe(<sevendaystomine:emptyjar>, <fluid:glass>*750, <sevendaystomine:empty_jar_mold>);
Casting.addRecipe(<sevendaystomine:pistol_slide>, mrion*48, <sevendaystomine:pistol_barrel_mold>);
Casting.addRecipe(<sevendaystomine:pistol_trigger>, mrion*96, <sevendaystomine:pistol_trigger_mold>);
Casting.addRecipe(<sevendaystomine:mp5_stock>, mrion*96, <sevendaystomine:mp5_stock_mold>);
Casting.addRecipe(<sevendaystomine:hunting_rifle_bolt>, mrion*96, <sevendaystomine:hunting_rifle_bolt_mold>);
Casting.addRecipe(<sevendaystomine:hunting_rifle_barrel>, mrion*72, <sevendaystomine:hunting_rifle_barrel_mold>);
Casting.addRecipe(<sevendaystomine:mp5_trigger>, mrion*144, <sevendaystomine:mp5_trigger_mold>);
Casting.addRecipe(<sevendaystomine:mp5_barrel>, mrion*96, <sevendaystomine:mp5_barrel_mold>);
Casting.addRecipe(<sevendaystomine:shotgun_barrel>, mrion*72, <sevendaystomine:shotgun_barrel_mold>);
Casting.addRecipe(<sevendaystomine:sniper_rifle_trigger>, mrion*144, <sevendaystomine:sniper_rifle_trigger_mold>);
Casting.addRecipe(<sevendaystomine:shotgun_receiver>, mrion*96, <sevendaystomine:shotgun_receiver_mold>);
Casting.addRecipe(<sevendaystomine:sniper_rifle_stock>, mrion*144, <sevendaystomine:sniper_rifle_stock_mold>);
Casting.addRecipe(<sevendaystomine:brass_block>, <fluid:brass>*1296, <foundry:mold:4>);
Casting.addRecipe(<sevendaystomine:copper_block>, <fluid:copper>*1296, <foundry:mold:4>);

Infuser.addRecipe(<fluid:steel>*18, <fluid:iron>*18, <minecraft:coal>, 100);

CastingTable.addBlockRecipe(<sevendaystomine:brass_block>, <fluid:brass>*1296);
CastingTable.addBlockRecipe(<sevendaystomine:copper_block>, <fluid:copper>*1296);
