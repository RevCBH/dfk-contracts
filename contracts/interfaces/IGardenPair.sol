// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Metadata} from "openzeppelin/interfaces/IERC20Metadata.sol";

interface IGardenPair is IERC20Metadata {
    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);
}
