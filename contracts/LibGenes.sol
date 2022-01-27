//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import {IGeneScience} from "./IGeneScience.sol";

library LibGenes {
    IGeneScience constant GENE_SCIENCE =
        IGeneScience(0x6b696520997d3eaEE602D348F380cA1A0F1252d5);

    enum Profession {
        MINING, // 0
        _RESERVED_1, // 1
        GARDENING, // 2
        _RESERVED_3, // 3
        FISHING, // 4
        _RESERVED_5, // 5
        FORAGING // 6
    }

    enum GeneIndex {
        CLASS,
        SUBCLASS,
        PROFESSION,
        PASSIVE1,
        PASSIVE2,
        ACTIVE1,
        ACTIVE2,
        STATBOOST1,
        STATBOOST2,
        STATSUNKNOWN1,
        ELEMENT,
        STATSUNKNOWN2
    }

    function isMiner(uint256 statGenes) internal pure returns (bool) {
        uint8[] memory genes = GENE_SCIENCE.decode(statGenes);
        return genes[2] == 0;
    }
}
