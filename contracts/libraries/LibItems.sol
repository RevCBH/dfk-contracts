// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC1155} from "../interfaces/index.sol";

library LibItems {
    // Fish
    address public constant BLOATER =
        0x78aED65A2Cc40C7D8B0dF1554Da60b38AD351432;
    address public constant IRONSCALE =
        0xe4Cfee5bF05CeF3418DA74CFB89727D8E4fEE9FA;
    address public constant LANTERNEYE =
        0x8Bf4A0888451C6b5412bCaD3D9dA3DCf5c6CA7BE;
    address public constant REDGILL =
        0xc5891912718ccFFcC9732D1942cCD98d5934C2e1;
    address public constant SAILFISH =
        0xb80A07e13240C31ec6dc0B5D72Af79d461dA3A70;
    address public constant SHIMMERSKIN =
        0x372CaF681353758f985597A35266f7b330a2A44D;
    address public constant SILVERFIN =
        0x2493cfDAcc0f9c07240B5B1C4BE08c62b8eEff69;

    // Plants
    address public constant AMBERTAFFY =
        0x6e1bC01Cc52D165B357c42042cF608159A2B81c1;
    address public constant MILKWEED =
        0xc0214b37FCD01511E6283Af5423CF24C96BB9808;
    address public constant DARKWEED =
        0x68EA4640C5ce6cC0c9A1F17B7b882cB1cBEACcd7;
    address public constant GOLDVEIN =
        0x600541aD6Ce0a8b5dae68f086D46361534D20E80;
    address public constant SPIDERFRUIT =
        0x19B9F05cdE7A61ab7aae5b0ed91aA62FF51CF881;
    address public constant RAGWEED =
        0x043F9bd9Bb17dFc90dE3D416422695Dd8fa44486;
    address public constant REDLEAF =
        0x094243DfABfBB3E6F71814618ace53f07362a84c;
    address public constant ROCKROOT =
        0x6B10Ad6E3b99090De20bF9f95F960addC35eF3E2;
    address public constant BLUESTEM =
        0xAC5c49Ff7E813dE1947DC74bbb1720c353079ac9;
    address public constant SWIFTTHISTLE =
        0xCdfFe898E687E941b124dfB7d24983266492eF1d;

    // Story pages
    IERC1155 public constant DFKETRNLSTY =
        IERC1155(0x909EF175d58d0e17d3Ceb005EeCF24C1E5C6F390);
}
