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
        List<String> frequentBlocks = new ArrayList<>();
        int placeThreshold = 15;
        int worldEditThreshold = 3;
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

    public static List<String> getFrequentBlocks() {
        if (data == null) init();
        return new ArrayList<>(data.frequentBlocks);
    }

    public static void setFrequentBlocks(List<String> blocks) {
        if (data == null) init();
        data.frequentBlocks = new ArrayList<>(blocks);
        save();
    }

    public static int getPlaceThreshold() {
        if (data == null) init();
        return data.placeThreshold;
    }

    public static int getWorldEditThreshold() {
        if (data == null) init();
        return data.worldEditThreshold;
    }
}