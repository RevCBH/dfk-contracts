//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

struct QuestV1 {
  uint256 id;
  address /*IQuest*/ quest;
  uint256[] heros;
  address player;
  uint256 startTime;
  uint256 startBlock;
  uint256 completeAtTime;
  uint8 attempts;
  uint8 status;
}

struct QuestV2 {
  uint256 id;
  address questAddress;
  uint8 level;
  uint256[] heroes;
  address player;
  uint256 startBlock;
  uint256 startAtTime;
  uint256 completeAtTime;
  uint8 attempts;
  uint8 /*QuestStatus*/ status;
}

struct RewardItemV1 {
  address /*IInventoryItem*/ item;
  int64 expBonus;
  int64 skillUpChance;
  int64 smallSkillUpMod;
  int64 mediumSkillUpMod;
  int64 largeSkillUpMod;
  int64 baseChance;
  int64 skillMod;
  int64 statMod;
  int64 luckMod;
}

struct QuestData {
    uint256 _uint1; // poolId
    uint256 _uint2; // ??? always 0
    uint256 _uint3; // ??? always 0
    uint256 _uint4; // ??? always 0
    int256 _int1; // ??? always 0
    int256 _int2; // ??? always 0
    string _string1; // ??? always ""
    string _string2; // ??? always ""
    address _address1; // ??? always 0x
    address _address2; // ??? always 0x
    address _address3; // ??? always 0x
    address _address4; // ??? always 0x
}

struct QuestTypeV1 {
  uint256 id;
  address /*IQuest*/ quest;
  uint8 status;
  uint8 minHeros;
  uint8 maxHeros;
  uint256 level;
  uint8 maxAttempts;
}