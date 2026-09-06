package com.moybj.blockid;

import net.minecraft.core.Registry;
import net.minecraft.resources.ResourceLocation;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.BlockItem;
import net.minecraft.world.item.ItemStack;
import net.minecraftforge.client.event.ClientChatEvent;
import net.minecraftforge.event.entity.player.PlayerEvent;
import net.minecraftforge.event.entity.player.PlayerInteractEvent;
import net.minecraftforge.eventbus.api.EventPriority;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.registries.ForgeRegistries;

@Mod.EventBusSubscriber(modid = BlockID.MOD_ID, bus = Mod.EventBusSubscriber.Bus.FORGE)
public class ClientEvents {

    @SubscribeEvent(priority = EventPriority.HIGHEST)
    public static void onRightClickBlock(PlayerInteractEvent.RightClickBlock event) {
        if (event.getLevel().isClientSide() && event.getHand() == InteractionHand.MAIN_HAND) {
            Player player = event.getEntity();
            if (player != null && !player.isShiftKeyDown()) {
                ItemStack stack = player.getMainHandItem();
                if (stack != null && stack.getItem() instanceof BlockItem blockItem) {
                    String id = Registry.BLOCK.getKey(blockItem.getBlock()).toString();
                    FrequentBlockManager.onBlockPlaced(id);
                }
            }
        }
    }

    @SubscribeEvent(priority = EventPriority.HIGHEST)
    public static void onClientChat(ClientChatEvent event) {
        String msg = event.getMessage();
        if (msg == null || msg.isEmpty()) return;

        String cleanMsg = msg.trim().replace("，", ",");
        String args = null;

        if (cleanMsg.startsWith("//set ")) {
            args = cleanMsg.substring(6).trim();
        } else if (cleanMsg.startsWith("//replace ")) {
            String[] parts = cleanMsg.split(" ");
            if (parts.length >= 3) {
                args = parts[2];
            }
        }

        if (args == null || args.isEmpty()) return;

        String[] blocks = args.split(",");
        for (String block : blocks) {
            String id = block.trim();
            if (id.isEmpty()) continue;
            if (id.startsWith("#")) continue;
            if (id.contains("%")) {
                int idx = id.indexOf('%');
                if (idx + 1 < id.length()) id = id.substring(idx + 1);
                else continue;
            }
            if (id.contains("[")) id = id.substring(0, id.indexOf('['));
            if (id.contains(" ")) id = id.substring(0, id.indexOf(' '));

            ResourceLocation rl = ResourceLocation.tryParse(id);
            if (rl == null) rl = new ResourceLocation("minecraft", id);

            if (ForgeRegistries.BLOCKS.containsKey(rl)) {
                FrequentBlockManager.onWorldEditUsed(rl.toString());
            }
        }
    }

    @SubscribeEvent
    public static void onPlayerLoggedOut(PlayerEvent.PlayerLoggedOutEvent event) {
        FrequentBlockManager.resetSessionCounters();
    }
}