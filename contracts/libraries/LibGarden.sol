// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IGardenFactory} from "../interfaces/IGardenFactory.sol";
import {IGardenRouter} from "../interfaces/IGardenRouter.sol";

library LibGarden {
    IGardenFactory constant MAINNET_FACTORY =
        IGardenFactory(0x9014B937069918bd319f80e8B3BB4A2cf6FAA5F7);
    IGardenRouter constant MAINNET_ROUTER =
        IGardenRouter(0x24ad62502d1C652Cc7684081169D04896aC20f30);

    enum Pool {
        JewelOne, // 0
        Pool1, // 1
        Pool2, // 2
        Jewel1ETH, //3
        Pool4, // 4
        Pool5, // 5
        Jewel1USDC, // 6
        Jewel1BTC, // 7
        JewelUST, // 8
        Pool9, // 9
        Pool10, // a
        Pool11, // b
        Pool12, // c
        Pool13, // d
        Pool14, // e
        JewelAvax // f
    }
}
