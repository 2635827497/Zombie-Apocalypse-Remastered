#priority 1000

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//For 7DTM only
function lm( //Pure removing
    table as string, pool as string, removingEntry as string){
        val TB = LootTweaker.getTable("sevendaystomine:"~table);
        val PL = TB.getPool(pool);
        PL.removeEntry(removingEntry);
}

function lt( //Simply removing and adding
    table as string, pool as string, removingEntry as string, item as IItemStack, weight as int, quality as int){
        val TB = LootTweaker.getTable("sevendaystomine:"~table);
        val PL = TB.getPool(pool);
        PL.removeEntry(removingEntry);
        PL.addItemEntry(item, weight, quality);
}

function ltF( //All setCount function
    table as string, pool as string, removingEntry as string, item as IItemStack, weight as int, quality as int, cmin as int, cmax as int){
        val TB = LootTweaker.getTable("sevendaystomine:"~table);
        val PL = TB.getPool(pool);
        PL.removeEntry(removingEntry);
        PL.addItemEntry(item, weight, quality, [Functions.setCount(cmin, cmax)], []);
}
