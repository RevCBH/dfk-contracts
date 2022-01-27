//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {IQuestCore} from "./quest/IQuestCore.sol";

library LibQuests {
    IQuestCore constant QUEST_CORE =
        IQuestCore(0x5100Bd31b822371108A0f63DCFb6594b9919Eaf4);

    address constant JEWEL_MINING_QUEST =
        0x6FF019415Ee105aCF2Ac52483A33F5B43eaDB8d0;
    address constant GOLD_MINING_QUEST =
        0x569E6a4c2e3aF31B337Be00657B4C040C828Dd73;
}
