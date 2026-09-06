package com.moybj.blockid;

import net.minecraft.client.MinecraftClient;
import net.minecraft.text.Text;

public class WorldEditIntegration {
    public static void copySetCommand(String blockId) {
        MinecraftClient mc = MinecraftClient.getInstance();
        if (mc.player == null) return;
        String command = "//set " + blockId;
        mc.keyboard.setClipboard(command);
        mc.player.sendMessage(Text.literal("已复制指令: " + command), true);
    }

    public static void copyReplaceCommand(String mask, String blockId) {
        MinecraftClient mc = MinecraftClient.getInstance();
        if (mc.player == null) return;
        String command = "//replace " + mask + " " + blockId;
        mc.keyboard.setClipboard(command);
        mc.player.sendMessage(Text.literal("已复制指令: " + command), true);
    }
}