package com.moybj.blockid;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import net.fabricmc.loader.api.FabricLoader;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public class ConfigManager {
    private static final Gson GSON = new GsonBuilder().setPrettyPrinting().create();
    private static File configFile;
    private static ConfigData data;

    private static class ConfigData {
        List<FavoritesManager.FavoriteGroup> favoriteGroups = new ArrayList<>();
        List<HistoryManager.HistoryItem> history = new ArrayList<>();
    }

    public static void init() {
        configFile = new File(FabricLoader.getInstance().getConfigDir().toFile(), "block_id.json");
        load();
    }

    private static void load() {
        if (configFile != null && configFile.exists()) {
            try (FileReader reader = new FileReader(configFile)) {
                Type type = new TypeToken<ConfigData>() {}.getType();
                data = GSON.fromJson(reader, type);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (data == null) data = new ConfigData();
    }

    public static void save() {
        if (configFile == null) init();
        try {
            if (!configFile.getParentFile().exists()) configFile.getParentFile().mkdirs();
            try (FileWriter writer = new FileWriter(configFile)) {
                GSON.toJson(data, writer);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<FavoritesManager.FavoriteGroup> getFavoriteGroups() {
        if (data == null) init();
        if (data.favoriteGroups == null) data.favoriteGroups = new ArrayList<>();
        return new ArrayList<>(data.favoriteGroups);
    }

    public static void setFavoriteGroups(List<FavoritesManager.FavoriteGroup> groups) {
        if (data == null) init();
        data.favoriteGroups = new ArrayList<>(groups);
        save();
    }

    public static List<HistoryManager.HistoryItem> getHistory() {
        if (data == null) init();
        if (data.history == null) data.history = new ArrayList<>();
        return new ArrayList<>(data.history);
    }

    public static void setHistory(List<HistoryManager.HistoryItem> history) {
        if (data == null) init();
        data.history = new ArrayList<>(history);
        save();
    }
}
