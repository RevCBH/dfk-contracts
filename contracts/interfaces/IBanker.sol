//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

interface IBanker {
    function bank() external view returns (address);

    function factory() external view returns (address);

    function owner() external view returns (address);

    function renounceOwnership() external;

    function transferOwnership(address newOwner) external;

    function bridgeFor(address token) external view returns (address bridge);

    function setBridge(address token, address bridge) external;

    function convert(address token0, address token1) external;

    function convertMultiple(
        address[] calldata token0,
        address[] calldata token1
    ) external;
}
