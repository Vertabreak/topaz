---------------------------------------------------
-- Rampant Gnaw
-- Deals damage to a single target. Additional effect: Paralysis
-- Range: 10' cone
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2.4;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);

    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    local typeEffect = EFFECT_PARALYSIS;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 20, 0, 120);

    target:delHP(dmg);
    return dmg;
end;
