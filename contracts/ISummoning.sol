//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// import "hardhat/console.sol"

import "./IHeroTypes.sol";
import "./ICrystalTypes.sol";

/* contract address: 0x65dea93f7b886c33a78c10343267dd39727778c2 */
interface ISummoning {
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    function MODERATOR_ROLE() external view returns (bytes32);

    function auctionHeroCore() external view returns (address);

    function baseCooldown() external view returns (uint256);

    function baseSummonFee() external view returns (uint256);

    function bid(uint256 _tokenId, uint256 _bidAmount) external;

    function calculateSummoningCost(Hero memory _hero)
        external
        view
        returns (uint256);

    function cancelAuction(uint256 _tokenId) external;

    function cancelAuctionWhenPaused(uint256 _tokenId) external;

    function cooldownPerGen() external view returns (uint256);

    function createAuction(
        uint256 _tokenId,
        uint128 _startingPrice,
        uint128 _endingPrice,
        uint64 _duration,
        address _winner
    ) external;

    function crystals(uint256)
        external
        view
        returns (
            address owner,
            uint256 summonerId,
            uint256 assistantId,
            uint16 generation,
            uint256 createdBlock,
            uint256 heroId,
            uint8 summonerTears,
            uint8 assistantTears,
            address bonusItem,
            uint32 maxSummons,
            uint32 firstName,
            uint32 lastName,
            uint8 shinyStyle
        );

    function determineRarity(uint256 _rarityRoll, uint256 _rarityMod)
        external
        pure
        returns (uint8);

    function enabled() external view returns (bool);

    function extractNumber(
        uint256 randomNumber,
        uint256 digits,
        uint256 offset
    ) external pure returns (uint256 result);

    function getAuction(uint256 _tokenId)
        external
        view
        returns (
            uint256 auctionId,
            address seller,
            uint256 startingPrice,
            uint256 endingPrice,
            uint256 duration,
            uint256 startedAt
        );

    function getCrystal(uint256 _crystalId)
        external
        view
        returns (HeroCrystal calldata);

    function getCurrentPrice(uint256 _tokenId) external view returns (uint256);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function getUserAuctions(address _address)
        external
        view
        returns (uint256[] calldata);

    function getUserCrystals(address _address)
        external
        view
        returns (uint256[] calldata);

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function increasePerGen() external view returns (uint256);

    function increasePerSummon() external view returns (uint256);

    function isOnAuction(uint256 _tokenId) external returns (bool);

    function jewelToken() external view returns (address);

    function newSummonCooldown() external view returns (uint256);

    function open(uint256 _crystalId) external returns (uint256);

    function owner() external view returns (address);

    function ownerCut() external view returns (uint256);

    function paused() external view returns (bool);

    function rechargeCrystal(uint256 _crystalId) external;

    function renounceOwnership() external;

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function setFees(
        address[] calldata _feeAddresses,
        uint256[] calldata _feePercents
    ) external;

    function setGeneScienceAddress(address _geneScienceAddress) external;

    function setStatScienceAddress(address _statScienceAddress) external;

    function setSummonCooldowns(
        uint256 _newSummonCooldown,
        uint256 _baseCooldown,
        uint256 _cooldownPerGen
    ) external;

    function setSummonFees(
        uint256 _baseSummonFee,
        uint256 _increasePerSummon,
        uint256 _increasePerGen
    ) external;

    function statScience() external view returns (address);

    function summonCrystal(
        uint256 _summonerId,
        uint256 _assistantId,
        uint16 _summonerTears,
        uint16 _assistantTears,
        address _bonusItem
    ) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function toggleEnabled() external;

    function transferOwnership(address newOwner) external;

    function userAuctions(address, uint256) external view returns (uint256);

    function userCrystals(address, uint256) external view returns (uint256);

    function vrf(uint256 blockNumber) external view returns (bytes32 result);
}
