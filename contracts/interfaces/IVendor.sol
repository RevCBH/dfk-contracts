// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* selling bloaters (205)
096c5e1a
00000000000000000000000078aed65a2cc40c7d8b0df1554da60b38ad351432
00000000000000000000000000000000000000000000000000000000000000cd
*/

interface IVendor {
    function sellItem(address _itemContract, uint256 _quantity) external;
}
