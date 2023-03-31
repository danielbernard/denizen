cc_is_interactable:
   type: procedure
   definitions: target
   debug: false
   description: Checks if the target material name is interactable
   script:
      - if <[target].equals[air]>:
         - determine false
      - if <server.flag[cc_interactable_items_cache].contains[<[target]>]>:
         - determine true
      - else:
         - determine false

cc_is_interactable_init:
   type: task
   debug: false
   script:
      - flag server cc_interactable_items_cache:<list[ACACIA_BUTTON|ACACIA_DOOR|ACACIA_FENCE|ACACIA_FENCE_GATE|ACACIA_HANGING_SIGN|ACACIA_SIGN|ACACIA_STAIRS|ACACIA_TRAPDOOR|ACACIA_WALL_HANGING_SIGN|ACACIA_WALL_SIGN|ANDESITE_STAIRS|ANVIL|BAMBOO_BUTTON|BAMBOO_DOOR|BAMBOO_FENCE|BAMBOO_FENCE_GATE|BAMBOO_HANGING_SIGN|BAMBOO_MOSAIC_STAIRS|BAMBOO_SIGN|BAMBOO_STAIRS|BAMBOO_TRAPDOOR|BAMBOO_WALL_HANGING_SIGN|BAMBOO_WALL_SIGN|BARREL|BEACON|BEEHIVE|BEE_NEST|BELL|BIRCH_BUTTON|BIRCH_DOOR|BIRCH_FENCE|BIRCH_FENCE_GATE|BIRCH_HANGING_SIGN|BIRCH_SIGN|BIRCH_STAIRS|BIRCH_TRAPDOOR|BIRCH_WALL_HANGING_SIGN|BIRCH_WALL_SIGN|BLACKSTONE_STAIRS|BLACK_BED|BLACK_CANDLE|BLACK_CANDLE_CAKE|BLACK_SHULKER_BOX|BLAST_FURNACE|BLUE_BED|BLUE_CANDLE|BLUE_CANDLE_CAKE|BLUE_SHULKER_BOX|BREWING_STAND|BRICK_STAIRS|BROWN_BED|BROWN_CANDLE|BROWN_CANDLE_CAKE|BROWN_SHULKER_BOX|CAKE|CAMPFIRE|CANDLE|CANDLE_CAKE|CARTOGRAPHY_TABLE|CAULDRON|CAVE_VINES|CAVE_VINES_PLANT|CHAIN_COMMAND_BLOCK|CHERRY_BUTTON|CHERRY_DOOR|CHERRY_FENCE|CHERRY_FENCE_GATE|CHERRY_HANGING_SIGN|CHERRY_SIGN|CHERRY_STAIRS|CHERRY_TRAPDOOR|CHERRY_WALL_HANGING_SIGN|CHERRY_WALL_SIGN|CHEST|CHIPPED_ANVIL|CHISELED_BOOKSHELF|COBBLED_DEEPSLATE_STAIRS|COBBLESTONE_STAIRS|COMMAND_BLOCK|COMPARATOR|COMPOSTER|CRAFTING_TABLE|CRIMSON_BUTTON|CRIMSON_DOOR|CRIMSON_FENCE|CRIMSON_FENCE_GATE|CRIMSON_HANGING_SIGN|CRIMSON_SIGN|CRIMSON_STAIRS|CRIMSON_TRAPDOOR|CRIMSON_WALL_HANGING_SIGN|CRIMSON_WALL_SIGN|CUT_COPPER_STAIRS|CYAN_BED|CYAN_CANDLE|CYAN_CANDLE_CAKE|CYAN_SHULKER_BOX|DAMAGED_ANVIL|DARK_OAK_BUTTON|DARK_OAK_DOOR|DARK_OAK_FENCE|DARK_OAK_FENCE_GATE|DARK_OAK_HANGING_SIGN|DARK_OAK_SIGN|DARK_OAK_STAIRS|DARK_OAK_TRAPDOOR|DARK_OAK_WALL_HANGING_SIGN|DARK_OAK_WALL_SIGN|DARK_PRISMARINE_STAIRS|DAYLIGHT_DETECTOR|DEEPSLATE_BRICK_STAIRS|DEEPSLATE_REDSTONE_ORE|DEEPSLATE_TILE_STAIRS|DIORITE_STAIRS|DISPENSER|DRAGON_EGG|DROPPER|ENCHANTING_TABLE|ENDER_CHEST|END_STONE_BRICK_STAIRS|EXPOSED_CUT_COPPER_STAIRS|FLETCHING_TABLE|FLOWER_POT|FURNACE|GRANITE_STAIRS|GRAY_BED|GRAY_CANDLE|GRAY_CANDLE_CAKE|GRAY_SHULKER_BOX|GREEN_BED|GREEN_CANDLE|GREEN_CANDLE_CAKE|GREEN_SHULKER_BOX|GRINDSTONE|HOPPER|IRON_DOOR|IRON_TRAPDOOR|JIGSAW|JUKEBOX|JUNGLE_BUTTON|JUNGLE_DOOR|JUNGLE_FENCE|JUNGLE_FENCE_GATE|JUNGLE_HANGING_SIGN|JUNGLE_SIGN|JUNGLE_STAIRS|JUNGLE_TRAPDOOR|JUNGLE_WALL_HANGING_SIGN|JUNGLE_WALL_SIGN|LAVA_CAULDRON|LECTERN|LEVER|LIGHT|LIGHT_BLUE_BED|LIGHT_BLUE_CANDLE|LIGHT_BLUE_CANDLE_CAKE|LIGHT_BLUE_SHULKER_BOX|LIGHT_GRAY_BED|LIGHT_GRAY_CANDLE|LIGHT_GRAY_CANDLE_CAKE|LIGHT_GRAY_SHULKER_BOX|LIME_BED|LIME_CANDLE|LIME_CANDLE_CAKE|LIME_SHULKER_BOX|LOOM|MAGENTA_BED|MAGENTA_CANDLE|MAGENTA_CANDLE_CAKE|MAGENTA_SHULKER_BOX|MANGROVE_BUTTON|MANGROVE_DOOR|MANGROVE_FENCE|MANGROVE_FENCE_GATE|MANGROVE_HANGING_SIGN|MANGROVE_SIGN|MANGROVE_STAIRS|MANGROVE_TRAPDOOR|MANGROVE_WALL_HANGING_SIGN|MANGROVE_WALL_SIGN|MOSSY_COBBLESTONE_STAIRS|MOSSY_STONE_BRICK_STAIRS|MOVING_PISTON|MUD_BRICK_STAIRS|NETHER_BRICK_FENCE|NETHER_BRICK_STAIRS|NOTE_BLOCK|OAK_BUTTON|OAK_DOOR|OAK_FENCE|OAK_FENCE_GATE|OAK_HANGING_SIGN|OAK_SIGN|OAK_STAIRS|OAK_TRAPDOOR|OAK_WALL_HANGING_SIGN|OAK_WALL_SIGN|ORANGE_BED|ORANGE_CANDLE|ORANGE_CANDLE_CAKE|ORANGE_SHULKER_BOX|OXIDIZED_CUT_COPPER_STAIRS|PINK_BED|PINK_CANDLE|PINK_CANDLE_CAKE|PINK_SHULKER_BOX|POLISHED_ANDESITE_STAIRS|POLISHED_BLACKSTONE_BRICK_STAIRS|POLISHED_BLACKSTONE_BUTTON|POLISHED_BLACKSTONE_STAIRS|POLISHED_DEEPSLATE_STAIRS|POLISHED_DIORITE_STAIRS|POLISHED_GRANITE_STAIRS|POTTED_ACACIA_SAPLING|POTTED_ALLIUM|POTTED_AZALEA_BUSH|POTTED_AZURE_BLUET|POTTED_BAMBOO|POTTED_BIRCH_SAPLING|POTTED_BLUE_ORCHID|POTTED_BROWN_MUSHROOM|POTTED_CACTUS|POTTED_CHERRY_SAPLING|POTTED_CORNFLOWER|POTTED_CRIMSON_FUNGUS|POTTED_CRIMSON_ROOTS|POTTED_DANDELION|POTTED_DARK_OAK_SAPLING|POTTED_DEAD_BUSH|POTTED_FERN|POTTED_FLOWERING_AZALEA_BUSH|POTTED_JUNGLE_SAPLING|POTTED_LILY_OF_THE_VALLEY|POTTED_MANGROVE_PROPAGULE|POTTED_OAK_SAPLING|POTTED_ORANGE_TULIP|POTTED_OXEYE_DAISY|POTTED_PINK_TULIP|POTTED_POPPY|POTTED_RED_MUSHROOM|POTTED_RED_TULIP|POTTED_SPRUCE_SAPLING|POTTED_TORCHFLOWER|POTTED_WARPED_FUNGUS|POTTED_WARPED_ROOTS|POTTED_WHITE_TULIP|POTTED_WITHER_ROSE|POWDER_SNOW_CAULDRON|PRISMARINE_BRICK_STAIRS|PRISMARINE_STAIRS|PUMPKIN|PURPLE_BED|PURPLE_CANDLE|PURPLE_CANDLE_CAKE|PURPLE_SHULKER_BOX|PURPUR_STAIRS|QUARTZ_STAIRS|REDSTONE_ORE|REDSTONE_WIRE|RED_BED|RED_CANDLE|RED_CANDLE_CAKE|RED_NETHER_BRICK_STAIRS|RED_SANDSTONE_STAIRS|RED_SHULKER_BOX|REPEATER|REPEATING_COMMAND_BLOCK|RESPAWN_ANCHOR|SANDSTONE_STAIRS|SHULKER_BOX|SMITHING_TABLE|SMOKER|SMOOTH_QUARTZ_STAIRS|SMOOTH_RED_SANDSTONE_STAIRS|SMOOTH_SANDSTONE_STAIRS|SOUL_CAMPFIRE|SPRUCE_BUTTON|SPRUCE_DOOR|SPRUCE_FENCE|SPRUCE_FENCE_GATE|SPRUCE_HANGING_SIGN|SPRUCE_SIGN|SPRUCE_STAIRS|SPRUCE_TRAPDOOR|SPRUCE_WALL_HANGING_SIGN|SPRUCE_WALL_SIGN|STONECUTTER|STONE_BRICK_STAIRS|STONE_BUTTON|STONE_STAIRS|STRUCTURE_BLOCK|SWEET_BERRY_BUSH|TNT|TRAPPED_CHEST|WARPED_BUTTON|WARPED_DOOR|WARPED_FENCE|WARPED_FENCE_GATE|WARPED_HANGING_SIGN|WARPED_SIGN|WARPED_STAIRS|WARPED_TRAPDOOR|WARPED_WALL_HANGING_SIGN|WARPED_WALL_SIGN|WATER_CAULDRON|WAXED_CUT_COPPER_STAIRS|WAXED_EXPOSED_CUT_COPPER_STAIRS|WAXED_OXIDIZED_CUT_COPPER_STAIRS|WAXED_WEATHERED_CUT_COPPER_STAIRS|WEATHERED_CUT_COPPER_STAIRS|WHITE_BED|WHITE_CANDLE|WHITE_CANDLE_CAKE|WHITE_SHULKER_BOX|YELLOW_BED|YELLOW_CANDLE|YELLOW_CANDLE_CAKE|YELLOW_SHULKER_BOX]>

cc_is_interactable_world:
   type: world
   debug: false
   events:
      on server start:
         - run cc_is_interactable_init
