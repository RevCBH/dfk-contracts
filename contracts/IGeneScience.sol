//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// 0x6b696520997d3eaee602d348f380ca1a0f1252d5

interface IGeneScience {
    function mixGenes(
        uint256 _genes1,
        uint256 _genes2,
        uint256 _targetBlock
    ) external returns (uint256);

    function encode(uint8[] calldata _traits)
        external
        pure
        returns (uint256 _genes);

    function decode(uint256 _genes) external pure returns (uint8[] calldata);

    function expressingTraits(uint256 _genes)
        external
        pure
        returns (uint8[12] calldata);

    function isGeneScience() external view returns (bool);
}
