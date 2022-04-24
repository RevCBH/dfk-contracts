//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IQuestCoreV1} from "../interfaces/IQuestCoreV1.sol";
import {IQuestCoreV2} from "../interfaces/IQuestCoreV2.sol";
import {QuestData} from "../quest/IQuestTypes.sol";

library LibQuest {
    IQuestCoreV1 public constant MAINNET_CORE_V1 =
        IQuestCoreV1(0x5100Bd31b822371108A0f63DCFb6594b9919Eaf4);
    address public constant MAINNET_FISHING_V1 =
        0xE259e8386d38467f0E7fFEdB69c3c9C935dfaeFc;
    address public constant MAINNET_FORAGING_V1 =
        0x3132c76acF2217646fB8391918D28a16bD8A8Ef4;
    address public constant MAINNET_GARDENING_V1 =
        0xe4154B6E5D240507F9699C730a496790A722DF19;
    address public constant MAINNET_GOLD_MINING_V1 =
        0x569E6a4c2e3aF31B337Be00657B4C040C828Dd73;
    address public constant MAINNET_JEWEL_MINING_V1 =
        0x6FF019415Ee105aCF2Ac52483A33F5B43eaDB8d0;
    // address public constant MAINNET_WISHING_WELL =
    //     0xF5Ff69f4aC4A851730668b93Fc408bC1C49Ef4CE;

    IQuestCoreV2 public constant MAINNET_CORE_V2 =
        IQuestCoreV2(0xAa9a289ce0565E4D6548e63a441e7C084E6B52F6);
    address public constant MAINNET_FISHING_V2 =
        0xADFFD2A255B3792873a986895c6312e8FbacFc8B;
    address public constant MAINNET_FORAGING_V2 =
        0xB465F4590095daD50FEe6Ee0B7c6700AC2b04dF8;

    address public constant MAINNET_SKILL_VIT_V2 =
        0x2174bBeFbEFBD766326a7C7538f93a78Db3eD449;
    address public constant MAINNET_SKILL_END_V2 =
        0xCb594A24D802cdF65000A84dC0059dde11c9d15f;
    address public constant MAINNET_SKILL_AGI_V2 =
        0xFA20B218927B0f57a08196743488c7C790a5625B;
    address public constant MAINNET_SKILL_WIS_V2 =
        0x347097454fA1931A4e80dcDebb31F29FC355CbCE;
    address public constant MAINNET_SKILL_LCK_V2 =
        0x13E74E4E64805E7fdA381C9BEF1e77cd16086E56;
    address public constant MAINNET_SKILL_STR_V2 =
        0xf60AF3a32Bb94e395E17C70aB695d968F37Bd2e4;
    address public constant MAINNET_SKILL_DEX_V2 =
        0xe03fd4e2F6421b1251297240cE5248508C9104eD;
    address public constant MAINNET_SKILL_INT_V2 =
        0x6176EedE1AE9127D59266f197Ad598653E4F8c92;
}
