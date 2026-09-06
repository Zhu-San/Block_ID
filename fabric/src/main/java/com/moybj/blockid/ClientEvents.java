package com.moybj.blockid;

import net.fabricmc.fabric.api.client.networking.v1.ClientPlayConnectionEvents;
import net.fabricmc.fabric.api.event.player.UseBlockCallback;
import net.minecraft.block.Block;
import net.minecraft.item.BlockItem;
import net.minecraft.item.ItemStack;
import net.minecraft.registry.Registries;
import net.minecraft.util.ActionResult;
import net.minecraft.util.Hand;
import net.minecraft.util.Identifier;

public class ClientEvents {

    public static void register() {
        
        UseBlockCallback.EVENT.register((player, world, hand, hitResult) -> {
            if (world.isClient() && hand == Hand.MAIN_HAND && player != null && !player.isSneaking()) {
                ItemStack stack = player.getMainHandStack();
                if (stack != null && stack.getItem() instanceof BlockItem blockItem) {
                    Block block = blockItem.getBlock();
                    Identifier id = Registries.BLOCK.getId(block);
                    if (id != null) {
                        FrequentBlockManager.onBlockPlaced(id.toString());
                    }
                }
            }
            return ActionResult.PASS;
        });

        
        ClientPlayConnectionEvents.DISCONNECT.register((handler, client) -> {
            FrequentBlockManager.resetSessionCounters();
        });
    }
}
