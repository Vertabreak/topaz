-----------------------------------
-- Area: Rolanberry_Fields_[S]
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.ROLANBERRY_FIELDS_S] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6388, -- Obtained: <item>.
        GIL_OBTAINED            = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6391, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS     = 6999, -- You have carried over <number> points.
        LOGIN_CAMPAIGN_UNDERWAY = 7000, -- The <month> ≺year≻ Login Campaign is currently underway!
        LOGIN_NUMBER            = 7001, -- In celebration of your most recent login no. <number>...
        FISHING_MESSAGE_OFFSET  = 7069, -- You can't fish here.
        COMMON_SENSE_SURVIVAL   = 9249, -- It appears that you have arrived at a new survival guide provided by the Servicemen's Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        DELICIEUSE_DELPHINE_PH =
        {
            [17150279] = 17150280, -- -484.535 -23.756 -467.462
        },
    },
    npc =
    {
    },
}

return zones[tpz.zone.ROLANBERRY_FIELDS_S]
