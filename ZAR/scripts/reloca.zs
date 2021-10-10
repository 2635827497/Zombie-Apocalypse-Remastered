#priority -2021

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val renameArray = [
    "item.nickel.name"
] as string[];

val nameZHCNArray = [
    "Θ 5"
] as string[];

val nameENUSArray = [
    "Θ 5"
] as string[];

for i, item in renameArray{
    game.setLocalization("zh_cn", item, nameZHCNArray[i]);
    game.setLocalization("en_us", item, nameENUSArray[i]);
}
