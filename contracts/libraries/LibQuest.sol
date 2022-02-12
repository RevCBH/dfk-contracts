//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IQuestCore} from "../interfaces/IQuestCore.sol";
import {QuestData} from "../quest/IQuestTypes.sol";

library LibQuest {
    address constant MAINNET_CORE = 0x5100Bd31b822371108A0f63DCFb6594b9919Eaf4;
    address constant MAINNET_FISHING =
        0xE259e8386d38467f0E7fFEdB69c3c9C935dfaeFc;
    address constant MAINNET_FORAGING =
        0x3132c76acF2217646fB8391918D28a16bD8A8Ef4;
    address constant MAINNET_GARDENING =
        0xe4154B6E5D240507F9699C730a496790A722DF19;
    address constant MAINNET_GOLD_MINING =
        0x569E6a4c2e3aF31B337Be00657B4C040C828Dd73;
    address constant MAINNET_JEWEL_MINING =
        0x6FF019415Ee105aCF2Ac52483A33F5B43eaDB8d0;
    address constant MAINNET_WISHING_WELL =
        0xF5Ff69f4aC4A851730668b93Fc408bC1C49Ef4CE;
}
