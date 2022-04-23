// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./IQuestTypes.sol";
import "../IHeroTypes.sol";

interface IQuestCore {
    //solhint-disable-next-line func-name-mixedcase
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    //solhint-disable-next-line func-name-mixedcase
    function MODERATOR_ROLE() external view returns (bytes32);

    function addQuestType(address _questAddress) external;

    function cancelQuest(uint256 _heroId) external;

    function cleanQuests() external;

    function cleanQuestsForPlayer(address _profile) external;

    function completeQuest(uint256 _heroId) external;

    // function extractNumber(
    //     uint256 randomNumber,
    //     uint256 digits,
    //     uint256 offset
    // ) external pure returns (uint256 result);

    function getActiveQuests(address _address)
        external
        view
        returns (Quest[] calldata);

    function getCurrentStamina(uint256 _heroId) external view returns (uint256);

    function getGeneBonus(
        uint256 _genes,
        uint8 _pos,
        uint8 _val
    ) external returns (uint64);

    function getHero(uint256 _heroId) external view returns (Hero calldata);

    function getHeroQuest(uint256 _heroId)
        external
        view
        returns (Quest calldata);

    function getQuest(uint256 _id) external view returns (Quest calldata);

    function getQuestData(uint256 _questId)
        external
        view
        returns (QuestData calldata);

    function getQuestType(uint256 _id)
        external
        view
        returns (QuestType calldata);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function heroToQuest(uint256) external view returns (uint256);

    function initialize(address _heroCoreAddress, address _statScienceAddress)
        external;

    function logReward(
        Quest calldata _quest,
        uint256 _heroId,
        RewardItem calldata _reward,
        uint256 _quantity
    ) external;

    function logSkillUp(
        Quest calldata _quest,
        uint256 _heroId,
        uint8 _profession,
        uint16 _skillUp
    ) external;

    function logXp(
        Quest calldata _quest,
        uint256 _heroId,
        uint64 _xpEarned
    ) external;

    function pause() external;

    function paused() external view returns (bool);

    function profileActiveQuests(address, uint256)
        external
        view
        returns (
            uint256 id,
            address quest,
            address player,
            uint256 startTime,
            uint256 startBlock,
            uint256 completeAtTime,
            uint8 attempts,
            uint8 status
        );

    function questAddressToType(address) external view returns (uint256);

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function setTimePerStamina(uint256 _timePerStamina) external;

    function startQuest(
        uint256[] calldata _heroIds,
        address _questAddress,
        uint8 _attempts
    ) external;

    function startQuest(
        uint256[] calldata _heroIds,
        address _questAddress,
        uint8 _attempts,
        uint8 _questKind
    ) external;

    function startQuestWithData(
        uint256[] calldata _heroIds,
        address _questAddress,
        uint8 _attempts,
        QuestData calldata _questData
    ) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function timePerStamina() external view returns (uint256);

    function unpause() external;

    function updateHero(Hero calldata _hero) external;

    function updateQuestType(address _questAddress, uint8 _status) external;

    // function vrf(uint256 blockNumber) external view returns (bytes32 result);
}
