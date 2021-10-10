#loader crafttweaker reloadableevents
#priority 0

import crafttweaker.player.IPlayer;
import crafttweaker.world.IVector3d;
import crafttweaker.item.IItemStack;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.event.EntityLivingDamageEvent;
import crafttweaker.event.LivingExperienceDropEvent;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.EntityLivingUseItemEvent.Start;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.EntityJoinWorldEvent;
import mods.zenutils.I18n;
import mods.zenutils.DelayManager;
import mods.ctutils.world.World;
import mods.ctutils.world.IGameRules;

static kachingMap as IItemStack[long] = {
    1 : <currency:penny>,
    5 : <currency:nickel>,
    10 : <currency:dime>,
    25 : <currency:quarter>,
    100 : <currency:dollar_bill>,
    500 : <currency:five_dollar_bill>,
    1000 : <currency:ten_dollar_bill>,
    2000 : <currency:twenty_dollar_bill>,
    5000 : <currency:fifty_dollar_bill>,
    10000 : <currency:hundred_dollar_bill>
};

for coin in kachingMap{
    kachingMap[coin].removeTooltip("^(.*)\\$(.*)");
}

events.onPlayerPickupItem(function(event as PlayerPickupItemEvent){
    for value in kachingMap{
        if event.item.item.definition.id == kachingMap[value].definition.id{
            val blc = event.player.ftbMoney;
            val amt = event.item.item.amount;
            event.player.ftbMoney = blc + (value*amt);
            event.cancel(); 
            event.item.setDead();
            event.player.sendPlaySoundPacket("entity.experience_orb.pickup", "master", event.player.position, 1.0, 1.0);

            val oSet = event.player.world.getGameRules().getBoolean("sendCommandFeedback") as string;
            event.player.world.setOrCreateGameRule("sendCommandFeedback", "false");
            event.player.server.commandManager.executeCommand(event.player.server, "title @p actionbar {\"text\":\"§6+ Θ "~(value*event.item.item.amount)~" → Θ "~event.player.ftbMoney~"\"}");
            event.player.world.setOrCreateGameRule("sendCommandFeedback", oSet);
        }
    }
});

events.onEntityLivingUseItemStart(function(event as Start){
    if (event.item has <corpsecomplex:scroll>){
        if (event.player.world.remote) 
            return;

        val blc = event.player.ftbMoney;
        if isNull(event.player.offHandHeldItem) || !(event.player.offHandHeldItem.definition.id == "death_compass:death_compass"){
            event.player.sendMessage(I18n.format("message.zarcus.offhand"));
            event.cancel();
        } else if (event.player.ftbMoney < GScost){
            event.player.sendMessage(I18n.format(I18n.format("message.zarcus.backfailed"), [GScost]));
            event.cancel();
        }
    }
});

events.onEntityLivingUseItemFinish(function(event as Finish){
    if (event.player.world.remote) 
        return;

    val blc = event.player.ftbMoney;
    if (event.item has <corpsecomplex:scroll>) && (event.isPlayer){
        event.player.ftbMoney = blc - GScost;
        event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), <minecraft:dirt>.mutable().withAmount(0));
        event.player.sendMessage(I18n.format(I18n.format("message.zarcus.back"), [GScost]));
    }
});

events.onPlayerRespawn(function(event as PlayerRespawnEvent){
    val blc = event.player.ftbMoney;
    event.player.ftbMoney = blc + 1 - 1;
});

events.onLivingExperienceDrop(function(event as LivingExperienceDropEvent){
    event.cancel();
});

//HIT EVENTS GO BRRRRRR
events.onEntityLivingDamage(function(event as EntityLivingDamageEvent){
    if !isNull(event.damageSource) && !isNull(event.damageSource.damageLocation){
        val locat as IVector3d = event.damageSource.damageLocation;

        if !isNull(event.entity.world.getClosestPlayer(locat.x, locat.y, locat.z, detectDistance, false)) && (event.damageSource.damageType == "thrown"){
            val shooter as IPlayer = event.entity.world.getClosestPlayer(locat.x, locat.y, locat.z, detectDistance, false);
            val effectArray = shooter.activePotionEffects as IPotionEffect[];

            for potions in effectArray{
                if (potions.potion.name == "effect.invisibility"){
                    shooter.removePotionEffect(<potion:minecraft:invisibility>);
                    shooter.sendMessage(I18n.format("message.zarcus.revealed"));
                }
            }

            var i = 0;
            while (i < hitVolume){
                shooter.sendPlaySoundPacket("entity.item.break", "master", shooter.position, 1.0, 1.6);
                shooter.sendPlaySoundPacket("entity.experience_orb.pickup", "master", shooter.position, 1.0, 2.0);
                i += 1;
            }

            if (event.entityLivingBase.isUndead){
                val d = event.amount;
                if (d > 0 & d < 10){
                    shooter.addExperience(1);
                } else if (d < 20){
                    shooter.addExperience(3);
                } else if (d < 50){
                    shooter.addExperience(10);
                } else {
                    shooter.addExperience(20);
                }
            }
        }
    }
});


events.onEntityJoinWorld(function(event as EntityJoinWorldEvent){
    if !isNull(event.entity.definition){
        if (event.entity.definition.id == "sevendaystomine:bandit"){
            val oSet = event.entity.world.getGameRules().getBoolean("sendCommandFeedback") as string;
            event.entity.world.setOrCreateGameRule("sendCommandFeedback", "false");
            event.entity.server.commandManager.executeCommand(event.entity.server, "summon mw:bandit1 "~event.entity.x~" "~event.entity.y~" "~event.entity.z);
            event.entity.world.setOrCreateGameRule("sendCommandFeedback", oSet);
            event.cancel();
        }
        if (event.entity.definition.id == "sevendaystomine:soldier"){
            if !isNull(event.entity.heldEquipment){
                val equips = event.entity.heldEquipment as IItemStack[];
                for item in equips{
                    if !isNull(item){
                        print(item.displayName);
                    }
                }
            }
            event.cancel();
        }
    }
});

/*
WIP:
    Real life melee weapons replacing mid ages diamond fricking swords and shit
    Workbenches for ammos and weapons with MM, spiced with some MM add-ons
    Pipe mods for automation maybe but that's weird
    Collecting(bibliocraft) gameplay, researching(research table) gameplay, blah blah gameplay
    ..More when more come to mind
*/
