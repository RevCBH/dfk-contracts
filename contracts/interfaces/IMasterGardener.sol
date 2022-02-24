// SPDX-License-Identifier: MIT
//solhint-disable func-name-mixedcase
pragma solidity ^0.8.0;

interface IMasterGardener {
    function FINISH_BONUS_AT_BLOCK() external view returns (uint256);

    function HALVING_AT_BLOCK(uint256) external view returns (uint256);

    function PERCENT_FOR_COM() external view returns (uint256);

    function PERCENT_FOR_DEV() external view returns (uint256);

    function PERCENT_FOR_FOUNDERS() external view returns (uint256);

    function PERCENT_FOR_LP() external view returns (uint256);

    function PERCENT_LOCK_BONUS_REWARD(uint256) external view returns (uint256);

    function REWARD_MULTIPLIER(uint256) external view returns (uint256);

    function REWARD_PER_BLOCK() external view returns (uint256);

    function START_BLOCK() external view returns (uint256);

    function add(
        uint256 _allocPoint,
        address _lpToken,
        bool _withUpdate
    ) external;

    function addAuthorized(address _toAdd) external;

    function authorized(address) external view returns (bool);

    function blockDeltaEndStage(uint256) external view returns (uint256);

    function blockDeltaStartStage(uint256) external view returns (uint256);

    function bonusFinishUpdate(uint256 _newFinish) external;

    function claimReward(uint256 _pid) external;

    function claimRewards(uint256[] calldata _pids) external;

    function comUpdate(address _newCom) external;

    function comfundaddr() external view returns (address);

    function deposit(
        uint256 _pid,
        uint256 _amount,
        address _ref
    ) external;

    function dev(address _devaddr) external;

    function devDepFee() external view returns (uint256);

    function devFeeStage(uint256) external view returns (uint256);

    function devaddr() external view returns (address);

    function emergencyWithdraw(uint256 _pid) external;

    function founderUpdate(address _newFounder) external;

    function founderaddr() external view returns (address);

    function getGlobalAmount(address _user) external view returns (uint256);

    function getGlobalRefAmount(address _user) external view returns (uint256);

    function getLockPercentage(uint256 _from, uint256 _to)
        external
        view
        returns (uint256);

    function getMultiplier(uint256 _from, uint256 _to)
        external
        view
        returns (uint256);

    function getNewRewardPerBlock(uint256 pid1) external view returns (uint256);

    function getPoolReward(
        uint256 _from,
        uint256 _to,
        uint256 _allocPoint
    )
        external
        view
        returns (
            uint256 forDev,
            uint256 forFarmer,
            uint256 forLP,
            uint256 forCom,
            uint256 forFounders
        );

    function getRefValueOf(address _user, address _user2)
        external
        view
        returns (uint256);

    function getTotalRefs(address _user) external view returns (uint256);

    function govToken() external view returns (address);

    function halvingUpdate(uint256[] calldata _newHalving) external;

    function liquidityaddr() external view returns (address);

    function lockUpdate(uint256[] calldata _newlock) external;

    function lockcomUpdate(uint256 _newcomlock) external;

    function lockdevUpdate(uint256 _newdevlock) external;

    function lockfounderUpdate(uint256 _newfounderlock) external;

    function locklpUpdate(uint256 _newlplock) external;

    function lpUpdate(address _newLP) external;

    function massUpdatePools() external;

    function owner() external view returns (address);

    function pendingReward(uint256 _pid, address _user)
        external
        view
        returns (uint256);

    function poolExistence(address) external view returns (bool);

    function poolId1(address) external view returns (uint256);

    function poolInfo(uint256)
        external
        view
        returns (
            address lpToken,
            uint256 allocPoint,
            uint256 lastRewardBlock,
            uint256 accGovTokenPerShare
        );

    function poolLength() external view returns (uint256);

    function reclaimTokenOwnership(address _newOwner) external;

    function removeAuthorized(address _toRemove) external;

    function renounceOwnership() external;

    function reviseDeposit(
        uint256 _pid,
        address _user,
        uint256 _block
    ) external;

    function reviseWithdraw(
        uint256 _pid,
        address _user,
        uint256 _block
    ) external;

    function rewardMulUpdate(uint256[] calldata _newMulReward) external;

    function rewardUpdate(uint256 _newReward) external;

    function set(
        uint256 _pid,
        uint256 _allocPoint,
        bool _withUpdate
    ) external;

    function setDevDepFee(uint256 _devDepFees) external;

    function setDevFeeStage(uint256[] calldata _devFees) external;

    function setStageEnds(uint256[] calldata _blockEnds) external;

    function setStageStarts(uint256[] calldata _blockStarts) external;

    function setUserDepFee(uint256 _usrDepFees) external;

    function setUserFeeStage(uint256[] calldata _userFees) external;

    function starblockUpdate(uint256 _newstarblock) external;

    function totalAllocPoint() external view returns (uint256);

    function transferOwnership(address newOwner) external;

    function updatePool(uint256 _pid) external;

    function usdOracle() external view returns (address);

    function userDelta(uint256 _pid) external view returns (uint256);

    function userDepFee() external view returns (uint256);

    function userFeeStage(uint256) external view returns (uint256);

    function userGlobalInfo(address)
        external
        view
        returns (
            uint256 globalAmount,
            uint256 totalReferals,
            uint256 globalRefAmount
        );

    function userInfo(uint256, address)
        external
        view
        returns (
            uint256 amount,
            uint256 rewardDebt,
            uint256 rewardDebtAtBlock,
            uint256 lastWithdrawBlock,
            uint256 firstDepositBlock,
            uint256 blockdelta,
            uint256 lastDepositBlock
        );

    function withdraw(
        uint256 _pid,
        uint256 _amount,
        address _ref
    ) external;
}
