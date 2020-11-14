-----------------------------------
-- Area: Manaclipper
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.MANACLIPPER] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6382, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6388, -- Obtained: <item>.
        GIL_OBTAINED            = 6389, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6391, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS     = 6999, -- You have carried over <number>  points.
        LOGIN_CAMPAIGN_UNDERWAY = 7000, -- The <month> ≺year≻ Login Campaign is currently underway!
        LOGIN_NUMBER            = 7001, -- In celebration of your most recent login no. <number>...
        CONQUEST_BASE           = 7049, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET  = 7219, -- You can't fish here.
        KHOTS_CHALAHKO_OFFSET   = 7392, -- Ahhh... Isn't it grrreat out here on the open sea!?
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[tpz.zone.MANACLIPPER]
