require("scripts/globals/keyitems")
require("scripts/globals/log_ids")
require("scripts/globals/npc_util")
require("scripts/globals/titles")
require("scripts/globals/zone")

dsp = dsp or {}
dsp.quest = dsp.quest or {} -- "Solid" enum definitions which are currently in use by master

-- These should be tabled enums for rewritten quests, but
-- these globals are kept so old-style quests will work
-- until they're all converted (and then these can be removed)
QUEST_AVAILABLE = 0;
QUEST_ACCEPTED  = 1;
QUEST_COMPLETED = 2;

-----------------------------------
--  LOG IDS AND QUEST AREAS
-----------------------------------

-- These integers are the ones used by the client
-- to diffierentiate different quest log update packets
dsp.quest.log =
{
    SANDORIA    =  0,
    BASTOK      =  1,
    WINDURST    =  2,
    JEUNO       =  3,
    OTHER_AREAS =  4,
    OUTLANDS    =  5,
    AHT_URHGAN  =  6,
    CRYSTAL_WAR =  7,
    ABYSSEA     =  8,
    ADOULIN     =  9,
    COALITION   = 10
}

-- These area strings are used in the prefixes for our quest ID
-- tables, which are used in all calls to player:fooQuest() functions.
-- These areas are keyed by the area's quest log ID to facilitate
-- fetching the area's quests.
-- Ex: If all you have is a quest log ID, you can pull all
-- quest IDs for that area by: dsp.quest.id[dsp.quest.area[log]]
-- These can also be tied into quest file directories later.
dsp.quest.area =
{
    [dsp.quest.log.SANDORIA]    = 'sandoria',
    [dsp.quest.log.BASTOK]      = 'bastok',
    [dsp.quest.log.WINDURST]    = 'windurst',
    [dsp.quest.log.JEUNO]       = 'jeuno',
    [dsp.quest.log.OTHER_AREAS] = 'otherAreas',
    [dsp.quest.log.OUTLANDS]    = 'outlands',
    [dsp.quest.log.AHT_URHGAN]  = 'ahtUrhgan',
    [dsp.quest.log.CRYSTAL_WAR] = 'crystalWar',
    [dsp.quest.log.ABYSSEA]     = 'abyssea',
    [dsp.quest.log.ADOULIN]     = 'adoulin',
    [dsp.quest.log.COALITION]   = 'coalition'
}

-----------------------------------
--  QUEST IDS
-----------------------------------

dsp.quest.id =
{
    -----------------------------------
    --  San d'Oria
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.SANDORIA]] =
    {
        A_SENTRY_S_PERIL                = 0,  -- ± --
        WATER_OF_THE_CHEVAL             = 1,  -- ± --
        ROSEL_THE_ARMORER               = 2,  -- ± --
        THE_PICKPOCKET                  = 3,  -- ± --
        FATHER_AND_SON                  = 4,  -- + --
        THE_SEAMSTRESS                  = 5,  -- + --
        THE_DISMAYED_CUSTOMER           = 6,  -- + --
        THE_TRADER_IN_THE_FOREST        = 7,  -- + --
        THE_SWEETEST_THINGS             = 8,  -- + --
        THE_VICASQUE_S_SERMON           = 9,  -- + --
        A_SQUIRE_S_TEST                 = 10, -- + --
        GRAVE_CONCERNS                  = 11, -- ± --
        THE_BRUGAIRE_CONSORTIUM         = 12, -- + --
        LIZARD_SKINS                    = 15, -- + --
        FLYERS_FOR_REGINE               = 16, -- + --
        GATES_TO_PARADISE               = 18, -- + --
        A_SQUIRE_S_TEST_II              = 19, -- + --
        TO_CURE_A_COUGH                 = 20, -- + --
        TIGER_S_TEETH                   = 23, -- ± --
        UNDYING_FLAMES                  = 26, -- + --
        A_PURCHASE_OF_ARMS              = 27, -- + --
        A_KNIGHT_S_TEST                 = 29, -- + --
        THE_MEDICINE_WOMAN              = 30, -- + --
        BLACK_TIGER_SKINS               = 31, -- + --
        GROWING_FLOWERS                 = 58, -- ± --
        TRIAL_BY_ICE                    = 59, -- + --
        THE_GENERAL_S_SECRET            = 60, -- ± --
        THE_RUMOR                       = 61, -- ± --
        HER_MAJESTY_S_GARDEN            = 62, -- + --
        INTRODUCTION_TO_TEAMWORK        = 63,
        INTERMEDIATE_TEAMWORK           = 64,
        ADVANCED_TEAMWORK               = 65,
        GRIMY_SIGNPOSTS                 = 66, -- + --
        A_JOB_FOR_THE_CONSORTIUM        = 67,
        TROUBLE_AT_THE_SLUICE           = 68, -- + --
        THE_MERCHANT_S_BIDDING          = 69, -- ± --
        UNEXPECTED_TREASURE             = 70,
        BLACKMAIL                       = 71, -- + --
        THE_SETTING_SUN                 = 72, -- + --
        DISTANT_LOYALTIES               = 74,
        THE_RIVALRY                     = 75, -- ± --
        THE_COMPETITION                 = 76, -- ± --
        STARTING_A_FLAME                = 77, -- ± --
        FEAR_OF_THE_DARK                = 78, -- + --
        WARDING_VAMPIRES                = 79, -- + --
        SLEEPLESS_NIGHTS                = 80, -- ± --
        LUFET_S_LAKE_SALT               = 81, -- ± --
        HEALING_THE_LAND                = 82, -- ± --
        SORCERY_OF_THE_NORTH            = 83, -- ± --
        THE_CRIMSON_TRIAL               = 84, -- ± --
        ENVELOPED_IN_DARKNESS           = 85, -- ± --
        PEACE_FOR_THE_SPIRIT            = 86, -- ± --
        MESSENGER_FROM_BEYOND           = 87, -- ± --
        PRELUDE_OF_BLACK_AND_WHITE      = 88, -- ± --
        PIEUJE_S_DECISION               = 89, -- + --
        SHARPENING_THE_SWORD            = 90, -- ± --
        A_BOY_S_DREAM                   = 91, -- ± --
        UNDER_OATH                      = 92,
        THE_HOLY_CREST                  = 93, -- + --
        A_CRAFTSMAN_S_WORK              = 94, -- ± --
        CHASING_QUOTAS                  = 95, -- + --
        KNIGHT_STALKER                  = 96, -- + --
        ECO_WARRIOR_SAN                 = 97,
        METHODS_CREATE_MADNESS          = 98,
        SOULS_IN_SHADOW                 = 99,
        A_TASTE_FOR_MEAT                = 100, -- ± --
        EXIT_THE_GAMBLER                = 101, -- ± --
        OLD_WOUNDS                      = 102,
        ESCORT_FOR_HIRE_SAN_D_ORIA      = 103,
        A_DISCERNING_EYE_SAN_D_ORIA     = 104,
        A_TIMELY_VISIT                  = 105,
        FIT_FOR_A_PRINCE                = 106,
        TRIAL_SIZE_TRIAL_BY_ICE         = 107, -- + --
        SIGNED_IN_BLOOD                 = 108, -- + --
        TEA_WITH_A_TONBERRY             = 109,
        SPICE_GALS                      = 110,
        OVER_THE_HILLS_AND_FAR_AWAY     = 112,
        LURE_OF_THE_WILDCAT_SAN_D_ORIA  = 113, -- ± --
        ATELLOUNE_S_LAMENT              = 114,
        THICK_SHELLS                    = 117, -- ± --
        FOREST_FOR_THE_TREES            = 118,
    },

    -----------------------------------
    --  Bastok
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.BASTOK]] =
    {
        THE_SIREN_S_TEAR                = 0,  -- ± --
        BEAUTY_AND_THE_GALKA            = 1,  -- ± --
        WELCOME_TO_BASTOK               = 2,  -- + --
        GUEST_OF_HAUTEUR                = 3,
        THE_QUADAV_S_CURSE              = 4,  -- ± --
        OUT_OF_ONE_S_SHELL              = 5,  -- ± --
        HEARTS_OF_MYTHRIL               = 6,  -- ± --
        THE_ELEVENTH_S_HOUR             = 7,  -- ± --
        SHADY_BUSINESS                  = 8,  -- ± --
        A_FOREMAN_S_BEST_FRIEND         = 9,  -- ± --
        BREAKING_STONES                 = 10, -- + --
        THE_COLD_LIGHT_OF_DAY           = 11, -- + --
        GOURMET                         = 12, -- ± --
        THE_ELVAAN_GOLDSMITH            = 13, -- ± --
        A_FLASH_IN_THE_PAN              = 14, -- ± --
        SMOKE_ON_THE_MOUNTAIN           = 15, -- ± --
        STAMP_HUNT                      = 16, -- + --
        FOREVER_TO_HOLD                 = 17, -- ± --
        TILL_DEATH_DO_US_PART           = 18, -- ± --
        FALLEN_COMRADES                 = 19, -- ± --
        RIVALS                          = 20, -- + --
        MOM_THE_ADVENTURER              = 21, -- + --
        THE_SIGNPOST_MARKS_THE_SPOT     = 22, -- + --
        PAST_PERFECT                    = 23, -- ± --
        STARDUST                        = 24, -- + --
        MEAN_MACHINE                    = 25, -- ± --
        CID_S_SECRET                    = 26, -- ± --
        THE_USUAL                       = 27, -- ± --
        BLADE_OF_DARKNESS               = 28, -- ± --
        FATHER_FIGURE                   = 29, -- ± --
        THE_RETURN_OF_THE_ADVENTURER    = 30, -- ± --
        DRACHENFALL                     = 31, -- + --
        VENGEFUL_WRATH                  = 32, -- ± --
        BEADEAUX_SMOG                   = 33, -- + --
        THE_CURSE_COLLECTOR             = 34, -- + --
        FEAR_OF_FLYING                  = 35, -- + --
        THE_WISDOM_OF_ELDERS            = 36, -- ± --
        GROCERIES                       = 37, -- ± --
        THE_BARE_BONES                  = 38, -- ± --
        MINESWEEPER                     = 39, -- ± --
        THE_DARKSMITH                   = 40, -- ± --
        BUCKETS_OF_GOLD                 = 41, -- ± --
        THE_STARS_OF_IFRIT              = 42, -- ± --
        LOVE_AND_ICE                    = 43, -- ± --
        BRYGID_THE_STYLIST              = 44, -- ± --
        THE_GUSTABERG_TOUR              = 45,
        BITE_THE_DUST                   = 46, -- ± --
        BLADE_OF_DEATH                  = 47, -- + --
        SILENCE_OF_THE_RAMS             = 48, -- ± --
        ALTANA_S_SORROW                 = 49, -- + --
        A_LADY_S_HEART                  = 50, -- ± --
        GHOSTS_OF_THE_PAST              = 51, -- ± --
        THE_FIRST_MEETING               = 52, -- ± --
        TRUE_STRENGTH                   = 53, -- ± --
        THE_DOORMAN                     = 54, -- ± --
        THE_TALEKEEPER_S_TRUTH          = 55, -- ± --
        THE_TALEKEEPER_S_GIFT           = 56, -- ± --
        DARK_LEGACY                     = 57, -- ± --
        DARK_PUPPET                     = 58, -- ± --
        BLADE_OF_EVIL                   = 59, -- ± --
        AYAME_AND_KAEDE                 = 60, -- ± --
        TRIAL_BY_EARTH                  = 61, -- ± --
        A_TEST_OF_TRUE_LOVE             = 62, -- ± --
        LOVERS_IN_THE_DUSK              = 63, -- ± --
        WISH_UPON_A_STAR                = 64,
        ECO_WARRIOR_BAS                 = 65,
        THE_WEIGHT_OF_YOUR_LIMITS       = 66,
        SHOOT_FIRST_ASK_QUESTIONS_LATER = 67,
        INHERITANCE                     = 68,
        THE_WALLS_OF_YOUR_MIND          = 69,
        ESCORT_FOR_HIRE_BASTOK          = 70,
        A_DISCERNING_EYE_BASTOK         = 71,
        TRIAL_SIZE_TRIAL_BY_EARTH       = 72, -- + --
        FADED_PROMISES                  = 73,
        BRYGID_THE_STYLIST_RETURNS      = 74, -- ± --
        OUT_OF_THE_DEPTHS               = 75,
        ALL_BY_MYSELF                   = 76,
        A_QUESTION_OF_FAITH             = 77,
        RETURN_OF_THE_DEPTHS            = 78,
        TEAK_ME_TO_THE_STARS            = 79,
        HYPER_ACTIVE                    = 80,
        THE_NAMING_GAME                 = 81,
        CHIPS                           = 82,
        BAIT_AND_SWITCH                 = 83,
        LURE_OF_THE_WILDCAT_BASTOK      = 84,
        ACHIEVING_TRUE_POWER            = 85,
        TOO_MANY_CHEFS                  = 86,
        A_PROPER_BURIAL                 = 87,
        FULLY_MENTAL_ALCHEMIST          = 88,
        SYNERGUSTIC_PURSUITS            = 89,
        THE_WONDROUS_WHATCHAMACALLIT    = 90,
    },

    -----------------------------------
    --  Windurst
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.WINDURST]] =
    {
        HAT_IN_HAND                     = 0,  -- + --
        A_FEATHER_IN_ONE_S_CAP          = 1,  -- + --
        A_CRISIS_IN_THE_MAKING          = 2,  -- + --
        MAKING_AMENDS                   = 3,  -- + --
        MAKING_THE_GRADE                = 4,  -- + --
        IN_A_PICKLE                     = 5,  -- + --
        WONDERING_MINSTREL              = 6,  -- + --
        A_POSE_BY_ANY_OTHER_NAME        = 7,  -- + --
        MAKING_AMENS                    = 8,  -- + --
        THE_MOONLIT_PATH                = 9,  -- + --
        STAR_STRUCK                     = 10, -- ± --
        BLAST_FROM_THE_PAST             = 11, -- + --
        A_SMUDGE_ON_ONE_S_RECORD        = 12, -- ± --
        CHASING_TALES                   = 13, -- + --
        FOOD_FOR_THOUGHT                = 14, -- + --
        OVERNIGHT_DELIVERY              = 15, -- + --
        WATER_WAY_TO_GO                 = 16, -- + --
        BLUE_RIBBON_BLUES               = 17, -- + --
        THE_ALL_NEW_C_3000              = 18, -- + --
        THE_POSTMAN_ALWAYS_KO_S_TWICE   = 19, -- + --
        EARLY_BIRD_CATCHES_THE_BOOKWORM = 20, -- + --
        CATCH_IT_IF_YOU_CAN             = 21, -- + --
        ALL_AT_SEA                      = 23,
        THE_ALL_NEW_C_2000              = 24, -- ± --
        MIHGO_S_AMIGO                   = 25, -- + --
        ROCK_RACKETEER                  = 26, -- + --
        CHOCOBILIOUS                    = 27, -- + --
        TEACHER_S_PET                   = 28, -- + --
        REAP_WHAT_YOU_SOW               = 29, -- + --
        GLYPH_HANGER                    = 30, -- + --
        THE_FANGED_ONE                  = 31, -- + --
        CURSES_FOILED_AGAIN_1           = 32, -- + --
        CURSES_FOILED_AGAIN_2           = 33, -- + --
        MANDRAGORA_MAD                  = 34, -- + --
        TO_BEE_OR_NOT_TO_BEE            = 35, -- + --
        TRUTH_JUSTICE_AND_THE_ONION_WAY = 36, -- + --
        MAKING_HEADLINES                = 37, -- + --
        SCOOPED                         = 38,
        CREEPY_CRAWLIES                 = 39, -- + --
        KNOW_ONE_S_ONIONS               = 40, -- + --
        INSPECTOR_S_GADGET              = 41, -- + --
        ONION_RINGS                     = 42, -- + --
        A_GREETING_CARDIAN              = 43, -- + --
        LEGENDARY_PLAN_B                = 44, -- + --
        IN_A_STEW                       = 45, -- + --
        LET_SLEEPING_DOGS_LIE           = 46,
        CAN_CARDIANS_CRY                = 47, -- + --
        WONDER_WANDS                    = 48, -- + --
        HEAVEN_CENT                     = 49,
        SAY_IT_WITH_FLOWERS             = 50, -- + --
        HOIST_THE_JELLY_ROGER           = 51, -- + --
        SOMETHING_FISHY                 = 52, -- + --
        TO_CATCH_A_FALLIHG_STAR         = 53, -- + --
        PAYING_LIP_SERVICE              = 60, -- + --
        THE_AMAZIN_SCORPIO              = 61, -- + --
        TWINSTONE_BONDING               = 62, -- + --
        CURSES_FOILED_A_GOLEM           = 63, -- + --
        ACTING_IN_GOOD_FAITH            = 64, -- ± --
        FLOWER_CHILD                    = 65, -- ± --
        THE_THREE_MAGI                  = 66, -- ± --
        RECOLLECTIONS                   = 67, -- ± --
        THE_ROOT_OF_THE_PROBLEM         = 68,
        THE_TENSHODO_SHOWDOWN           = 69, -- + --
        AS_THICK_AS_THIEVES             = 70, -- + --
        HITTING_THE_MARQUISATE          = 71, -- + --
        SIN_HUNTING                     = 72, -- + --
        FIRE_AND_BRIMSTONE              = 73, -- + --
        UNBRIDLED_PASSION               = 74, -- + --
        I_CAN_HEAR_A_RAINBOW            = 75, -- + --
        CRYING_OVER_ONIONS              = 76, -- + --
        WILD_CARD                       = 77, -- + --
        THE_PROMISE                     = 78, -- + --
        NOTHING_MATTERS                 = 79,
        TORAIMARAI_TURMOIL              = 80, -- + --
        THE_PUPPET_MASTER               = 81, -- + --
        CLASS_REUNION                   = 82, -- + --
        CARBUNCLE_DEBACLE               = 83, -- + --
        ECO_WARRIOR_WIN                 = 84, -- + --
        FROM_SAPLINGS_GROW              = 85,
        ORASTERY_WOES                   = 86,
        BLOOD_AND_GLORY                 = 87,
        ESCORT_FOR_HIRE_WINDURST        = 88,
        A_DISCERNING_EYE_WINDURST       = 89,
        TUNING_IN                       = 90,
        TUNING_OUT                      = 91,
        ONE_GOOD_DEED                   = 92,
        WAKING_DREAMS                   = 93, -- + --
        LURE_OF_THE_WILDCAT_WINDURST    = 94,
        BABBAN_NY_MHEILLEA              = 95,
    },

    -----------------------------------
    --  Jeuno
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.JEUNO]] =
    {
        CREST_OF_DAVOI                  = 0,  -- + --
        SAVE_MY_SISTER                  = 1,  -- + --
        A_CLOCK_MOST_DELICATE           = 2,  -- + --
        SAVE_THE_CLOCK_TOWER            = 3,  -- + --
        CHOCOBO_S_WOUNDS                = 4,  -- + --
        SAVE_MY_SON                     = 5,  -- + --
        A_CANDLELIGHT_VIGIL             = 6,  -- + --
        THE_WONDER_MAGIC_SET            = 7,  -- + --
        THE_KIND_CARDIAN                = 8,  -- + --
        YOUR_CRYSTAL_BALL               = 9,  -- + --
        COLLECT_TARUT_CARDS             = 10, -- + --
        THE_OLD_MONUMENT                = 11, -- + --
        A_MINSTREL_IN_DESPAIR           = 12, -- + --
        RUBBISH_DAY                     = 13, -- + --
        NEVER_TO_RETURN                 = 14, -- + --
        COMMUNITY_SERVICE               = 15, -- + --
        COOK_S_PRIDE                    = 16, -- + --
        TENSHODO_MEMBERSHIP             = 17, -- + --
        THE_LOST_CARDIAN                = 18, -- + --
        PATH_OF_THE_BEASTMASTER         = 19, -- + --
        PATH_OF_THE_BARD                = 20, -- + --
        THE_CLOCKMASTER                 = 21, -- + --
        CANDLE_MAKING                   = 22, -- + --
        CHILD_S_PLAY                    = 23, -- + --
        NORTHWARD                       = 24, -- + --
        THE_ANTIQUE_COLLECTOR           = 25, -- + --
        DEAL_WITH_TENSHODO              = 26, -- + --
        THE_GOBBIEBAG_PART_I            = 27, -- + --
        THE_GOBBIEBAG_PART_II           = 28, -- + --
        THE_GOBBIEBAG_PART_III          = 29, -- + --
        THE_GOBBIEBAG_PART_IV           = 30, -- + --
        MYSTERIES_OF_BEADEAUX_I         = 31, -- + --
        MYSTERIES_OF_BEADEAUX_II        = 32, -- + --
        MYSTERY_OF_FIRE                 = 33,
        MYSTERY_OF_WATER                = 34,
        MYSTERY_OF_EARTH                = 35,
        MYSTERY_OF_WIND                 = 36,
        MYSTERY_OF_ICE                  = 37,
        MYSTERY_OF_LIGHTNING            = 38,
        MYSTERY_OF_LIGHT                = 39,
        MYSTERY_OF_DARKNESS             = 40,
        FISTFUL_OF_FURY                 = 41, -- + --
        THE_GOBLIN_TAILOR               = 42, -- + --
        PRETTY_LITTLE_THINGS            = 43, -- ± --
        BORGHERTZ_S_WARRING_HANDS       = 44, -- + --
        BORGHERTZ_S_STRIKING_HANDS      = 45, -- + --
        BORGHERTZ_S_HEALING_HANDS       = 46, -- + --
        BORGHERTZ_S_SORCEROUS_HANDS     = 47, -- + --
        BORGHERTZ_S_VERMILLION_HANDS    = 48, -- + --
        BORGHERTZ_S_SNEAKY_HANDS        = 49, -- + --
        BORGHERTZ_S_STALWART_HANDS      = 50, -- + --
        BORGHERTZ_S_SHADOWY_HANDS       = 51, -- + --
        BORGHERTZ_S_WILD_HANDS          = 52, -- + --
        BORGHERTZ_S_HARMONIOUS_HANDS    = 53, -- + --
        BORGHERTZ_S_CHASING_HANDS       = 54, -- + --
        BORGHERTZ_S_LOYAL_HANDS         = 55, -- + --
        BORGHERTZ_S_LURKING_HANDS       = 56, -- + --
        BORGHERTZ_S_DRAGON_HANDS        = 57, -- + --
        BORGHERTZ_S_CALLING_HANDS       = 58, -- + --
        AXE_THE_COMPETITION             = 59,
        WINGS_OF_GOLD                   = 60, -- ± --
        SCATTERED_INTO_SHADOW           = 61, -- ± --
        A_NEW_DAWN                      = 62,
        PAINFUL_MEMORY                  = 63, -- + --
        THE_REQUIEM                     = 64, -- + --
        THE_CIRCLE_OF_TIME              = 65, -- + --
        SEARCHING_FOR_THE_RIGHT_WORDS   = 66,
        BEAT_AROUND_THE_BUSHIN          = 67, -- + --
        DUCAL_HOSPITALITY               = 68,
        IN_THE_MOOD_FOR_LOVE            = 69,
        EMPTY_MEMORIES                  = 70,
        HOOK_LINE_AND_SINKER            = 71,
        A_CHOCOBO_S_TALE                = 72,
        A_REPUTATION_IN_RUINS           = 73,
        THE_GOBBIEBAG_PART_V            = 74, -- + --
        THE_GOBBIEBAG_PART_VI           = 75, -- + --
        BEYOND_THE_SUN                  = 76,
        UNLISTED_QUALITIES              = 77,
        GIRL_IN_THE_LOOKING_GLASS       = 78,
        MIRROR_MIRROR                   = 79, -- + --
        PAST_REFLECTIONS                = 80,
        BLIGHTED_GLOOM                  = 81,
        BLESSED_RADIANCE                = 82,
        MIRROR_IMAGES                   = 83,
        CHAMELEON_CAPERS                = 84,
        REGAINING_TRUST                 = 85,
        STORMS_OF_FATE                  = 86,
        MIXED_SIGNALS                   = 87,
        SHADOWS_OF_THE_DEPARTED         = 88,
        APOCALYPSE_NIGH                 = 89,
        LURE_OF_THE_WILDCAT_JEUNO       = 90, -- ± --
        THE_ROAD_TO_AHT_URHGAN          = 91, -- + --
        CHOCOBO_ON_THE_LOOSE            = 92,
        THE_GOBBIEBAG_PART_VII          = 93, -- + --
        THE_GOBBIEBAG_PART_VIII         = 94, -- + --
        LAKESIDE_MINUET                 = 95,
        THE_UNFINISHED_WALTZ            = 96, -- ± --
        THE_ROAD_TO_DIVADOM             = 97,
        COMEBACK_QUEEN                  = 98,
        A_FURIOUS_FINALE                = 99,
        THE_MIRACULOUS_DALE             = 100,
        CLASH_OF_THE_COMRADES           = 101,
        UNLOCKING_A_MYTH_WARRIOR        = 102,
        UNLOCKING_A_MYTH_MONK           = 103,
        UNLOCKING_A_MYTH_WHITE_MAGE     = 104,
        UNLOCKING_A_MYTH_BLACK_MAGE     = 105,
        UNLOCKING_A_MYTH_RED_MAGE       = 106,
        UNLOCKING_A_MYTH_THIEF          = 107,
        UNLOCKING_A_MYTH_PALADIN        = 108,
        UNLOCKING_A_MYTH_DARK_KNIGHT    = 109,
        UNLOCKING_A_MYTH_BEASTMASTER    = 110,
        UNLOCKING_A_MYTH_BARD           = 111,
        UNLOCKING_A_MYTH_RANGER         = 112,
        UNLOCKING_A_MYTH_SAMURAI        = 113,
        UNLOCKING_A_MYTH_NINJA          = 114,
        UNLOCKING_A_MYTH_DRAGOON        = 115,
        UNLOCKING_A_MYTH_SUMMONER       = 116,
        UNLOCKING_A_MYTH_BLUE_MAGE      = 117,
        UNLOCKING_A_MYTH_CORSAIR        = 118,
        UNLOCKING_A_MYTH_PUPPETMASTER   = 119,
        UNLOCKING_A_MYTH_DANCER         = 120,
        UNLOCKING_A_MYTH_SCHOLAR        = 121,
        THE_GOBBIEBAG_PART_IX           = 123, -- + --
        THE_GOBBIEBAG_PART_X            = 124, -- + --
        IN_DEFIANT_CHALLENGE            = 128, -- + --
        ATOP_THE_HIGHEST_MOUNTAINS      = 129, -- + --
        WHENCE_BLOWS_THE_WIND           = 130, -- + --
        RIDING_ON_THE_CLOUDS            = 131, -- + --
        SHATTERING_STARS                = 132, -- + --
        NEW_WORLDS_AWAIT                = 133,
        EXPANDING_HORIZONS              = 134,
        BEYOND_THE_STARS                = 135,
        DORMANT_POWERS_DISLODGED        = 136,
        BEYOND_INFINITY                 = 137,
        A_TRIAL_IN_TANDEM               = 160,
        A_TRIAL_IN_TANDEM_REDUX         = 161,
        YET_ANOTHER_TRIAL_IN_TANDEM     = 162,
        A_QUATERNARY_TRIAL_IN_TANDEM    = 163,
        A_TRIAL_IN_TANDEM_REVISITED     = 164,
        ALL_IN_THE_CARDS                = 166,
        MARTIAL_MASTERY                 = 167,
        VW_OP_115_VALKURM_DUSTER        = 168,
        VW_OP_118_BUBURIMU_SQUALL       = 169,
        PRELUDE_TO_PUISSANCE            = 170,
    },

    -----------------------------------
    --  Other Areas
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.OTHER_AREAS]] =
    {
        RYCHARDE_THE_CHEF               = 0,  -- + --
        WAY_OF_THE_COOK                 = 1,  -- + --
        UNENDING_CHASE                  = 2,  -- + --
        HIS_NAME_IS_VALGEIR             = 3,  -- + --
        EXPERTISE                       = 4,  -- + --
        THE_CLUE                        = 5,  -- + --
        THE_BASICS                      = 6,  -- + --
        ORLANDO_S_ANTIQUES              = 7,  -- + --
        THE_SAND_CHARM                  = 8,  -- + --
        A_POTTER_S_PREFERENCE           = 9,  -- + --
        THE_OLD_LADY                    = 10, -- + --
        FISHERMAN_S_HEART               = 11,
        DONATE_TO_RECYCLING             = 16, -- + --
        UNDER_THE_SEA                   = 17, -- + --
        ONLY_THE_BEST                   = 18, -- + --
        AN_EXPLORER_S_FOOTSTEPS         = 19, -- + --
        CARGO                           = 20, -- + --
        THE_GIFT                        = 21, -- + --
        THE_REAL_GIFT                   = 22, -- + --
        THE_RESCUE                      = 23, -- + --
        ELDER_MEMORIES                  = 24, -- + --
        TEST_MY_METTLE                  = 25,
        INSIDE_THE_BELLY                = 26, -- ± --
        TRIAL_BY_LIGHTNING              = 27, -- ± --
        TRIAL_SIZE_TRIAL_BY_LIGHTNING   = 28, -- + --
        IT_S_RAINING_MANNEQUINS         = 29,
        RECYCLING_RODS                  = 30,
        PICTURE_PERFECT                 = 31,
        WAKING_THE_BEAST                = 32,
        SURVIVAL_OF_THE_WISEST          = 33,
        A_HARD_DAY_S_KNIGHT             = 64,
        X_MARKS_THE_SPOT                = 65,
        A_BITTER_PAST                   = 66,
        THE_CALL_OF_THE_SEA             = 67,
        PARADISE_SALVATION_AND_MAPS     = 68,
        GO_GO_GOBMUFFIN                 = 69,
        THE_BIG_ONE                     = 70,
        FLY_HIGH                        = 71, -- ± --
        UNFORGIVEN                      = 72,
        SECRETS_OF_OVENS_LOST           = 73,
        PETALS_FOR_PARELBRIAUX          = 74,
        ELDERLY_PURSUITS                = 75,
        IN_THE_NAME_OF_SCIENCE          = 76, -- ± --
        BEHIND_THE_SMILE                = 77,
        KNOCKING_ON_FORBIDDEN_DOORS     = 78,
        CONFESSIONS_OF_A_BELLMAKER      = 79,
        IN_SEARCH_OF_THE_TRUTH          = 80,
        UNINVITED_GUESTS                = 81,
        TANGO_WITH_A_TRACKER            = 82,
        REQUIEM_OF_SIN                  = 83,
        VW_OP_026_TAVNAZIAN_TERRORS     = 84,
        VW_OP_004_BIBIKI_BOMBARDMENT    = 85,
        BOMBS_AWAY                      = 96,
        MITHRAN_DELICACIES              = 97,
        GIVE_A_MOOGLE_A_BREAK           = 100,
        THE_MOOGLE_PICNIC               = 101,
        MOOGLE_IN_THE_WILD              = 102,
        MISSIONARY_MOBLIN               = 103,
        FOR_THE_BIRDS                   = 104,
        BETTER_THE_DEMON_YOU_KNOW       = 105,
        AN_UNDERSTANDING_OVERLORD       = 106,
        AN_AFFABLE_ADAMANTKING          = 107,
        A_MORAL_MANIFEST                = 108,
        A_GENEROUS_GENERAL              = 109,
        RECORDS_OF_EMINENCE             = 110,
        UNITY_CONCORD                   = 111,
    },

    -----------------------------------
    --  Outlands
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.OUTLANDS]] =
    {
        -- Kazham (1-15)
        THE_FIREBLOOM_TREE              = 1,
        GREETINGS_TO_THE_GUARDIAN       = 2,  -- + --
        A_QUESTION_OF_TASTE             = 3,
        EVERYONES_GRUDGING              = 4,
        YOU_CALL_THAT_A_KNIFE           = 6,
        MISSIONARY_MAN                  = 7,  -- ± --
        GULLIBLES_TRAVELS               = 8,  -- + --
        EVEN_MORE_GULLIBLES_TRAVELS     = 9,  -- + --
        PERSONAL_HYGIENE                = 10, -- + --
        THE_OPO_OPO_AND_I               = 11, -- + --
        TRIAL_BY_FIRE                   = 12, -- ± --
        CLOAK_AND_DAGGER                = 13,
        A_DISCERNING_EYE_KAZHAM         = 14,
        TRIAL_SIZE_TRIAL_BY_FIRE        = 15, -- + --

        -- Voidwatch (100-105)
        VOIDWATCH_OPS_BORDER_CROSSING   = 100,
        VW_OP_054_ELSHIMO_LIST          = 101,
        VW_OP_101_DETOUR_TO_ZEPWELL     = 102,
        VW_OP_115_LI_TELOR_VARIANT      = 103,
        SKYWARD_HO_VOIDWATCHER          = 104,

        -- Norg (128-149)
        THE_SAHAGINS_KEY                = 128, -- ± --
        FORGE_YOUR_DESTINY              = 129, -- ± --
        BLACK_MARKET                    = 130,
        MAMA_MIA                        = 131,
        STOP_YOUR_WHINING               = 132, -- + --
        TRIAL_BY_WATER                  = 133, -- + --
        EVERYONES_GRUDGE                = 134,
        SECRET_OF_THE_DAMP_SCROLL       = 135, -- ± --
        THE_SAHAGINS_STASH              = 136, -- + --
        ITS_NOT_YOUR_VAULT              = 137, -- + --
        LIKE_A_SHINING_SUBLIGAR         = 138, -- + --
        LIKE_A_SHINING_LEGGINGS         = 139, -- + --
        THE_SACRED_KATANA               = 140, -- ± --
        YOMI_OKURI                      = 141, -- ± --
        A_THIEF_IN_NORG                 = 142, -- ± --
        TWENTY_IN_PIRATE_YEARS          = 143, -- ± --
        I_LL_TAKE_THE_BIG_BOX           = 144, -- ± --
        TRUE_WILL                       = 145, -- ± --
        THE_POTENTIAL_WITHIN            = 146,
        BUGI_SODEN                      = 147,
        TRIAL_SIZE_TRIAL_BY_WATER       = 148, -- + --
        AN_UNDYING_PLEDGE               = 149,

        -- Misc (160-165)
        WRATH_OF_THE_OPO_OPOS           = 160,
        WANDERING_SOULS                 = 161,
        SOUL_SEARCHING                  = 162,
        DIVINE_MIGHT                    = 163, -- ± --
        DIVINE_MIGHT_REPEAT             = 164, -- ± --
        OPEN_SESAME                     = 165,

        -- Rabao (192-201)
        DONT_FORGET_THE_ANTIDOTE        = 192, -- ± --
        THE_MISSING_PIECE               = 193, -- ± --
        TRIAL_BY_WIND                   = 194, -- ± --
        THE_KUFTAL_TOUR                 = 195,
        THE_IMMORTAL_LU_SHANG           = 196, -- ± --
        TRIAL_SIZE_TRIAL_BY_WIND        = 197, -- ± --
        CHASING_DREAMS                  = 199,            -- CoP Quest
        THE_SEARCH_FOR_GOLDMANE         = 200,            -- CoP Quest
        INDOMITABLE_SPIRIT              = 201, -- ± --
    },

    -----------------------------------
    --  Aht Urhgan
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.AHT_URHGAN]] =
    {
        KEEPING_NOTES                   = 0,
        ARTS_AND_CRAFTS                 = 1,
        OLDUUM                          = 2, -- + --
        GOT_IT_ALL                      = 3, -- + --
        GET_THE_PICTURE                 = 4,
        AN_EMPTY_VESSEL                 = 5, -- + --
        LUCK_OF_THE_DRAW                = 6, -- ± --
        NO_STRINGS_ATTACHED             = 7, -- + --
        FINDING_FAULTS                  = 8,
        GIVE_PEACE_A_CHANCE             = 9,
        THE_ART_OF_WAR                  = 10,
        na                              = 11,
        A_TASTE_OF_HONEY                = 12,
        SUCH_SWEET_SORROW               = 13,
        FEAR_OF_THE_DARK_II             = 14, -- + --
        COOK_A_ROON                     = 15,
        THE_DIE_IS_CAST                 = 16,
        TWO_HORN_THE_SAVAGE             = 17,
        TOTOROONS_TREASURE_HUNT         = 18,
        WHAT_FRIENDS_ARE_FOR            = 19,
        ROCK_BOTTOM                     = 20,
        BEGINNINGS                      = 21,
        OMENS                           = 22,
        TRANSFORMATIONS                 = 23,
        EQUIPPED_FOR_ALL_OCCASIONS      = 24, -- + --
        NAVIGATING_THE_UNFRIENDLY_SEAS  = 25, -- + --
        AGAINST_ALL_ODDS                = 26,
        THE_WAYWARD_AUTOMATION          = 27,
        OPERATION_TEATIME               = 28,
        PUPPETMASTER_BLUES              = 29,
        MOMENT_OF_TRUTH                 = 30,
        THREE_MEN_AND_A_CLOSET          = 31, -- + --
        FIVE_SECONDS_OF_FAME            = 32,
        DELIVERING_THE_GOODS            = 61, -- + --
        VANISHING_ACT                   = 62, -- + --
        STRIKING_A_BALANCE              = 63,
        NOT_MEANT_TO_BE                 = 64, -- + --
        LED_ASTRAY                      = 65,
        RAT_RACE                        = 66, -- + --
        THE_PRINCE_AND_THE_HOPPER       = 67,
        VW_OP_050_AHT_URGAN_ASSAULT     = 68,
        VW_OP_068_SUBTERRAINEAN_SKIRMISH= 69,
        AN_IMPERIAL_HEIST               = 70,
        DUTIES_TASKS_AND_DEEDS          = 71,
        FORGING_A_NEW_MYTH              = 72,
        COMING_FULL_CIRCLE              = 73,
        WAKING_THE_COLLOSSUS            = 74,
        DIVINE_INTERFERANCE             = 75,
        THE_RIDER_COMETH                = 76,
        UNWAVERING_RESOLVE              = 77,
        A_STYGIAN_PACT                  = 78,
    },

    -----------------------------------
    --  Crystal War
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.CRYSTAL_WAR]] =
    {
        LOST_IN_TRANSLOCATION            = 0,
        MESSAGE_ON_THE_WINDS             = 1,
        THE_WEEKLY_ADVENTURER            = 2,
        HEALING_HERBS                    = 3,
        REDEEMING_ROCKS                  = 4,
        THE_DAWN_OF_DELECTABILITY        = 5,
        A_LITTLE_KNOWLEDGE               = 6, -- + --
        THE_FIGHTING_FOURTH              = 7,
        SNAKE_ON_THE_PLAINS              = 8, -- + --
        STEAMED_RAMS                     = 9, -- + --
        SEEING_SPOTS                     = 10, -- + --
        THE_FLIPSIDE_OF_THINGS           = 11,
        BETTER_PART_OF_VALOR             = 12,
        FIRES_OF_DISCONTENT              = 13,
        HAMMERING_HEARTS                 = 14,
        GIFTS_OF_THE_GRIFFON             = 15,
        CLAWS_OF_THE_GRIFFON             = 16,
        THE_TIGRESS_STIRS                = 17, -- + --
        THE_TIGRESS_STRIKES              = 18,
        LIGHT_IN_THE_DARKNESS            = 19,
        BURDEN_OF_SUSPICION              = 20,
        EVIL_AT_THE_INLET                = 21,
        THE_FUMBLING_FRIAR               = 22,
        REQUIEM_FOR_THE_DEPARTED         = 23,
        BOY_AND_THE_BEAST                = 24,
        WRATH_OF_THE_GRIFFON             = 25,
        THE_LOST_BOOK                    = 26,
        KNOT_QUITE_THERE                 = 27,
        A_MANIFEST_PROBLEM               = 28,
        BEANS_AHOY                       = 29, -- + --
        BEAST_FROM_THE_EAST              = 30,
        THE_SWARM                        = 31,
        ON_SABBATICAL                    = 32,
        DOWNWARD_HELIX                   = 33,
        SEEING_BLOOD_RED                 = 34,
        STORM_ON_THE_HORIZON             = 35,
        FIRE_IN_THE_HOLE                 = 36,
        PERILS_OF_THE_GRIFFON            = 37,
        IN_A_HAZE_OF_GLORY               = 38,
        WHEN_ONE_MAN_IS_NOT_ENOUGH       = 39,
        A_FEAST_FOR_GNATS                = 40,
        SAY_IT_WITH_A_HANDBAG            = 41,
        QUELLING_THE_STORM               = 42,
        HONOR_UNDER_FIRE                 = 43,
        THE_PRICE_OF_VALOR               = 44,
        BONDS_THAT_NEVER_DIE             = 45,
        THE_LONG_MARCH_NORTH             = 46,
        THE_FORBIDDEN_PATH               = 47,
        A_JEWELERS_LAMENT                = 48,
        BENEATH_THE_MASK                 = 49,
        WHAT_PRICE_LOYALTY               = 50,
        SONGBIRDS_IN_A_SNOWSTORM         = 51,
        BLOOD_OF_HEROES                  = 52,
        SINS_OF_THE_MOTHERS              = 53,
        HOWL_FROM_THE_HEAVENS            = 54,
        SUCCOR_TO_THE_SIDHE              = 55,
        THE_YOUNG_AND_THE_THREADLESS     = 56,
        SON_AND_FATHER                   = 57,
        THE_TRUTH_LIES_HID               = 58,
        BONDS_OF_MYTHRIL                 = 59,
        CHASING_SHADOWS                  = 60,
        FACE_OF_THE_FUTURE               = 61,
        MANIFEST_DESTINY                 = 62,
        AT_JOURNEYS_END                  = 63,
        HER_MEMORIES_HOMECOMING_QUEEN    = 64,
        HER_MEMORIES_OLD_BEAN            = 65,
        HER_MEMORIES_THE_FAUX_PAS        = 66,
        HER_MEMORIES_THE_GRAVE_RESOLVE   = 67,
        HER_MEMORIES_OPERATION_CUPID     = 68,
        HER_MEMORIES_CARNELIAN_FOOTFALLS = 69,
        HER_MEMORIES_AZURE_FOOTFALLS     = 70,
        HER_MEMORIES_VERDURE_FOOTFALLS   = 71,
        HER_MEMORIES_OF_MALIGN_MALADIES  = 72,
        GUARDIAN_OF_THE_VOID             = 80,
        DRAFTED_BY_THE_DUCHY             = 81,
        BATTLE_ON_A_NEW_FRONT            = 82,
        VOIDWALKER_OP_126                = 83,
        A_CAIT_CALLS                     = 84,
        THE_TRUTH_IS_OUT_THERE           = 85,
        REDRAFTED_BY_THE_DUCHY           = 86,
        A_NEW_MENACE                     = 87,
        NO_REST_FOR_THE_WEARY            = 88,
        A_WORLD_IN_FLUX                  = 89,
        BETWEEN_A_ROCK_AND_RIFT          = 90,
        A_FAREWELL_TO_FELINES            = 91,
        THIRD_TOUR_OF_DUCHY              = 92,
        GLIMMER_OF_HOPE                  = 93,
        BRACE_FOR_THE_UNKNOWN            = 94,
        PROVENANCE                       = 95,
        CRYSTAL_GUARDIAN                 = 96,
        ENDINGS_AND_BEGINNINGS           = 97,
        AD_INFINITUM                     = 98,
    },

    -----------------------------------
    --  Abyssea
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.ABYSSEA]] =
    {
        -- For some reason these did not match dat file order,
        -- had to adjust IDs >120 after using @addquest
        CATERING_CAPERS                 = 0,
        GIFT_OF_LIGHT                   = 1,
        FEAR_OF_THE_DARK_III            = 2,
        AN_EYE_FOR_REVENGE              = 3,
        UNBREAK_HIS_HEART               = 4,
        EXPLOSIVE_ENDEAVORS             = 5,
        THE_ANGLING_ARMORER             = 6,
        WATER_OF_LIFE                   = 7,
        OUT_OF_TOUCH                    = 8,
        LOST_MEMORIES                   = 9,
        HOPE_BLOOMS_ON_THE_BATTLEFIELD  = 10,
        OF_MALNOURISHED_MARTELLOS       = 11,
        ROSE_ON_THE_HEATH               = 12,
        FULL_OF_HIMSELF_ALCHEMIST       = 13,
        THE_WALKING_WOUNDED             = 14,
        SHADY_BUSINESS_REDUX            = 15,
        ADDLED_MIND_UNDYING_DREAMS      = 16,
        THE_SOUL_OF_THE_MATTER          = 17,
        SECRET_AGENT_MAN                = 18,
        PLAYING_PAPARAZZI               = 19,
        HIS_BOX_HIS_BELOVED             = 20,
        WEAPONS_NOT_WORRIES             = 21,
        CLEANSING_THE_CANYON            = 22,
        SAVORY_SALVATION                = 23,
        BRINGING_DOWN_THE_MOUNTAIN      = 24,
        A_STERLING_SPECIMEN             = 25,
        FOR_LOVE_OF_A_DAUGHTER          = 26,
        SISTERS_IN_CRIME                = 27,
        WHEN_GOOD_CARDIANS_GO_BAD       = 28,
        TANGLING_WITH_TONGUE_TWISTERS   = 29,
        A_WARD_TO_END_ALL_WARDS         = 30,
        THE_BOXWATCHERS_BEHEST          = 31,
        HIS_BRIDGE_HIS_BELOVED          = 32,
        BAD_COMMUNICATION               = 33,
        FAMILY_TIES                     = 34,
        AQUA_PURA                       = 35,
        AQUA_PURAGA                     = 36,
        WHITHER_THE_WHISKER             = 37,
        SCATTERED_SHELLS_SCATTERED_MIND = 38,
        WAYWARD_WARES                   = 39,
        LOOKING_FOR_LOOKOUTS            = 40,
        FLOWN_THE_COOP                  = 41,
        THREADBARE_TRIBULATIONS         = 42,
        AN_OFFER_YOU_CANT_REFUSE        = 43,
        SOMETHING_IN_THE_AIR            = 44,
        AN_ACRIDIDAEN_ANODYNE           = 45,
        HAZY_PROSPECTS                  = 46,
        FOR_WANT_OF_A_POT               = 47,
        MISSING_IN_ACTION               = 48,
        I_DREAM_OF_FLOWERS              = 49,
        DESTINY_ODYSSEY                 = 50,
        UNIDENTIFIED_RESEARCH_OBJECT    = 51,
        COOKBOOK_OF_HOPE_RESTORING      = 52,
        SMOKE_OVER_THE_COAST            = 53,
        SOIL_AND_GREEN                  = 54,
        DROPPING_THE_BOMB               = 55,
        WANTED_MEDICAL_SUPPLIES         = 56,
        VOICES_FROM_BEYOND              = 57,
        BENEVOLENCE_LOST                = 58,
        BRUGAIRES_AMBITION              = 59,
        CHOCOBO_PANIC                   = 60,
        THE_EGG_ENTHUSIAST              = 61,
        GETTING_LUCKY                   = 62,
        HER_FATHERS_LEGACY              = 63,
        THE_MYSTERIOUS_HEAD_PATROL      = 64,
        MASTER_MISSING_MASTER_MISSED    = 65,
        THE_PERILS_OF_KORORO            = 66,
        LET_THERE_BE_LIGHT              = 67,
        LOOK_OUT_BELOW                  = 68,
        HOME_HOME_ON_THE_RANGE          = 69,
        IMPERIAL_ESPIONAGE              = 70,
        IMPERIAL_ESPIONAGE_II           = 71,
        BOREAL_BLOSSOMS                 = 72,
        BROTHERS_IN_ARMS                = 73,
        SCOUTS_ASTRAY                   = 74,
        FROZEN_FLAME_REDUX              = 75,
        SLIP_SLIDIN_AWAY                = 76,
        CLASSROOMS_WITHOUT_BORDERS      = 77,
        THE_SECRET_INGREDIENT           = 78,
        HELP_NOT_WANTED                 = 79,
        THE_TITUS_TOUCH                 = 80,
        SLACKING_SUBORDINATES           = 81,
        MOTHERLY_LOVE                   = 82,
        LOOK_TO_THE_SKY                 = 83,
        THE_UNMARKED_TOMB               = 84,
        PROOF_OF_THE_LION               = 85,
        BRYGID_THE_STYLIST_STRIKES_BACK = 86,
        DOMINION_OP_01_ALTEPA           = 87,
        DOMINION_OP_02_ALTEPA           = 88,
        DOMINION_OP_03_ALTEPA           = 89,
        DOMINION_OP_04_ALTEPA           = 90,
        DOMINION_OP_05_ALTEPA           = 91,
        DOMINION_OP_06_ALTEPA           = 92,
        DOMINION_OP_07_ALTEPA           = 93,
        DOMINION_OP_08_ALTEPA           = 94,
        DOMINION_OP_09_ALTEPA           = 95,
        DOMINION_OP_10_ALTEPA           = 96,
        DOMINION_OP_11_ALTEPA           = 97,
        DOMINION_OP_12_ALTEPA           = 98,
        DOMINION_OP_13_ALTEPA           = 99,
        DOMINION_OP_14_ALTEPA           = 100,
        DOMINION_OP_01_ULEGUERAND       = 101,
        DOMINION_OP_02_ULEGUERAND       = 102,
        DOMINION_OP_03_ULEGUERAND       = 103,
        DOMINION_OP_04_ULEGUERAND       = 104,
        DOMINION_OP_05_ULEGUERAND       = 105,
        DOMINION_OP_06_ULEGUERAND       = 106,
        DOMINION_OP_07_ULEGUERAND       = 107,
        DOMINION_OP_08_ULEGUERAND       = 108,
        DOMINION_OP_09_ULEGUERAND       = 109,
        DOMINION_OP_10_ULEGUERAND       = 110,
        DOMINION_OP_11_ULEGUERAND       = 111,
        DOMINION_OP_12_ULEGUERAND       = 112,
        DOMINION_OP_13_ULEGUERAND       = 113,
        DOMINION_OP_14_ULEGUERAND       = 114,
        DOMINION_OP_01_GRAUBERG         = 115,
        DOMINION_OP_02_GRAUBERG         = 116,
        DOMINION_OP_03_GRAUBERG         = 117,
        DOMINION_OP_04_GRAUBERG         = 118,
        DOMINION_OP_05_GRAUBERG         = 119,
        DOMINION_OP_06_GRAUBERG         = 120,
        DOMINION_OP_07_GRAUBERG         = 121,
        DOMINION_OP_08_GRAUBERG         = 122,
        DOMINION_OP_09_GRAUBERG         = 123,
        WARD_WARDEN_I_ATTOHWA           = 124,
        WARD_WARDEN_I_MISAREAUX         = 125,
        WARD_WARDEN_I_VUNKERL           = 126,
        WARD_WARDEN_II_ATTOHWA          = 127,
        WARD_WARDEN_II_MISAREAUX        = 128,
        WARD_WARDEN_II_VUNKERL          = 129,
        DESERT_RAIN_I_ATTOHWA           = 130,
        DESERT_RAIN_I_MISAREAUX         = 131,
        DESERT_RAIN_I_VUNKERL           = 132,
        DESERT_RAIN_II_ATTOHWA          = 133,
        DESERT_RAIN_II_MISAREAUX        = 134,
        DESERT_RAIN_II_VUNKERL          = 135,
        CRIMSON_CARPET_I_ATTOHWA        = 136,
        CRIMSON_CARPET_I_MISAREAUX      = 137,
        CRIMSON_CARPET_I_VUNKERL        = 138,
        CRIMSON_CARPET_II_ATTOHWA       = 139,
        CRIMSON_CARPET_II_MISAREAUX     = 140,
        CRIMSON_CARPET_II_VUNKERL       = 141,
        REFUEL_AND_REPLENISH_LA_THEINE  = 142,
        REFUEL_AND_REPLENISH_KONSCHTAT  = 143,
        REFUEL_AND_REPLENISH_TAHRONGI   = 144,
        REFUEL_AND_REPLENISH_ATTOHWA    = 145,
        REFUEL_AND_REPLENISH_MISAREAUX  = 146,
        REFUEL_AND_REPLENISH_VUNKERL    = 147,
        REFUEL_AND_REPLENISH_ALTEPA     = 148,
        REFUEL_AND_REPLENISH_ULEGUERAND = 149,
        REFUEL_AND_REPLENISH_GRAUBERG   = 150,
        A_MIGHTIER_MARTELLO_LA_THEINE   = 151,
        A_MIGHTIER_MARTELLO_KONSCHTAT   = 152,
        A_MIGHTIER_MARTELLO_TAHRONGI    = 153,
        A_MIGHTIER_MARTELLO_ATTOHWA     = 154,
        A_MIGHTIER_MARTELLO_MISAREAUX   = 155,
        A_MIGHTIER_MARTELLO_VUNKERL     = 156,
        A_MIGHTIER_MARTELLO_ALTEPA      = 157,
        A_MIGHTIER_MARTELLO_ULEGUERAND  = 158,
        A_MIGHTIER_MARTELLO_GRAUBERG    = 159,
        A_JOURNEY_BEGINS                = 160, -- + --
        THE_TRUTH_BECKONS               = 161, -- + --
        DAWN_OF_DEATH                   = 162,
        A_GOLDSTRUCK_GIGAS              = 163,
        TO_PASTE_A_PEISTE               = 164,
        MEGADRILE_MENACE                = 165,
        THE_FORBIDDEN_FRONTIER          = 166,
        FIRST_CONTACT                   = 167,
        AN_OFFICER_AND_A_PIRATE         = 168,
        HEART_OF_MADNESS                = 169,
        TENUOUS_EXISTENCE               = 170,
        CHAMPIONS_OF_ABYSSEA            = 171,
        THE_BEAST_OF_BASTORE            = 172,
        A_DELECTABLE_DEMON              = 173,
        A_FLUTTERY_FIEND                = 174,
        SCARS_OF_ABYSSEA                = 175,
        A_BEAKED_BLUSTERER              = 176,
        A_MAN_EATING_MITE               = 177,
        AN_ULCEROUS_URAGNITE            = 178,
        HEROES_OF_ABYSSEA               = 179,
        A_SEA_DOGS_SUMMONS              = 180,
        DEATH_AND_REBIRTH               = 181,
        EMISSARIES_OF_GOD               = 182,
        BENEATH_A_BLOOD_RED_SKY         = 183,
        THE_WYRM_GOD                    = 184,
        MEANWHILE_BACK_ON_ABYSSEA       = 185,
        A_MOONLIGHT_REQUITE             = 186,
        DOMINION_OP_10_GRAUBERG         = 187,
        DOMINION_OP_11_GRAUBERG         = 188,
        DOMINION_OP_12_GRAUBERG         = 189,
        DOMINION_OP_13_GRAUBERG         = 190,
        DOMINION_OP_14_GRAUBERG         = 191,
    },

    -----------------------------------
    --  Adoulin
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.ADOULIN]] =
    {
        -- These also do not match the DAT file order, had
        -- discrepencies and swapped orders from the start.
        TWITHERYM_DUST                  = 0,
        TO_CATCH_A_PREDATOR             = 1,
        EMPTY_NEST                      = 2,
        DONT_CLAM_UP_ON_ME_NOW          = 5,
        HOP_TO_IT                       = 6,
        BOILING_OVER                    = 9,
        POISONING_THE_WELL              = 10,
        UNSULLIED_LANDS                 = 12,
        NO_RIME_LIKE_THE_PRESENT        = 16,
        A_GEOTHERMAL_EXPEDITION         = 18,
        ENDEAVORING_TO_AWAKEN           = 22,
        FORGING_NEW_BONDS               = 23,
        LEGACIES_LOST_AND_FOUND         = 24,
        DESTINYS_DEVICE                 = 25,
        GRANDDADDY_DEAREST              = 26,
        WAYWARD_WAYPOINTS               = 27,
        ONE_GOOD_TURN                   = 28,
        FAILURE_IS_NOT_AN_OPTION        = 29,
        ORDER_UP                        = 30,
        IT_NEVER_GOES_OUT_OF_STYLE      = 31,
        WATER_WATER_EVERYWHERE          = 32,
        DIRT_CHEAP                      = 33,
        FLOWER_POWER                    = 34,
        ELEMENTARY_MY_DEAR_SYLVIE       = 35,
        FOR_WHOM_THE_BELL_TOLLS         = 36,
        THE_BLOODLINE_OF_ZACARIAH       = 37,
        THE_COMMUNION                   = 38,
        FLAVORS_OF_OUR_LIVES            = 46,
        WESTERN_WAYPOINTS_HO            = 50,
        WESEASTERN_WAYPOINTS_HO         = 51,
        GRIND_TO_SAWDUST                = 53,
        BREAKING_THE_ICE                = 54,
        IM_ON_A_BOAT                    = 55,
        A_STONES_THROW_AWAY             = 56,
        HIDE_AND_GO_PEAK                = 57,
        THE_WHOLE_PLACE_IS_ABUZZ        = 58,
        OROBON_APPETIT                  = 59,
        TALK_ABOUT_WRINKLY_SKIN         = 60,
        NO_LOVE_LOST                    = 61,
        DID_YOU_FEEL_THAT               = 62,
        DONT_EVER_LEAF_ME               = 70,
        KEEP_YOUR_BLOOMERS_ON_ERISA     = 71,
        SCAREDYCATS                     = 72,
        RAPTOR_RAPTURE                  = 73,
        EXOTIC_DELICACIES               = 74, -- + --
        A_PIONEERS_BEST_IMAGINARY_FRIEND= 75, -- + --
        HUNGER_STRIKES                  = 76, -- + --
        THE_OLD_MAN_AND_THE_HARPOON     = 77, -- + --
        A_CERTAIN_SUBSTITUTE_PATROLMAN  = 78, -- + --
        IT_SETS_MY_HEART_AFLUTTER       = 79,
        TRANSPORTING                    = 82,
        THE_STARVING                    = 84, -- + --
        FERTILE_GROUND                  = 85,
        ALWAYS_MORE_QUOTH_THE_RAVENOUS  = 88, -- + --
        MEGALOMANIAC                    = 89,
        THE_LONGEST_WAY_ROUND           = 91,
        A_GOOD_PAIR_OF_CROCS            = 93,
        CAFETERIA                       = 94,
        A_SHOT_IN_THE_DARK              = 96,
        OPEN_THE_FLOODGATES             = 100,
        NO_LAUGHING_MATTER              = 102,
        ALL_THE_WAY_TO_THE_BANK         = 103,
        TO_LAUGH_IS_TO_LOVE             = 104,
        A_BARREL_OF_LAUGHS              = 105,
        VEGETABLE_VEGETABLE_REVOLUTION  = 108,
        VEGETABLE_VEGETABLE_EVOLUTION   = 109,
        VEGETABLE_VEGETABLE_CRISIS      = 110,
        VEGETABLE_VEGETABLE_FRUSTRATION = 111,
        A_THIRST_FOR_THE_AGES           = 114,
        A_THIRST_FOR_THE_EONS           = 115,
        A_THIRST_FOR_ETERNITY           = 116,
        A_THIRST_BEFORE_TIME            = 117,
        DANCES_WITH_LUOPANS             = 118,
        CHILDREN_OF_THE_RUNE            = 119,
        FLOWERS_FOR_SVENJA              = 120,
        THORN_IN_THE_SIDE               = 121,
        DO_NOT_GO_INTO_THE_LIGHT        = 122,
        VELKKOVERT_OPERATIONS           = 123,
        HYPOCRITICAL_OATH               = 124,
        THE_GOOD_THE_BAD_THE_CLEMENT    = 125,
        LERENES_LAMENT                  = 126,
        THE_SECRET_TO_SUCCESS           = 127,
        NO_MERCY_FOR_THE_WICKED         = 128,
        MISTRESS_OF_CEREMONIES          = 129,
        SAVED_BY_THE_BELL               = 131,
        QUIESCENCE                      = 132,
        SICK_AND_TIRED                  = 133,
        GEOMANCERRIFIC                  = 134,
        RUNE_FENCING_THE_NIGHT_AWAY     = 135,
        THE_WEATHERSPOON_INQUISITION    = 136,
        EYE_OF_THE_BEHOLDER             = 137,
        THE_CURIOUS_CASE_OF_MELVIEN     = 138,
        NOTSOCLEAN_BILL                 = 139,
        IN_THE_LAND_OF_THE_BLIND        = 140,
        THE_WEATHERSPOON_WAR            = 141,
        TREASURES_OF_THE_EARTH          = 142,
        EPIPHANY                        = 143,
    },

    -----------------------------------
    --  Coalition
    -----------------------------------
    [dsp.quest.area[dsp.quest.log.COALITION]] =
    {
        -- Also slightly incongruent with DAT file order
        PROCURE_CEIZAK_BATTLEGROUNDS    = 0,
        PROCURE_FORET_DE_HENNETIEL      = 1,
        PROCURE_MORIMAR_BASALT_FIELDS   = 2,
        PROCURE_YORCIA_WEALD            = 3,
        PROCURE_MARJAMI_RAVINE          = 4,
        PROCURE_KAMIHR_DRIFTS           = 5,
        PROCURE_CIRDAS_CAVERNS          = 6,
        PROCURE_OUTER_RAKAZNAR          = 7,
        CLEAR_CEIZAK_BATTLEGROUNDS      = 8,
        CLEAR_FORET_DE_HENNETIEL        = 9,
        CLEAR_MORIMAR_BASALT_FIELDS     = 10,
        CLEAR_YORCIA_WEALD              = 11,
        CLEAR_MARJAMI_RAVINE            = 12,
        CLEAR_KAMIHR_DRIFTS             = 13,
        CLEAR_CIRDAS_CAVERNS            = 14,
        CLEAR_OUTER_RAKAZNAR            = 15,
        PROVIDE_FORET_DE_HENNETIEL      = 16,
        PROVIDE_MORIMAR_BASALT_FIELDS   = 17,
        PROVIDE_YORCIA_WEALD            = 18,
        PROVIDE_MARJAMI_RAVINE          = 19,
        PROVIDE_KAMIHR_DRIFTS           = 20,
        DELIVER_FORET_DE_HENNETIEL      = 21,
        DELIVER_MORIMAR_BASALT_FIELDS   = 22,
        DELIVER_YORCIA_WEALD            = 23,
        DELIVER_MARJAMI_RAVINE          = 24,
        DELIVER_KAMIHR_DRIFTS           = 25,
        SUPPORT_CEIZAK_BATTLEGROUNDS    = 26,
        SUPPORT_FORET_DE_HENNETIEL      = 27,
        SUPPORT_MORIMAR_BASALT_FIELDS   = 28,
        SUPPORT_YORCIA_WEALD            = 29,
        SUPPORT_MARJAMI_RAVINE          = 30,
        SUPPORT_KAMIHR_DRIFTS           = 31,
        GATHER_RALA_WATERWAYS           = 32,
        GATHER_CEIZAK_BATTLEGROUNDS     = 33,
        GATHER_YAHSE_HUNTING_GROUNDS    = 34,
        GATHER_FORET_DE_HENNETIEL       = 35,
        GATHER_MORIMAR_BASALT_FIELDS    = 36,
        GATHER_YORCIA_WEALD             = 37,
        GATHER_MARJAMI_RAVINE           = 38,
        GATHER_KAMIHR_DRIFTS            = 39,
        GATHER_SIH_GATES                = 40,
        GATHER_MOH_GATES                = 41,
        GATHER_CIRDAS_CAVERNS           = 42,
        GATHER_DHO_GATES                = 43,
        GATHER_WOH_GATES                = 44,
        GATHER_OUTER_RAKAZNAR           = 45,
        GATHER_RAKAZNAR_INNER_COURT     = 46,
        -- GATHER                       = 47, -- Blank Gather: assignment
        SURVEY_CEIZAK_BATTLEGROUNDS     = 48,
        SURVEY_FORET_DE_HENNETIEL       = 49,
        SURVEY_MORIMAR_BASALT_FIELDS    = 50,
        SURVEY_YORCIA_WEALD             = 51,
        SURVEY_MARJAMI_RAVINE           = 52,
        SURVEY_KAMIHR_DRIFTS            = 53,
        SURVEY_SIH_GATES                = 54,
        SURVEY_CIRDAS_CAVERNS           = 55,
        SURVEY_DHO_GATES                = 56,
        ANALYZE_FORET_DE_HENNETIEL      = 57,
        ANALYZE_MORIMAR_BASALT_FIELDS   = 58,
        ANALYZE_YORCIA_WEALD            = 59,
        ANALYZE_MARJAMI_RAVINE          = 60,
        ANALYZE_KAMIHR_DRIFTS           = 61,
        ANALYZE_CIRDAS_CAVERNS          = 62,
        ANALYZE_OUTER_RAKAZNAR          = 63,
        PRESERVE_CEIZAK_BATTLEGROUNDS   = 64,
        PRESERVE_YAHSE_HUNTING_GROUNDS  = 65,
        PRESERVE_FORET_DE_HENNETIEL     = 66,
        PRESERVE_MORIMAR_BASALT_FIELDS  = 67,
        PRESERVE_YORCIA_WEALD           = 68,
        PRESERVE_MARJAMI_RAVINE         = 69,
        PRESERVE_KAMIHR_DRIFTS          = 70,
        PRESERVE_CIRDAS_CAVERNS         = 71,
        PRESERVE_OUTER_RAKAZNAR         = 72,
        PATROL_RALA_WATERWAYS           = 73,
        PATROL_SIH_GATES                = 74,
        PATROL_MOH_GATES                = 75,
        PATROL_CIRDAS_CAVERNS           = 76,
        PATROL_DHO_GATES                = 77,
        PATROL_WOH_GATES                = 78,
        PATROL_OUTER_RAKAZNAR           = 79,
        RECOVER_CEIZAK_BATTLEGROUNDS    = 80,
        RECOVER_FORET_DE_HENNETIEL      = 81,
        RECOVER_MORIMAR_BASALT_FIELDS   = 82,
        RECOVER_YORCIA_WEALD            = 83,
        RECOVER_MARJAMI_RAVINE          = 84,
        RECOVER_KAMIHR_DRIFTS           = 85,
        RESEARCH_RALA_WATERWAYS         = 86,
        RESEARCH_CEIZAK_BATTLEGROUNDS   = 87,
        RESEARCH_FORET_DE_HENNETIEL     = 88,
        RESEARCH_MORIMAR_BASALT_FIELDS  = 89,
        RESEARCH_YORCIA_WEALD           = 90,
        RESEARCH_MARJAMI_RAVINE         = 91,
        RESEARCH_KAMIHR_DRIFTS          = 92,
        BOOST_FORET_DE_HENNETIEL        = 93,
        BOOST_MARJAMI_RAVINE            = 94,
        BOOST_KAMIHR_DRIFTS             = 95,
    }
}

-----------------------------------
--  QUEST STRING KEYS
-----------------------------------

-- These are the string key counterparts for a quest, and can be used to find the string
-- key/path that DSP uses for a given quest when all you have is the quest's ID and its area.
-- Filepaths can be built using "(AREA_FOLDER)/".. dsp.quest.string.(AREA)[(QUEST_ID)],
-- Where (AREA) is dsp.quest.area[AREAS_LOG_ID] (a string), _not_ the default integer log ID
local function buildQuestStringTable(dspQuestIDtable)
    local questStringTable = {}
    for areaKey, areaQuestTable in pairs(dspQuestIDtable) do
        local areaQuestStringTable = {}
        for questStringKey, questID in pairs(areaQuestTable) do
            areaQuestStringTable[questID] = questStringKey
        end
        questStringTable[areaKey] = areaQuestStringTable
    end
    return questStringTable
end

dsp.quest.string = buildQuestStringTable(dsp.quest.id)

-----------------------------------
--  QUEST OBJECTS TABLE
-----------------------------------

-- Quest objects inside these tables will be loaded/reloaded as required by NPC scripts and GM commands
dsp.quest.object =
{
    [dsp.quest.area[dsp.quest.log.SANDORIA]] = {},
    [dsp.quest.area[dsp.quest.log.BASTOK]] = {},
    [dsp.quest.area[dsp.quest.log.WINDURST]] = {},
    [dsp.quest.area[dsp.quest.log.JEUNO]] = {},
    [dsp.quest.area[dsp.quest.log.OTHER_AREAS]] = {},
    [dsp.quest.area[dsp.quest.log.OUTLANDS]] = {},
    [dsp.quest.area[dsp.quest.log.AHT_URHGAN]] = {},
    [dsp.quest.area[dsp.quest.log.CRYSTAL_WAR]] = {},
    [dsp.quest.area[dsp.quest.log.ABYSSEA]] = {},
    [dsp.quest.area[dsp.quest.log.ADOULIN]] = {},
    [dsp.quest.area[dsp.quest.log.COALITION]] = {}
}

-----------------------------------
--  DSP QUEST SYSTEM CONSTANTS
-----------------------------------

dsp.quest.stage =
{
    STAGE0   =  0, STAGE1  =  1, STAGE2  =  2, STAGE3   =  3, STAGE4   =  4,
    STAGE5   =  5, STAGE6  =  6, STAGE7  =  7, STAGE8   =  8, STAGE9   =  9,
    STAGE10  = 10, STAGE11 = 11, STAGE12 = 12, STAGE13  = 13, STAGE14  = 14,
    COMPLETE = 255
}

dsp.quest.fame =
{
    SANDORIA          =  0, BASTOK           =  1, WINDURST           =  2,
    JEUNO             =  3, SELBINA          =  4, MHAURA             =  2,
    RABAO             =  4, KAZHAM           =  2, NORG               =  5,
    ABYSSEA_KONSCHTAT =  6, ABYSSEA_TAHRONGI =  7, ABYSSEA_LATHEINE   =  8,
    ABYSSEA_MISAREAUX =  9, ABYSSEA_VUNKERL  = 10, ABYSSEA_ATTOHWA    = 11,
    ABYSSEA_ALTEPA    = 12, ABYSSEA_GRAUBERG = 13, ABYSSEA_ULEGUERAND = 14,
    ADOULIN = 15
}

dsp.quest.status =
{
    AVAILABLE = 0,
    ACCEPTED  = 1,
    COMPLETED = 2,
}

dsp.quest.var =
{
    CHAR   = 1,
    ENTITY = 2,
    SERVER = 3,
}

dsp.quest.event =
{
    TRIGGER   = 1,
    TRADE     = 2,
    UPDATE    = 3,
    FINISH    = 4,
    MOB_DEATH = 5,
    ZONE_IN   = 6
}

dsp.quest.eventType =
{
    NEVER     = 0, -- Never displayed; can be used to disable quests (set this on starting event)
    DEFAULT   = 1, -- Becomes NPC's "default dialogue" if nothing else takes precendence
    CYCLE     = 2, -- Will be displayed repeatedly every N other qualifying same-level events the NPC has
    TOGGLE    = 3, -- Will display every-other time the NPC is triggered if nothing else takes precendence
    ZONE      = 4, -- Triggers only once until the player zones and speaks to NPC again
    ONCE      = 5, -- Only displays once - ever - regardless of zoning, uses charvar
    ALWAYS    = 6  -- Will always be the chosen event (barring a _higher_ priority event of equal type)
}

-----------------------------------
--  QUEST OBJECT
-----------------------------------

dsp.quest.newQuest = function()
    local this = {}

    ---------------------------------------------------------------
    -- Internal helper functions
    ---------------------------------------------------------------
    local function validateQuest(entity, quest, varname, val, get)
        local msg = ""
        local prefix = "[Quest Parameter Error] "

        if entity == nil then
            msg = prefix .. "entity cannot be nil"
        elseif quest == nil then
            msg = prefix .. "quest cannot be nil"
        elseif varname == nil or varname == '' then
            msg = prefix .. "varname cannot be nil or empty"
        end

        return msg
    end

    local function handleQuestVar(entity, quest, varname, val, get)
        local ret = {}
        local validateMsg = validateQuest(entity, quest, varname, val, get)
        if validateMsg ~= '' then
            ret.message = validateMsg
            return ret
        end

        local var, vartype, db_name
        if quest.vars.stage == varname then
            var = quest.vars.stage
            vartype = dsp.quest.var.CHAR
            db_name = quest.vars.stage
        else
            var = quest.vars.additional[varname]
            if var then
                vartype = var.type
                db_name = var.db_name
            end
        end

        if not var then
            ret.message = " unable to find "..varname.." for quest: "..quest.name.." (log: "..quest.log..")"
        else
            if vartype == dsp.quest.var.CHAR then
                if get then
                    ret.val = entity:getVar(db_name)
                else
                    entity:setVar(db_name, val)
                end
            elseif vartype == dsp.quest.var.LOCAL then
                if get then
                    ret.val = entity:getLocalVar(db_name)
                else
                    entity:setLocalVar(db_name, val)
                end
            elseif vartype == dsp.quest.var.SERVER then
                if get then
                    ret.val = GetServerVariable(db_name)
                else
                    SetServerVariable(db_name, val)
                end
            end
        end

        return ret
    end

    local function error(entity, message)
        if entity:isPC() then
            entity:PrintToPlayer(message)
        end
        print("[Quest Error]".. this.string_key .." "..entity:getName()..": "..message)
    end

    ---------------------------------------------------------------
    -- Public Methods
    ---------------------------------------------------------------

    -- Sets the player's specified var for the quest to the specified value
    ---------------------------------------------------------------
    this.setVar = function(entity, varname, val, msg)
        local message = msg or this.string_key.. ".setVar: "
        local ret = handleQuestVar(entity, this, varname, val, false)
        if ret.message then
            error(entity, message..ret.message)
        end
    end

    -- Returns the player's specified var for the quest
    ---------------------------------------------------------------
    this.getVar = function(entity, varname, msg)
        local message = msg or this.string_key.. ".getVar: "
        local ret = handleQuestVar(entity, this, varname, nil, true)
        if ret.message then
            error(entity, message..ret.message)
        else
            return ret.val
        end
    end

    -- Sets the player's quest progress to the specified stage
    ---------------------------------------------------------------
    this.setStage = function(entity, val)
        local message = this.string_key.. ".setStage -> "
        return this.setVar(entity, this.vars.stage, val, message)
    end

    -- Returns the player's current quest progress
    ---------------------------------------------------------------
    this.getStage = function(entity)
        local message = this.string_key.. ".getStage -> "
        local stage = this.getVar(entity, this.vars.stage, message)
        if stage > 0 then
            return stage
        elseif entity:getQuestStatus(this.log, this.quest_id) == dsp.quest.status.COMPLETED then
            return dsp.quest.stage.COMPLETE
        else
            return 0
        end
    end

    -- Advances the player's current quest stage by 1
    ---------------------------------------------------------------
    this.advanceStage = function(entity)
        local message = this.string_key.. ".advanceStage -> "
        local currentStage = this.getStage(entity)
        this.setVar(entity, this.vars.stage, currentStage + 1, message)
        return true
    end

    -- Returns true if the player meets all the listed quest requirements
    ---------------------------------------------------------------
    this.checkRequirements = function(player)
        local questStatusCheck = player:getQuestStatus(this.log, this.quest_id)

        if questStatusCheck == dsp.quest.status.AVAILABLE
        or (questStatusCheck == dsp.quest.status.COMPLETED and this.repeatable) then
            -- Check all required quests
            if this.requirements.quests then
                for i, requiredQuest in ipairs(this.requirements.quests) do
                    local requiredQuestStatus = player:getQuestStatus(requiredQuest.log, requiredQuest.quest_id)
                    if requiredQuest.stage then
                        local quest = dsp.quest.getQuest(requiredQuest.log, requiredQuest.quest_id)
                        if quest then
                            if quest.getStage(player) < requiredQuest.stage then
                                return false
                            end
                        else
                            return false
                        end
                    elseif requiredQuestStatus ~= dsp.quest.status.COMPLETED then
                        return false
                    end
                end
            end
            -- Check all required missions
            if this.requirements.missions then
                for i, requiredMission in ipairs(this.requirements.missions) do
                    if player:getCurrentMission(requiredMission.mission_log) < requiredMission.mission_id then
                    -- or (required_mission.stage and (dsp.quests.getStage(player, required_mission) < required_mission.stage)) then -- getStage requires a full quest table
                        return false
                    end
                end
            end
            -- Check if player possesses all required key items to start quest
            if this.requirements.key_items then
                for i, requiredKeyItem in ipairs(this.requirements.key_items) do
                    if not player:hasKeyItem(requiredKeyItem) then
                        return false
                    end
                end
            end
            -- Check fame requirement
            if this.requirements.fame then
                if player:getFameLevel(this.requirements.fame.area) < this.requirements.fame.level then
                    return false
                end
            end
            -- Make sure player is on the right job, if applicable
            if this.requirements.main_job and (player:getMainJob() ~= this.requirements.main_job) then
                return false
            end
            -- Finally, make sure the player is high enough level
            if this.requirements.level and (player:getMainLvl() < this.requirements.level) then
                return false 
            end

            -- We haven't failed any of the requirement checks, so we must meet the quest's requirements
            return true
        else
            return false
        end
    end

    -- Adds a quest to the player's log and sets their stage to 1
    ---------------------------------------------------------------
    this.begin = function(player)
        player:addQuest(this.log, this.quest_id)
        return this.advanceStage(player)
    end

    -- Handles checking a quest to see if control should be diverted
    -- from the calling NPC
    ---------------------------------------------------------------
    this.check = function(player, type, target, args)
        local playerCurrentStage = this.getStage(player)
        if this.stages[playerCurrentStage] then
            local stageZoneTable = this.stages[playerCurrentStage][player:getZoneID()]
            if stageZoneTable and stageZoneTable[type] and stageZoneTable[type][target] then
                return stageZoneTable[type][target](player, unpack(args))
            end
        end

        return false
    end

    -- Begins an event for the player, with built-in return
    ---------------------------------------------------------------
    this.startEvent = function(player, event, params, type)
        if not params then params = {} end
        if not type then type = dsp.quest.eventType.DEFAULT end
        return {['id'] = event, ['params'] = params, ['type'] = type}
    end

    -- Attempt to give item to the player.
    -- Takes an optional parameter to determine if the default
    -- item can't be obtained message from npcUtil.giveItem()
    -- should be silenced (in case quest has custom event)
    ---------------------------------------------------------------
    this.giveItem = function(player, item, silent_fail)
        if npcUtil.giveItem(player, item, silent_fail) then
            return true
        else
            return false
        end
    end

    -- Returns the item ID of the first item currently being held
    -- for the player by this quest
    -- Takes an optional stack parameter to assist in storing
    -- and returning multiple rewards for the few quests which
    -- need the capability.
    ---------------------------------------------------------------
    this.holdingItem = function(player, stack)
        if not stack then
            stack = 1
        end
        local item = player:getVar(this.var_prefix .. "[I][".. stack .."]")

        if item > 0 then
            return item
        else
            return false
        end
    end

    -- Holds an item for a player
    -- Optional stack parameter is for the very few quests that
    -- bestow multiple item rewards.
    ---------------------------------------------------------------
    this.holdItem = function(player, item, stack)
        if not stack then
            stack = 1
        end
        if this.holdingItem(player, stack) then
            return this.holdItem(player, item, stack + 1)
        else
            player:setVar(this.var_prefix .. "[I][".. stack .."]", item)
            return true
        end
    end

    -- Attempts to return an item, or items, to the player
    -- Optional silent_fail parameter determines if failure message
    -- should be displayed by npcUtil.giveItem()
    ---------------------------------------------------------------
    this.returnItem = function(player, silent_fail)
        -- There are a small handful of quests that reward multiple
        -- items as quest rewards, so we need to account for those.
        local stack = 1
        local items_held = 0
        local items = {}
        local item = this.holdingItem(player, stack)

        while item and item > 0 do
            items[stack] = item
            stack = stack + 1
            items_held = items_held + 1
            item = this.holdingItem(player, stack)
        end

        if items_held > 0 then
            if npcUtil.giveItem(player, items, silent_fail) then
                stack = 1
                while stack <= items_held do
                    player:setVar(this.var_prefix .. "[I][".. stack .."]", 0)
                    stack = stack + 1
                end
                return true
            else
                return false
            end
        else
            error(player, "quest.returnItem: " .. player:getName() .." does not have any items held for quest ".. this.name)
            return false
        end
    end

    -- Give KI to player, while going through this quest's wrapper
    ---------------------------------------------------------------
    this.giveKeyItem = function(player, key_item)
        return npcUtil.giveKeyItem(player, key_item)
    end

    -- Remove KI from player, while going through this quest's wrapper
    ---------------------------------------------------------------
    this.delKeyItem = function(player, key_item)
        for _, ki in pairs(this.temporary.key_items) do
            if ki == key_item then
                player:delKeyItem(key_item)
                return true
            end
        end
        error(player, "Key Item " .. key_item .." not listed as temporary in quest file! No action taken.")
        return false
    end

    -- Check to see if a trade contains the items and marks
    -- them as accepted in the container
    ---------------------------------------------------------------
    this.tradeHas = function(player, trade, items)
        -- We technically don't need a player for this function,
        -- but include it in the arguments for the sake of
        -- consistency with other quest functions.
        return npcUtil.tradeHas(trade, items)
    end

    -- Check to see if a trade contains ONLY items and marks
    -- them as accepted in the container
    ---------------------------------------------------------------
    this.tradeHasExactly = function(player, trade, items)
        return npcUtil.tradeHasExactly(trade, items)
    end

    -- Completes a given trade, taking the items marked as
    -- accepted by tradeHas and tradeHasExactly
    ---------------------------------------------------------------
    this.completeTrade = function(player, trade)
        player:tradeComplete()
        return true
    end

    -- Completes the quest in the player's log, gives out rewards, and cleans up leftover vars and key items
    ---------------------------------------------------------------
    this.complete = function(player, reward_set)
        local message = this.string_key.. ".complete: "

        local rewards_given = false
        if this.rewards then
            if reward_set == nil then
                if this.rewards.sets and this.rewards.sets[1] then
                    reward_set = this.rewards.sets[1]
                else
                    reward_set = this.rewards
                end
            end
            if reward_set then
                -- Attempt to reward items first
                if reward_set["items"] then
                    -- quest.giveItem will naturally hold items for the player if they're full
                    if type(reward_set["items"]) == "table" then
                        for _, item in ipairs(reward_set["items"]) do
                            this.giveItem(player, item)
                        end
                    else
                        this.giveItem(player, reward_set["items"])
                    end
                end

                rewards_given = npcUtil.completeQuest(player, this.log, this.quest_id, reward_set)
                if not rewards_given then
                    error(player, message.. "Unable to give quest rewards.")
                end
            else
                error(player, message.. "Rewards table defined, but unable to get rewards set")
            end
        else
            error(player, message.. "No quest rewards defined!")
        end

        if rewards_given then
            this.setVar(player, this.vars.stage, 0) -- Stage should ALWAYS be erased
            if this.vars.additional then
                for name, var in pairs(this.vars.additional) do
                    if not var.preserve then
                        this.setVar(player, name, 0, message)
                    end
                end
            end

            -- Make certain any forgotten temporary key items have been removed
            if this.temporary and this.temporary.key_items then
                for _, ki in pairs(this.temporary.key_items) do
                    player:delKeyItem(ki)
                end
            end

            -- Clear all char_vars from having seen dsp.quest.eventType.ONCE type events
            if this.temporary and this.temporary.seen_events then
                for _, seen_event in pairs(this.temporary.seen_events) do
                    player:setVar('[QE][Z'.. seen_event[1] ..']'.. seen_event[2], 0)
                end
            end
            return true
        end
    end

    return this
end

-----------------------------------
--  INVOLVED QUESTS OBJECT
-----------------------------------
dsp.quest.involvedQuests = function(involvedQuests)
    local this = {}
    this.involvedQuests = involvedQuests

    ---------------------------------------------------------------
    -- Internal helper functions
    ---------------------------------------------------------------

    -- Helper function returning if a player has seen an event of a given type
    local hasSeen = function(player, trackingTag, eventType)
        if (eventType >= dsp.quest.eventType.CYCLE) and (eventType <= dsp.quest.eventType.ZONE) then
            return player:getLocalVar(trackingTag) == 1
        elseif eventType == dsp.quest.eventType.ONCE then
            return player:getVar(trackingTag) == 1
        else
            return false
        end
    end

    -- Helper function to check all of our involvedQuests for a given quest event
    local check = function(player, checkType, target, args)
        local trackingName = function(player, event)
            return '[QE][Z'.. player:getZoneID() ..']'.. event
        end

        local result = false
        local highestEvent = {}
        highestEvent.type = dsp.quest.eventType.NEVER

        local hasCycleEvents = false
        local isLastCycleEvent = false
        local unseenCycleEvent = false
        local wasLastCycleEvent = player:getLocalVar('[QE][WLC]'.. target) == 1

        for _, quest in ipairs(this.involvedQuests) do
            result = quest.check(player, checkType, target, args)
            if result then
                if checkType == 'onTrigger' then -- We found an onTrigger the player currently qualifies for
                    if type(result) == 'bool' then
                        -- But this quest already initiated an event/message directly and returned true.
                        -- We don't want to mess up whatever special scenario it's doing
                        return true
                    else -- The result should be a table describing the qualifying event
                        local trackingTag = trackingName(player, result.id)
                        local sawEvent = hasSeen(player, trackingTag, result.type)


                        if result.type == dsp.quest.eventType.CYCLE then
                            -- If player just viewed the final cycle event, we need to mark all as unseen
                            if wasLastCycleEvent then
                                player:setLocalVar(trackingTag, 0)
                                sawEvent = false
                            end

                            -- We need to assume that the first cycle we find is the last, or else we'd never
                            -- pick it multiple times when there's only one cycle event the player qualifies for
                            if not hasCycleEvents then
                                hasCycleEvents = true   -- So on the first cycle event only...
                                isLastCycleEvent = true -- Presume it's the last in the list to view
                                player:setLocalVar('[QE][WLC]'.. target, 0) -- (Let's reset our local var here, though.)
                                unseenCycleEvent = not sawEvent -- But if this is an unseen cycle event...
                            elseif isLastCycleEvent and not sawEvent then -- ..or if a later cycle event is unseen
                                if not unseenCycleEvent then
                                    unseenCycleEvent = true -- Note there are unseen cycle events...
                                else
                                    isLastCycleEvent = false -- ..and then on the SECOND unseen event, mark our assumption false
                                end
                            end
                        elseif result.type == dsp.quest.eventType.TOGGLE then
                            if sawEvent then
                                -- Go ahead an mark the toggle event as unseen (but we won't
                                -- select it until next time because sawEvent is still false)
                                player:setLocalVar(trackingTag, 0)
                            end
                        end

                        if result.type > highestEvent.type then
                            if result.type == dsp.quest.eventType.ONCE and not sawEvent then
                                highestEvent = result
                            elseif ((result.type >= dsp.quest.eventType.CYCLE) and (result.type <= dsp.quest.eventType.ZONE)) and not sawEvent then
                                highestEvent = result
                            elseif (result.type == dsp.quest.eventType.ALWAYS) or (result.type == dsp.quest.eventType.DEFAULT) then
                                highestEvent = result
                            end
                        end
                    end
                else
                    break -- trades, finishes, and updates should only have one valid match
                end
            end
        end

        if unseenCycleEvent and isLastCycleEvent then
            player:setLocalVar('[QE][WLC]'.. target, 1)
        end

        if highestEvent.type > dsp.quest.eventType.NEVER then  -- We figured out an onTrigger to play
            player:startEvent(highestEvent.id, unpack(highestEvent.params)) -- Invoke our thunked highest event
            -- We're only going to mark what kind of event we have, so we can check later during an onEventFinish
            -- We don't want to mark the event as "seen" _now_ because the event might get interupted before finishing
            player:setLocalVar('[QE][ST]', highestEvent.type) -- Seen Type, so we know what _kind_ of var to set during onFinish
            player:setLocalVar('[QE][SI]', highestEvent.id) -- And the Seen ID our "seen" check should be firing on
            return true -- Return that we have chosen (and played) an event
        elseif checkType ~= 'onTrigger' then -- ('Result' can be dirty, and we should have already played any applicable onTrigger)
            if checkType == 'onEventFinish' then
                if player:getLocalVar('[QE][SI]') == target then -- "target" is our CS ID during onEventFinish checks
                    local trackingType = player:getLocalVar('[QE][ST]')
                    if trackingType == dsp.quest.eventType.ONCE then
                        player:setVar(trackingName(player, target), 1)
                    elseif (trackingType >= dsp.quest.eventType.CYCLE) and (trackingType <= dsp.quest.eventType.ZONE) then
                        player:setLocalVar(trackingName(player, target), 1)
                    end
                    player:setLocalVar('[QE][SI]', 0)
                    player:setLocalVar('[QE][ST]', 0)
                end
            end
            return result -- Return result of our (already-executed) highest priority onTrade/onUpdate/onFinish
        end
    end



    ---------------------------------------------------------------
    -- Public Methods
    ---------------------------------------------------------------

    -- Checks the onTrade events for this list of involved quests
    ---------------------------------------------------------------
    this.onTrade = function(player, npc, trade)
        return check(player, 'onTrade', npc:getName(), {npc, trade})
    end

    -- Checks the onTrigger events for this list of involved quests
    ---------------------------------------------------------------
    this.onTrigger = function(player, npc)
        return check(player, 'onTrigger', npc:getName(), {npc})
    end

    -- Checks the onEventFinish events for this list of involved quests
    ---------------------------------------------------------------
    this.onEventFinish = function(player, csid, option)
        return check(player, 'onEventFinish', csid, {option})
    end

    -- Checks the onMobDeath events for this list of involved quests
    ---------------------------------------------------------------
    this.onMobDeath = function(mob, entity, isKiller, isWeaponSkillKill)
        if entity:isPC() then
            return check(entity, 'onMobDeath', mob:getName(), {mob, isKiller, isWeaponSkillKill})
        else
            return false
        end
    end

    return this
end

-----------------------------------
--  OTHER QUEST FUNCTIONS
-----------------------------------

dsp.quest.getQuest = function(area_log_id, quest_id)
    local area = dsp.quest.area[area_log_id]
    if area then
        local quest_string = dsp.quest.string[area][quest_id]
        if quest_string then -- Verify the quest ID is one we expect
            if dsp.quest.object[area][quest_id] then
                -- If we already have the quest loaded, just return it!
                return dsp.quest.object[area][quest_id]
            else
                local quest_filename = 'scripts/quests/'
                local area_dirs =
                {
                    [dsp.quest.log.SANDORIA]    = 'sandoria',
                    [dsp.quest.log.BASTOK]      = 'bastok',
                    [dsp.quest.log.WINDURST]    = 'windurst',
                    [dsp.quest.log.JEUNO]       = 'jeuno',
                    [dsp.quest.log.OTHER_AREAS] = 'other_areas',
                    [dsp.quest.log.OUTLANDS]    = 'outlands',
                    [dsp.quest.log.AHT_URHGAN]  = 'aht_urhgan',
                    [dsp.quest.log.CRYSTAL_WAR] = 'crystal_war',
                    [dsp.quest.log.ABYSSEA]     = 'abyssea',
                    [dsp.quest.log.ADOULIN]     = 'adoulin',
                    [dsp.quest.log.COALITION]   = 'coalition'
                }
                quest_filename = quest_filename .. area_dirs[area_log_id] .. '/' .. string.lower(quest_string)
                local quest = require(quest_filename)
                if (quest) then
                    dsp.quest.object[area][quest_id] = quest -- Stash our quest away for others to use!
                    return quest
                else
                    print("dsp.quest.getQuest: Unable to include designated file '".. quest_filename .."'")
                end
            end
        else
            print("dsp.quest.getQuest: Unknown quest ID: ".. quest_id.. " for area: ".. area)
        end
    else
        print("dsp.quest.getQuest: Unknown area log ID: ".. area_log_id)
    end
end
