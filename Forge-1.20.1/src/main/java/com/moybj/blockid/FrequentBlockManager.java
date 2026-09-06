package com.moybj.blockid;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FrequentBlockManager {
    private static final Map<String, Integer> placeCounts = new HashMap<>();
    private static final Map<String, Integer> worldEditCounts = new HashMap<>();

    public static void onBlockPlaced(String blockId) {
        placeCounts.merge(blockId, 1, Integer::sum);
        if (placeCounts.get(blockId) >= ConfigManager.getPlaceThreshold()) {
            addToFrequent(blockId);
        }
    }

    public static void onWorldEditUsed(String blockId) {
        worldEditCounts.merge(blockId, 1, Integer::sum);
        if (worldEditCounts.get(blockId) >= ConfigManager.getWorldEditThreshold()) {
            addToFrequent(blockId);
        }
    }

    private static void addToFrequent(String blockId) {
        List<String> current = ConfigManager.getFrequentBlocks();
        if (!current.contains(blockId)) {
            current.add(blockId);
            ConfigManager.setFrequentBlocks(current);
        }
    }

    
    public static List<String> getFrequentBlocks() {
        return new ArrayList<>(ConfigManager.getFrequentBlocks());
    }

    public static void resetSessionCounters() {
        placeCounts.clear();
        worldEditCounts.clear();
    }
}
