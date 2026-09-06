package com.moybj.blockid;

import java.util.ArrayList;
import java.util.List;

public class HistoryManager {
    public static class HistoryItem {
        public String content;
        public long timestamp;
        public String mode;

        public HistoryItem() {}

        public HistoryItem(String content, String mode) {
            this.content = content;
            this.mode = mode;
            this.timestamp = System.currentTimeMillis();
        }
    }

    private static final int MAX_HISTORY = 20;
    private static List<HistoryItem> history = new ArrayList<>();

    public static void init() {
        history = ConfigManager.getHistory();
    }

    public static List<HistoryItem> getHistory() {
        if (history == null) init();
        return new ArrayList<>(history);
    }

    public static void addRecord(String content, String mode) {
        if (history == null) init();
        history.add(0, new HistoryItem(content, mode));
        while (history.size() > MAX_HISTORY) {
            history.remove(history.size() - 1);
        }
        ConfigManager.setHistory(history);
    }

    public static void clearHistory() {
        history.clear();
        ConfigManager.setHistory(history);
    }

    public static HistoryItem getRecord(int index) {
        if (index >= 0 && index < history.size()) {
            return history.get(index);
        }
        return null;
    }
}
