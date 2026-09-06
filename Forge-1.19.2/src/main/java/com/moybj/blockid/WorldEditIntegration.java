package com.moybj.blockid;

import net.minecraft.client.Minecraft;
import net.minecraft.network.chat.Component;

public class WorldEditIntegration {
    public static void copySetCommand(String blockId) {
        Minecraft mc = Minecraft.getInstance();
        if (mc.player == null) return;
        String command = "//set " + blockId;
        mc.keyboardHandler.setClipboard(command);
        mc.player.displayClientMessage(Component.literal("已复制指令: " + command), true);
    }

    public static void copyReplaceCommand(String mask, String blockId) {
        Minecraft mc = Minecraft.getInstance();
        if (mc.player == null) return;
        String command = "//replace " + mask + " " + blockId;
        mc.keyboardHandler.setClipboard(command);
        mc.player.displayClientMessage(Component.literal("已复制指令: " + command), true);
    }
}