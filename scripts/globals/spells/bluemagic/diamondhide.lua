-----------------------------------------
-- Spell: Diamondhide
-- Gives party members within area of effect the effect of "Stoneskin"
-- Spell cost: 99 MP
-- Monster Type: Beastmen
-- Spell Type: Magical (Earth)
-- Blue Magic Points: 3
-- Stat Bonus: VIT+1
-- Level: 67
-- Casting Time: 7 seconds
-- Recast Time: 1 minute 30 seconds
-- 5 minutes
-- 
-- Combos: None
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)

    local blueskill = caster:getSkillLevel(BLUE_SKILL);
    local power = ((blueskill)/3) *2;

    if(target:addStatusEffect(EFFECT_STONESKIN,power,0,300)) then
        spell:setMsg(230);
    else
        spell:setMsg(75);
    end

    return EFFECT_STONESKIN;
end;
