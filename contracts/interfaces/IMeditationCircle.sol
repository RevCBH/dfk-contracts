// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Meditation {
    uint256 id;
    address player;
    uint256 heroId;
    uint8 primaryStat;
    uint8 secondaryStat;
    uint8 tertiaryStat;
    address attunementCrystal;
    uint256 startBlock;
    uint8 status;
}

interface IMeditationCircle {
    //solhint-disable-next-line func-name-mixedcase
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    //solhint-disable-next-line func-name-mixedcase
    function MODERATOR_ROLE() external view returns (bytes32);

    function _getRequiredRunes(uint16 _level)
        external
        pure
        returns (uint16[10] memory);

    function activeAttunementCrystals(address) external view returns (bool);

    function addAttunementCrystal(address _address) external;

    function completeMeditation(uint256 _heroId) external;

    function extractNumber(
        uint256 randomNumber,
        uint256 digits,
        uint256 offset
    ) external pure returns (uint256 result);

    function getActiveMeditations(address _address)
        external
        view
        returns (Meditation[] memory);

    function getHeroMeditation(uint256 _heroId)
        external
        view
        returns (Meditation memory);

    function getMeditation(uint256 _id)
        external
        view
        returns (Meditation memory);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function heroToMeditation(uint256) external view returns (uint256);

    function initialize(
        address _heroCoreAddress,
        address _statScienceAddress,
        address _jewelTokenAddress
    ) external;

    function jewelToken() external view returns (address);

    function pause() external;

    function paused() external view returns (bool);

    function profileActiveMeditations(address, uint256)
        external
        view
        returns (
            uint256 id,
            address player,
            uint256 heroId,
            uint8 primaryStat,
            uint8 secondaryStat,
            uint8 tertiaryStat,
            address attunementCrystal,
            uint256 startBlock,
            uint8 status
        );

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function setFees(
        address[] memory _feeAddresses,
        uint256[] memory _feePercents
    ) external;

    function setRune(uint8 _index, address _address) external;

    function startMeditation(
        uint256 _heroId,
        uint8 _primaryStat,
        uint8 _secondaryStat,
        uint8 _tertiaryStat,
        address _attunementCrystal
    ) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function unpause() external;

    function vrf(uint256 blockNumber) external view returns (bytes32 result);
}
