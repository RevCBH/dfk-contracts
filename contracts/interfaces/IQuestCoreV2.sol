// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../quest/IQuestTypes.sol";
import "../IHeroTypes.sol";

interface IQuestCoreV2 {
    //solhint-disable-next-line func-name-mixedcase
    function DEFAULT_ADMIN_ROLE() external view returns (bytes32);

    //solhint-disable-next-line func-name-mixedcase
    function MODERATOR_ROLE() external view returns (bytes32);

    function activateQuest(address _questAddress) external;

    function activeAccountQuests(
        address,
        address,
        uint256
    )
        external
        view
        returns (
            uint256 id,
            address questAddress,
            uint8 level,
            address player,
            uint256 startBlock,
            uint256 startAtTime,
            uint256 completeAtTime,
            uint8 attempts,
            uint8 status
        );

    function cancelQuest(uint256 _heroId) external;

    function completeQuest(uint256 _heroId) external;

    function deactivateQuest(address _questAddress, uint256 _questIndex)
        external;

    function getAccountActiveQuests(address _account)
        external
        view
        returns (QuestV2[] memory);

    function getAccountsWithRole(bytes32 _role)
        external
        view
        returns (address[] memory);

    function getCurrentStamina(uint256 _heroId) external view returns (uint256);

    function getHeroQuest(uint256 heroId)
        external
        view
        returns (QuestV2 memory);

    function getQuestContracts() external view returns (address[] memory);

    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    function getRoleMember(bytes32 role, uint256 index)
        external
        view
        returns (address);

    function getRoleMemberCount(bytes32 role) external view returns (uint256);

    function grantRole(bytes32 role, address account) external;

    function hasRole(bytes32 role, address account)
        external
        view
        returns (bool);

    function heroToQuest(uint256) external view returns (uint256);

    function initialize(address _heroCoreAddress) external;

    function isQuest(address) external view returns (bool);

    function logSkillUp(
        QuestV2 calldata _quest,
        uint256 _heroId,
        uint8 _profession,
        uint16 _skillUp
    ) external;

    function logXp(
        QuestV2 calldata _quest,
        uint256 _heroId,
        uint64 _xpEarned
    ) external;

    function multiCancelQuest(uint256[] calldata _heroIds) external;

    function multiStartQuest(
        address[] calldata _questAddress,
        uint256[][] calldata _heroIds,
        uint8[] calldata _attempts,
        uint8[] calldata _level
    ) external;

    function pause() external;

    function paused() external view returns (bool);

    function questCounter() external view returns (uint256);

    function questRewarder() external view returns (address);

    function quests(uint256)
        external
        view
        returns (
            uint256 id,
            address questAddress,
            uint8 level,
            address player,
            uint256 startBlock,
            uint256 startAtTime,
            uint256 completeAtTime,
            uint8 attempts,
            uint8 status
        );

    function renounceRole(bytes32 role, address account) external;

    function revokeRole(bytes32 role, address account) external;

    function setQuestRewarder(address _questRewarder) external;

    function setTimePerStamina(uint256 _timePerStamina) external;

    function startQuest(
        uint256[] calldata _heroIds,
        address _questAddress,
        uint8 _attempts,
        uint8 _level
    ) external;

    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    function timePerStamina() external view returns (uint256);

    function unpause() external;

    function startQuestWithData(
        uint256[] calldata _heroIds,
        address _questAddress,
        uint8 _attempts,
        QuestData calldata _questData
    ) external;
}
