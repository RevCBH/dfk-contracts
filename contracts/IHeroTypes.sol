//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

struct Hero {
    uint256 id;
    SummoningInfo summoningInfo;
    HeroInfo info;
    HeroState state;
    HeroStats stats;
    HeroStatGrowth primaryStatGrowth;
    HeroStatGrowth secondaryStatGrowth;
    HeroProfessions professions;
}

struct SummoningInfo {
    uint256 summonedTime;
    uint256 nextSummonTime;
    uint256 summonerId;
    uint256 assistantId;
    uint32 summons;
    uint32 maxSummons;
}

struct HeroInfo {
    uint256 statGenes;
    uint256 visualGenes;
    // enum Rarity
    uint8 rarity;
    bool shiny;
    uint16 generation;
    uint32 firstName;
    uint32 lastName;
    uint8 shinyStyle;
    uint8 class;
    uint8 subClass;
}

struct HeroState {
    uint256 staminaFullAt;
    uint256 hpFullAt;
    uint256 mpFullAt;
    uint16 level;
    uint64 xp;
    address currentQuest;
    uint8 sp;
    // enum HeroStatus
    uint8 status;
}

struct HeroStats {
    uint16 strength;
    uint16 intelligence;
    uint16 wisdom;
    uint16 luck;
    uint16 agility;
    uint16 vitality;
    uint16 endurance;
    uint16 dexterity;
    uint16 hp;
    uint16 mp;
    uint16 stamina;
}

struct HeroStatGrowth {
    uint16 strength;
    uint16 intelligence;
    uint16 wisdom;
    uint16 luck;
    uint16 agility;
    uint16 vitality;
    uint16 endurance;
    uint16 dexterity;
    uint16 hpSm;
    uint16 hpRg;
    uint16 hpLg;
    uint16 mpSm;
    uint16 mpRg;
    uint16 mpLg;
}

struct HeroProfessions {
    uint16 mining;
    uint16 gardening;
    uint16 foraging;
    uint16 fishing;
}
