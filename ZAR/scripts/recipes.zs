import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val cop = <ore:ingotCopper>;
val led = <ore:ingotLead>;
val tin = <ore:ingotTin>;
val iron = <ore:ingotIron>;
val ironB = <ore:blockIron>;
val obs = <minecraft:obsidian>;
val reds = <ore:dustRedstone>;
val dia = <ore:gemDiamond>;
val tl = <quark:tallow>;
val pebble = <sevendaystomine:smallstone>;

val remI as IItemStack[] = [
    <scalinghealth:healingitem:*>,
    <miniportal:mini_portal>,
    <securitycraft:reinforced_fence_gate>,
    <securitycraft:electrified_iron_fence>,
    <corpsecomplex:scroll>,
    <thebappystick:thebappystick>,
    <sevendaystomine:advancedbandage>,
    <sevendaystomine:sniper_rifle>,
    <sevendaystomine:pistol>,
    <sevendaystomine:hunting_rifle>,
    <sevendaystomine:shotgun>,
    <sevendaystomine:shotgun_short>,
    <sevendaystomine:magnum>,
    <sevendaystomine:magnum_scoped>,
    <sevendaystomine:mp5>,
    <sevendaystomine:woodplank>,
    <sevendaystomine:empty_jar_mold>,
    <sevendaystomine:bullet_tip_mold>,
    <sevendaystomine:bullet_casing_mold>,
    <sevendaystomine:hunting_rifle_barrel_mold>,
    <sevendaystomine:hunting_rifle_bolt_mold>,
    <sevendaystomine:mp5_stock_mold>,
    <sevendaystomine:mp5_trigger_mold>,
    <sevendaystomine:mp5_barrel_mold>,
    <sevendaystomine:pistol_barrel_mold>,
    <sevendaystomine:pistol_trigger_mold>,
    <sevendaystomine:shotgun_barrel_mold>,
    <sevendaystomine:shotgun_receiver_mold>,
    <sevendaystomine:sniper_rifle_trigger_mold>,
    <sevendaystomine:sniper_rifle_stock_mold>,
    <sevendaystomine:kitchenknife>,
    <sevendaystomine:boneshiv>,
    <sevendaystomine:crudeclub>,
    <sevendaystomine:woodenclub>,
    <sevendaystomine:ironreinforcedclub>,
    <sevendaystomine:barbedclub>,
    <sevendaystomine:spikedclub>,
    <sevendaystomine:brass_block>,
    <sevendaystomine:brassingot>,
    <sevendaystomine:copper_block>
];
val remIH as IItemStack[] = [
    <sevendaystomine:rocket>,
    <sevendaystomine:solar_panel>,
    <sevendaystomine:wind_turbine>
];
val remIC as IItemStack[] = [
    <currency:wallet>,
    <currency:linking_card>,
    <currency:atm>,
    <currency:shop_controller>,
    <currency:stock_crate>,
    <currency:shelf>,
    <currency:table>,
    <sevendaystomine:bandage>,
    <sevendaystomine:wire>,
    <minecraft:enchanting_table>,
    <sevendaystomine:cement_mold>,
    <sevendaystomine:shotgun_short_barrel_mold>,
    <sevendaystomine:shotgun_barrel_short>,
    <sevendaystomine:forge>,
    <sevendaystomine:tiningot>,
    <sevendaystomine:copperingot>,
    <sevendaystomine:steelingot>,
    <sevendaystomine:leadingot>,
    <mw:steeldust>
];

for remi in remI{
    recipes.remove(remi);
}
for remih in remIH{
    JEI.removeAndHide(remih);
}
for remic in remIC{
    recipes.remove(remic);
    JEI.removeAndHide(remic);
}

JEI.hideCategory("Forge");

recipes.addShapeless(<minecraft:slime_ball>,[tl,tl,tl,tl]);
furnace.addRecipe(tl,<minecraft:rotten_flesh>);

recipes.addShaped(<mw:gunmetalcomposite>*5,[[cop,cop,cop],[led,led,led],[tin,tin,tin]]);

recipes.addShaped(<miniportal:mini_portal>,[[dia,obs,dia],[obs,<minecraft:torch>,obs],[dia,obs,dia]]);

recipes.addShaped(<securitycraft:reinforced_fence_gate>*3,[[reds,reds,reds],[iron,ironB,iron],[iron,ironB,iron]]);
recipes.addShaped(<securitycraft:electrified_iron_fence>*9,[[reds,reds,reds],[ironB,iron,ironB],[ironB,iron,ironB]]);

recipes.addShaped(<thebappystick:thebappystick>,[[<minecraft:diamond_pickaxe>,<minecraft:anvil:0>,<minecraft:diamond_hoe>],[iron,<minecraft:diamond_shovel>,iron],[null,<minecraft:diamond_sword>,null]]);

recipes.addShaped(<sevendaystomine:woodplank>*4,[[null,<ore:plankWood>],[<ore:plankWood>,null]]);

recipes.addShapeless(<sevendaystomine:advancedbandage>*2,[<scalinghealth:healingitem>, <sevendaystomine:bottledbeer>]);
recipes.addShapeless(<sevendaystomine:cement>,[pebble,pebble,pebble,pebble,<sevendaystomine:sand_dust>]);

recipes.replaceAllOccurences(<sevendaystomine:wire>, <cableflux:fec_2>);
